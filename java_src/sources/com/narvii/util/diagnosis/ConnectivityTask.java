package com.narvii.util.diagnosis;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes7.dex */
public class ConnectivityTask extends DiagnosisTask {
    ConnectivityTask(NVContext nVContext) {
        super(nVContext, "Connectivity");
    }

    @Override // java.lang.Runnable
    public void run() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            this.result = Boolean.FALSE;
            this.error = "No connection";
        } else if (activeNetworkInfo.isConnectedOrConnecting()) {
            this.result = Boolean.TRUE;
        } else if (activeNetworkInfo.isAvailable()) {
            this.result = Boolean.FALSE;
        } else {
            this.result = Boolean.FALSE;
            this.error = "Unavailable";
        }
    }
}
