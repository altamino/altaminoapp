package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;

/* JADX INFO: loaded from: classes9.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    private static final String TAG = Logger.i("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Logger.e().a(TAG, "Received intent " + intent);
        try {
            WorkManagerImpl.k(context).u(goAsync());
        } catch (IllegalStateException e) {
            Logger.e().d(TAG, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
