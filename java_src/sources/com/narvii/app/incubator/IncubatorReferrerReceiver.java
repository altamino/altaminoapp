package com.narvii.app.incubator;

import android.content.Context;
import android.content.Intent;
import com.narvii.app.AminoReferrerReceiver;
import com.narvii.app.NVApplication;
import com.narvii.master.MasterActivity;
import com.narvii.util.Log;
import com.narvii.util.googleplay.ReferrerReceiver;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class IncubatorReferrerReceiver extends AminoReferrerReceiver {
    public static void safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.AminoReferrerReceiver, com.narvii.util.googleplay.ReferrerReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        String stringExtra = intent.getStringExtra("referrer");
        if (stringExtra == null) {
            return;
        }
        String strQuery = ReferrerReceiver.query(stringExtra, "mastertab");
        if (this.deferredStarted.peek() != Boolean.TRUE && "create".equals(strQuery)) {
            try {
                safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication.instance(), MasterActivity.backToMaster(NVApplication.instance(), new Intent()));
            } catch (Exception unused) {
                Log.d("unable to open MasterActivity");
            }
        }
    }
}
