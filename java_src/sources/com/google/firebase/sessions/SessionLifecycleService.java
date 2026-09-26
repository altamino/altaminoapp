package com.google.firebase.sessions;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SessionLifecycleService extends Service {
    public static final int BACKGROUNDED = 2;
    private static final int CLIENT_BOUND = 4;

    @NotNull
    public static final String CLIENT_CALLBACK_MESSENGER = "ClientCallbackMessenger";

    @NotNull
    public static final a Companion = new a(null);
    public static final int FOREGROUNDED = 1;
    public static final int SESSION_UPDATED = 3;

    @NotNull
    public static final String SESSION_UPDATE_EXTRA = "SessionUpdateExtra";

    @NotNull
    public static final String TAG = "SessionLifecycleService";

    @NotNull
    private final HandlerThread handlerThread = new HandlerThread("FirebaseSessions_HandlerThread");

    @Nullable
    private b messageHandler;

    @Nullable
    private Messenger messenger;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends Handler {

        @NotNull
        private final ArrayList<Messenger> boundClients;
        private boolean hasForegrounded;
        private long lastMsgTimeMs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Looper looper) {
            super(looper);
            kotlin.jvm.internal.t.j(looper, "looper");
            this.boundClients = new ArrayList<>();
        }

        private final void a() {
            StringBuilder sb = new StringBuilder();
            sb.append("Broadcasting new session: ");
            d0.b bVar = d0.Companion;
            sb.append(bVar.a().c());
            Log.d(SessionLifecycleService.TAG, sb.toString());
            b0.Companion.a().a(bVar.a().c());
            for (Messenger it : new ArrayList(this.boundClients)) {
                kotlin.jvm.internal.t.i(it, "it");
                f(it);
            }
        }

        private final void b(Message message) {
            Log.d(SessionLifecycleService.TAG, "Activity backgrounding at " + message.getWhen());
            this.lastMsgTimeMs = message.getWhen();
        }

        private final void c(Message message) {
            this.boundClients.add(message.replyTo);
            Messenger messenger = message.replyTo;
            kotlin.jvm.internal.t.i(messenger, "msg.replyTo");
            f(messenger);
            Log.d(SessionLifecycleService.TAG, "Client " + message.replyTo + " bound at " + message.getWhen() + ". Clients: " + this.boundClients.size());
        }

        private final void d(Message message) {
            Log.d(SessionLifecycleService.TAG, "Activity foregrounding at " + message.getWhen() + '.');
            if (!this.hasForegrounded) {
                Log.d(SessionLifecycleService.TAG, "Cold start detected.");
                this.hasForegrounded = true;
                g();
            } else if (e(message.getWhen())) {
                Log.d(SessionLifecycleService.TAG, "Session too long in background. Creating new session.");
                g();
            }
            this.lastMsgTimeMs = message.getWhen();
        }

        private final boolean e(long j6) {
            return j6 - this.lastMsgTimeMs > k8.b.r(com.google.firebase.sessions.settings.f.Companion.c().c());
        }

        private final void f(Messenger messenger) {
            if (this.hasForegrounded) {
                h(messenger, d0.Companion.a().c().b());
                return;
            }
            String strB = w.Companion.a().b();
            Log.d(SessionLifecycleService.TAG, "App has not yet foregrounded. Using previously stored session: " + strB);
            if (strB != null) {
                h(messenger, strB);
            }
        }

        private final void g() {
            d0.b bVar = d0.Companion;
            bVar.a().a();
            Log.d(SessionLifecycleService.TAG, "Generated new session " + bVar.a().c().b());
            a();
            w.Companion.a().a(bVar.a().c().b());
        }

        private final void h(Messenger messenger, String str) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(SessionLifecycleService.SESSION_UPDATE_EXTRA, str);
                Message messageObtain = Message.obtain(null, 3, 0, 0);
                messageObtain.setData(bundle);
                messenger.send(messageObtain);
            } catch (DeadObjectException unused) {
                Log.d(SessionLifecycleService.TAG, "Removing dead client from list: " + messenger);
                this.boundClients.remove(messenger);
            } catch (Exception e) {
                Log.w(SessionLifecycleService.TAG, "Unable to push new session to " + messenger + '.', e);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(@NotNull Message msg) {
            kotlin.jvm.internal.t.j(msg, "msg");
            if (this.lastMsgTimeMs > msg.getWhen()) {
                Log.d(SessionLifecycleService.TAG, "Ignoring old message from " + msg.getWhen() + " which is older than " + this.lastMsgTimeMs + '.');
                return;
            }
            int i10 = msg.what;
            if (i10 == 1) {
                d(msg);
                return;
            }
            if (i10 == 2) {
                b(msg);
                return;
            }
            if (i10 == 4) {
                c(msg);
                return;
            }
            Log.w(SessionLifecycleService.TAG, "Received unexpected event from the SessionLifecycleClient: " + msg);
            super.handleMessage(msg);
        }
    }

    private final Messenger a(Intent intent) {
        return Build.VERSION.SDK_INT >= 33 ? (Messenger) intent.getParcelableExtra(CLIENT_CALLBACK_MESSENGER, Messenger.class) : (Messenger) intent.getParcelableExtra(CLIENT_CALLBACK_MESSENGER);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        if (intent == null) {
            Log.d(TAG, "Service bound with null intent. Ignoring.");
            return null;
        }
        Log.d(TAG, "Service bound to new client on process " + intent.getAction());
        Messenger messengerA = a(intent);
        if (messengerA != null) {
            Message messageObtain = Message.obtain(null, 4, 0, 0);
            messageObtain.replyTo = messengerA;
            b bVar = this.messageHandler;
            if (bVar != null) {
                bVar.sendMessage(messageObtain);
            }
        }
        Messenger messenger = this.messenger;
        if (messenger != null) {
            return messenger.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.handlerThread.start();
        Looper looper = this.handlerThread.getLooper();
        kotlin.jvm.internal.t.i(looper, "handlerThread.looper");
        this.messageHandler = new b(looper);
        this.messenger = new Messenger(this.messageHandler);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.handlerThread.quit();
    }
}
