package com.narvii.sm;

import a0.a;
import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.util.http.IAntiFraud;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class SmAntiFraudManager implements IAntiFraud {
    private String dci;

    @Override // com.narvii.util.http.IAntiFraud
    public String getDeviceId() {
        return this.dci;
    }

    public SmAntiFraudManager(NVContext nVContext) {
        SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        String str = a.n;
        String string = sharedPreferences.getString(str, null);
        this.dci = string;
        if (string == null) {
            this.dci = UUID.randomUUID().toString();
            sharedPreferences.edit().putString(str, this.dci).apply();
        }
    }
}
