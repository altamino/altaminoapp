package com.narvii.chat.signalling;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.narvii.app.NVApplication;

/* JADX INFO: loaded from: classes8.dex */
public class ProcessKillMonitorService extends Service {
    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        return super.onStartCommand(intent, i10, i11);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        ((SignallingService) NVApplication.instance().getService("signalling")).leaveAllThreads(true);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        super.onTaskRemoved(intent);
    }
}
