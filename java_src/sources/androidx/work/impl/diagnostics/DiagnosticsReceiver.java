package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.impl.workers.DiagnosticsWorker;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class DiagnosticsReceiver extends BroadcastReceiver {
    private static final String TAG = Logger.i("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, @Nullable Intent intent) {
        if (intent == null) {
            return;
        }
        Logger.e().a(TAG, "Requesting diagnostics");
        try {
            WorkManager.d(context).b(OneTimeWorkRequest.e(DiagnosticsWorker.class));
        } catch (IllegalStateException e) {
            Logger.e().d(TAG, "WorkManager is not initialized", e);
        }
    }
}
