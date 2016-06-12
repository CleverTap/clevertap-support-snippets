let chargeDetails = [
    "Amount": 300,
    "Payment mode": "Credit Card",
    "Charged ID": 24052013
]

let item1 = [
    "Category": "books",
    "Book name": "The Millionaire next door",
    "Quantity": 1
]

let item2 = [
    "Category": "books",
    "Book name": "Achieving inner zen",
    "Quantity": 1
]

let item3 = [
    "Category": "books",
    "Book name": "Chuck it, let's do it",
    "Quantity": 5
]

CleverTap.sharedInstance()?.recordChargedEventWithDetails(chargeDetails, andItems: [item1, item2, item3])