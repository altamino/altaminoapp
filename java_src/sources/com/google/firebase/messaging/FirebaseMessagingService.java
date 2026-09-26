package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseMessagingService extends i {
    public static final String ACTION_DIRECT_BOOT_REMOTE_INTENT = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT";
    static final String ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN";
    static final String ACTION_REMOTE_INTENT = "com.google.android.c2dm.intent.RECEIVE";
    static final String EXTRA_TOKEN = "token";
    private static final int RECENTLY_RECEIVED_MESSAGE_IDS_MAX_SIZE = 10;
    private static final Queue<String> recentlyReceivedMessageIds = new ArrayDeque(10);

    @WorkerThread
    public void onDeletedMessages() {
    }

    @WorkerThread
    public void onMessageReceived(@NonNull RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void onMessageSent(@NonNull String str) {
    }

    @WorkerThread
    public void onNewToken(@NonNull String str) {
    }

    @WorkerThread
    public void onSendError(@NonNull String str, @NonNull Exception exc) {
    }

    private String getMessageId(Intent intent) {
        String stringExtra = intent.getStringExtra(e.a.MSGID);
        return stringExtra == null ? intent.getStringExtra(e.a.MSGID_SERVER) : stringExtra;
    }

    private void handleMessageIntent(Intent intent) {
        if (alreadyReceivedMessage(intent.getStringExtra(e.a.MSGID))) {
            return;
        }
        passMessageIntentToSdk(intent);
    }

    private void passMessageIntentToSdk(Intent intent) {
        String stringExtra = intent.getStringExtra(e.a.MESSAGE_TYPE);
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        switch (stringExtra) {
            case "deleted_messages":
                onDeletedMessages();
                break;
            case "gcm":
                f0.v(intent);
                dispatchMessage(intent);
                break;
            case "send_error":
                onSendError(getMessageId(intent), new r0(intent.getStringExtra(e.IPC_BUNDLE_KEY_SEND_ERROR)));
                break;
            case "send_event":
                onMessageSent(intent.getStringExtra(e.a.MSGID));
                break;
            default:
                Log.w(e.TAG, "Received message with unknown type: " + stringExtra);
                break;
        }
    }

    @VisibleForTesting
    static void resetForTesting() {
        recentlyReceivedMessageIds.clear();
    }

    private boolean alreadyReceivedMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue<String> queue = recentlyReceivedMessageIds;
        if (queue.contains(str)) {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "Received duplicate message: " + str);
                return true;
            }
            return true;
        }
        if (queue.size() >= 10) {
            queue.remove();
        }
        queue.add(str);
        return false;
    }

    private void dispatchMessage(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (h0.t(extras)) {
            h0 h0Var = new h0(extras);
            ExecutorService executorServiceE = o.e();
            try {
                if (new f(this, h0Var, executorServiceE).a()) {
                    executorServiceE.shutdown();
                    return;
                } else {
                    executorServiceE.shutdown();
                    if (f0.A(intent)) {
                        f0.t(intent);
                    }
                }
            } catch (Throwable th) {
                executorServiceE.shutdown();
                throw th;
            }
        }
        onMessageReceived(new RemoteMessage(extras));
    }

    @Override // com.google.firebase.messaging.i
    protected Intent getStartCommandIntent(Intent intent) {
        return s0.b().c();
    }

    @Override // com.google.firebase.messaging.i
    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (!ACTION_REMOTE_INTENT.equals(action) && !ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(action)) {
            if (ACTION_NEW_TOKEN.equals(action)) {
                onNewToken(intent.getStringExtra("token"));
                return;
            }
            Log.d(e.TAG, "Unknown intent action: " + intent.getAction());
            return;
        }
        handleMessageIntent(intent);
    }
}
