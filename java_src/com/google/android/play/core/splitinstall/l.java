package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.ae;
import com.google.android.play.core.listener.a;

/* loaded from: classes.dex */
public final class l extends a<SplitInstallSessionState> {
    private static l b;
    private final Handler c;
    private final e d;

    private l(Context context) {
        this(context, c.a());
    }

    private l(Context context, e eVar) {
        super(new ae("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.c = new Handler(Looper.getMainLooper());
        this.d = eVar;
    }

    public static synchronized l a(Context context) {
        if (b == null) {
            b = new l(context);
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(SplitInstallSessionState splitInstallSessionState, int i, int i2) {
        this.c.post(new k(this, splitInstallSessionState, i, i2));
    }

    @Override // com.google.android.play.core.listener.a
    protected final void a(Context context, Intent intent) {
        e eVar;
        SplitInstallSessionState splitInstallSessionStateA = SplitInstallSessionState.a(intent.getBundleExtra("session_state"));
        this.a.b("ListenerRegistryBroadcastReceiver.onReceive: %s", splitInstallSessionStateA);
        if (splitInstallSessionStateA.status() != 3 || (eVar = this.d) == null) {
            a((l) splitInstallSessionStateA);
        } else {
            eVar.a(splitInstallSessionStateA.a, new f(this, splitInstallSessionStateA, intent, context));
        }
    }
}
