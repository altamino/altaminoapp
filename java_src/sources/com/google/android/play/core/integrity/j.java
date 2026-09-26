package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes7.dex */
final class j extends com.google.android.play.integrity.internal.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f1405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f1406b = new com.google.android.play.integrity.internal.x("OnRequestIntegrityTokenCallback");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TaskCompletionSource f1407c;

    j(k kVar, TaskCompletionSource taskCompletionSource) {
        this.f1405a = kVar;
        this.f1407c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.w
    public final void v(Bundle bundle) {
        this.f1405a.f1408a.v(this.f1407c);
        this.f1406b.c("onRequestIntegrityToken", new Object[0]);
        int i10 = bundle.getInt(com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR);
        if (i10 != 0) {
            this.f1407c.trySetException(new c(i10, null));
            return;
        }
        String string = bundle.getString(com.mixpanel.android.mpmetrics.e.KEY_TOKEN);
        if (string == null) {
            this.f1407c.trySetException(new c(-100, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f1407c;
        f fVar = new f();
        fVar.c(string);
        fVar.b(this.f1406b);
        fVar.a(pendingIntent);
        taskCompletionSource.trySetResult(fVar.d());
    }
}
