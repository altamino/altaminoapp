package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes7.dex */
class f1 extends Binder {
    private final a intentHandler;

    interface a {
        Task<Void> a(Intent intent);
    }

    f1(a aVar) {
        this.intentHandler = aVar;
    }

    void c(final i1.a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "service received new intent via bind strategy");
            }
            this.intentHandler.a(aVar.intent).addOnCompleteListener(new androidx.media3.exoplayer.dash.offline.a(), new OnCompleteListener() { // from class: com.google.firebase.messaging.e1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    aVar.d();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
