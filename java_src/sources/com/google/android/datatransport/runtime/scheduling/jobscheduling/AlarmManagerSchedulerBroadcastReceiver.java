package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i10 = intent.getExtras().getInt("attemptNumber");
        com.google.android.datatransport.runtime.u.f(context);
        com.google.android.datatransport.runtime.p.a aVarD = com.google.android.datatransport.runtime.p.a().b(queryParameter).d(n2.a.b(iIntValue));
        if (queryParameter2 != null) {
            aVarD.c(Base64.decode(queryParameter2, 0));
        }
        com.google.android.datatransport.runtime.u.c().e().v(aVarD.a(), i10, new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.a
            @Override // java.lang.Runnable
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.b();
            }
        });
    }
}
