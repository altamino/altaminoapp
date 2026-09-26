package com.google.firebase.sessions;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class i0 implements h0 {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final String TAG = "LifecycleServiceBinder";

    @NotNull
    private final com.google.firebase.f firebaseApp;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public i0(@NotNull com.google.firebase.f firebaseApp) {
        kotlin.jvm.internal.t.j(firebaseApp, "firebaseApp");
        this.firebaseApp = firebaseApp;
    }

    @Override // com.google.firebase.sessions.h0
    public void a(@NotNull Messenger callback, @NotNull ServiceConnection serviceConnection) {
        kotlin.jvm.internal.t.j(callback, "callback");
        kotlin.jvm.internal.t.j(serviceConnection, "serviceConnection");
        Context applicationContext = this.firebaseApp.k().getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        Log.d(TAG, "Binding service to application.");
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra(SessionLifecycleService.CLIENT_CALLBACK_MESSENGER, callback);
        applicationContext.bindService(intent, serviceConnection, 65);
    }
}
