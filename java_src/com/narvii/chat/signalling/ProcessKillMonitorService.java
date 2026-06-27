package com.narvii.chat.signalling;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.narvii.app.NVApplication;

/* loaded from: classes2.dex */
public class ProcessKillMonitorService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) throws InterruptedException {
        ((SignallingService) NVApplication.instance().getService("signalling")).leaveAllThreads(true);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        super.onTaskRemoved(intent);
    }
}
