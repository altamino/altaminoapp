package com.narvii.util.ws;

import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.util.http.DateUtils;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class LogWsService extends WsService {
    private long syncTimeDiff;

    @Override // com.narvii.util.ws.WsService
    protected String getWsHostPrefix() {
        return "dead-ws";
    }

    @Override // com.narvii.util.ws.WsService
    protected void pingServer() {
    }

    public LogWsService(NVContext nVContext) {
        super(nVContext);
    }

    public long getSyncTimeDiff() {
        return this.syncTimeDiff;
    }

    void syncTime(String str) {
        try {
            this.syncTimeDiff = DateUtils.parseDate(str).getTime() - SystemClock.elapsedRealtime();
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.util.ws.WsService
    protected void onWsOpen(Response response) {
        String strHeader = response.header("Date");
        if (strHeader != null) {
            syncTime(strHeader);
        }
    }
}
