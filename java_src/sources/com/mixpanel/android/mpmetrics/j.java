package com.mixpanel.android.mpmetrics;

import java.security.SecureRandom;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
class j {
    private long mEventsCounter;
    private long mPeopleCounter;
    private final SecureRandom mRandom;
    private String mSessionID;
    private long mSessionStartEpoch;

    public JSONObject a() {
        return c(true);
    }

    public JSONObject b() {
        return c(false);
    }

    private JSONObject c(boolean z6) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$mp_event_id", Long.toHexString(this.mRandom.nextLong()));
            jSONObject.put("$mp_session_id", this.mSessionID);
            jSONObject.put("$mp_session_seq_id", z6 ? this.mEventsCounter : this.mPeopleCounter);
            jSONObject.put("$mp_session_start_sec", this.mSessionStartEpoch);
            if (z6) {
                this.mEventsCounter++;
            } else {
                this.mPeopleCounter++;
            }
        } catch (JSONException e) {
            com.mixpanel.android.util.d.d(b.LOGTAG, "Cannot create session metadata JSON object", e);
        }
        return jSONObject;
    }

    protected void d() {
        this.mEventsCounter = 0L;
        this.mPeopleCounter = 0L;
        this.mSessionID = Long.toHexString(new SecureRandom().nextLong());
        this.mSessionStartEpoch = System.currentTimeMillis() / 1000;
    }

    j() {
        d();
        this.mRandom = new SecureRandom();
    }
}
