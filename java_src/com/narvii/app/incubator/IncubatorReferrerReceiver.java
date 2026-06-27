package com.narvii.app.incubator;

import android.content.Context;
import android.content.Intent;
import com.narvii.app.AminoReferrerReceiver;
import com.narvii.app.NVApplication;
import com.narvii.master.MasterActivity;
import com.narvii.util.Log;
import com.narvii.util.googleplay.ReferrerReceiver;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IncubatorReferrerReceiver extends AminoReferrerReceiver {
    @Override // com.narvii.app.AminoReferrerReceiver, com.narvii.util.googleplay.ReferrerReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws IOException {
        super.onReceive(context, intent);
        String stringExtra = intent.getStringExtra("referrer");
        if (stringExtra == null) {
            return;
        }
        String strQuery = ReferrerReceiver.query(stringExtra, "mastertab");
        if (this.deferredStarted.peek() == Boolean.TRUE || !"create".equals(strQuery)) {
            return;
        }
        try {
            NVApplication.instance().startActivity(MasterActivity.backToMaster(NVApplication.instance(), new Intent()));
        } catch (Exception unused) {
            Log.d("unable to open MasterActivity");
        }
    }
}
