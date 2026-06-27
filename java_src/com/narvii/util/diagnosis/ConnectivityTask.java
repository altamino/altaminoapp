package com.narvii.util.diagnosis;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class ConnectivityTask extends DiagnosisTask {
    ConnectivityTask(NVContext nVContext) {
        super(nVContext, "Connectivity");
    }

    @Override // java.lang.Runnable
    public void run() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            this.result = false;
            this.error = "No connection";
        } else if (activeNetworkInfo.isConnectedOrConnecting()) {
            this.result = true;
        } else if (!activeNetworkInfo.isAvailable()) {
            this.result = false;
            this.error = "Unavailable";
        } else {
            this.result = false;
        }
    }
}
