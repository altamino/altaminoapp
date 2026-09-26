package com.google.firebase.appcheck.playintegrity.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import com.google.firebase.l;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
class c {

    @VisibleForTesting
    static final String CHALLENGE_KEY = "challenge";

    @VisibleForTesting
    static final String TIME_TO_LIVE_KEY = "ttl";
    private String challenge;
    private String timeToLive;

    @NonNull
    public String b() {
        return this.challenge;
    }

    @NonNull
    public static c a(@NonNull String str) throws JSONException, l {
        JSONObject jSONObject = new JSONObject(str);
        String strEmptyToNull = Strings.emptyToNull(jSONObject.optString(CHALLENGE_KEY));
        String strEmptyToNull2 = Strings.emptyToNull(jSONObject.optString(TIME_TO_LIVE_KEY));
        if (strEmptyToNull == null || strEmptyToNull2 == null) {
            throw new l("Unexpected server response.");
        }
        return new c(strEmptyToNull, strEmptyToNull2);
    }

    private c(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.challenge = str;
        this.timeToLive = str2;
    }
}
