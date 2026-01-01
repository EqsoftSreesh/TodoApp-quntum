# FCM Backend with FastAPI

This is a simple FastAPI backend to send Firebase Cloud Messaging (FCM) notifications to your Flutter app.

## Prerequisites

1.  Python 3.7+ installed.
2.  A Firebase project set up.

## Setup

1.  **Install Dependencies:**
    Open a terminal in this `backend` directory and run:
    ```bash
    pip install -r requirements.txt
    ```

2.  **Get Firebase Service Account Key:**
    *   Go to the [Firebase Console](https://console.firebase.google.com/).
    *   Select your project (`TodoApp-quntum` or similar).
    *   Click the **Gear icon** (Project settings) > **Service accounts**.
    *   Click **Generate new private key** -> **Generate key**.
    *   A JSON file will download. Rename it to `serviceAccountKey.json`.
    *   Move `serviceAccountKey.json` into this `backend` folder.

3.  **Run the Server:**
    ```bash
    uvicorn main:app --reload --host 0.0.0.0 --port 8000
    ```
    (You might need to use `python -m uvicorn ...` or `python3 -m uvicorn ...` depending on your setup).

## Connecting to the App

1.  Run your Flutter app.
2.  Check the "Debug Console" in VS Code. The app will print the **FCM Token** (look for `FCM Token: ...`).
3.  Copy that token.

## Testing

Use Postman, curl, or any HTTP client to send a POST request:

**URL:** `http://localhost:8000/send-notification`
**Method:** `POST`
**Headers:** `Content-Type: application/json`

**Body:**
```json
{
  "token": "PASTE_YOUR_COPIED_FCM_TOKEN_HERE",
  "title": "Hello from Backend!",
  "body": "This notification was sent via FastAPI",
  "data": {
    "taskId": "123"
  }
}
```

If successful, your phone/emulator should show the notification!
