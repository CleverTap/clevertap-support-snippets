package myjava;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class UploadFileOnPresignedUrl {

    private static boolean uploadCsvFile(File file, String preSignURL) throws Exception {
        long startTime = System.currentTimeMillis();
        System.out.println("Starting with Clevertap file upload for file: " + file.getName() + ", now:" + startTime);
        OutputStream bos = null;
        HttpURLConnection connection = null;
        try {
            URL url = new URL(preSignURL);
            connection = (HttpURLConnection) url.openConnection();

            long fileLength = file.length();
            System.out.println("Length of  the file: " + (fileLength / (1024 * 1024)) + " MB");
            // to enable streaming of a HTTP request body without internal buffering,
            // when the content length is known in advance
            connection.setFixedLengthStreamingMode(fileLength);

            connection.setConnectTimeout(10000);
            connection.setReadTimeout(90000000);
            connection.setDoOutput(true);
            connection.setRequestMethod("PUT");

            bos = connection.getOutputStream();
            FileInputStream inFileReader = new FileInputStream(file);
            int batchSize = 10240; // buffer size to stream, can be decreased/increased according to the need
            byte[] localbuffer = new byte[batchSize];
            long bytesTransferred = 0;
            while (bytesTransferred + batchSize <= fileLength) {
                inFileReader.read(localbuffer);
                bos.write(localbuffer);

                // To have an idea about how much memory the system is using at an instant
                if ((bytesTransferred % (1024 * 1024)) == 0) {
                    System.out.println("Data transferred: " + (bytesTransferred / (1024 * 1024)) + " MB, current system mem: "
                            + (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) / (1024 * 1024) + " MB");
                }
                bytesTransferred += batchSize;
            }

            int remainingBytes = (int) (fileLength - bytesTransferred);
            System.out.println("writing the remaining bytes: " + remainingBytes);
            localbuffer = new byte[remainingBytes]; // the remaining number of bytes can be less than the buffer size, so new byte array needed
            inFileReader.read(localbuffer);
            bos.write(localbuffer);
            bos.flush(); // finally flush

            inFileReader.close();
            int responseCode = connection.getResponseCode();
            System.out.println("ResponseCode for Clevertap file upload for file: " + file.getName() + ", code:" + responseCode);
            if(responseCode == 403){
                System.out.println("Presigned url might be expired, please make sure");
                return false;
            }
            System.out.println("final " + (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()));
            System.out.println("uploaded successfully");
            System.out.println("timetaken = " + ((int) ((System.currentTimeMillis() - startTime) / 1000)) + " sec");
            return true;
        } catch (IOException e) {
            System.out.println("IOException: Please, check internet connection or reduce the batchSize");
        } catch (Exception e) {
            System.out.println("Exception with Clevertap file upload for file: " + file.getName());
        } finally {
            System.out.println("/: " + file.getName() + ", url:" + preSignURL);
            if (bos != null) {
                bos.close();
            }
            if (connection != null) {
                connection.disconnect();
            }
        }

        System.out.println("uploading failed");
        System.out.println("timetaken = " + ((int) ((System.currentTimeMillis() - startTime) / 1000)) + " sec");
        return false;
    }

    public static void main(String[] args) throws Exception {

        String url = "<PresignedUrl>";
        File f = new File("<filepath/to/upload>");
        uploadCsvFile(f, url);
    }
}
