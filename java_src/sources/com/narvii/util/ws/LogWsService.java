package com.narvii.util.ws;

import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.util.http.DateUtils;
import okhttp3.Response;

/* JADX INFO: loaded from: classes9.dex */
public class LogWsService extends WsService {
    private long syncTimeDiff;

    public long getSyncTimeDiff() {
        return this.syncTimeDiff;
    }

    @Override // com.narvii.util.ws.WsService
    protected void pingServer() {
    }

    @Override // com.narvii.util.ws.WsService
    protected void onWsOpen(Response response) {
        String strHeader = response.header("Date");
        if (strHeader != null) {
            syncTime(strHeader);
        }
    }

    public LogWsService(NVContext nVContext) {
        super(nVContext);
    }

    void syncTime(String str) {
        try {
            this.syncTimeDiff = DateUtils.parseDate(str).getTime() - SystemClock.elapsedRealtime();
        } catch (Exception unused) {
        }
    }
}
