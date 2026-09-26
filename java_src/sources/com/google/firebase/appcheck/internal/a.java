package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class a {

    @VisibleForTesting
    static final String TIME_TO_LIVE_KEY = "ttl";

    @VisibleForTesting
    static final String TOKEN_KEY = "token";
    private String timeToLive;
    private String token;

    @NonNull
    public String b() {
        return this.timeToLive;
    }

    @NonNull
    public String c() {
        return this.token;
    }

    @NonNull
    public static a a(@NonNull String str) throws JSONException, com.google.firebase.l {
        JSONObject jSONObject = new JSONObject(str);
        String strEmptyToNull = Strings.emptyToNull(jSONObject.optString("token"));
        String strEmptyToNull2 = Strings.emptyToNull(jSONObject.optString(TIME_TO_LIVE_KEY));
        if (strEmptyToNull == null || strEmptyToNull2 == null) {
            throw new com.google.firebase.l("Unexpected server response.");
        }
        return new a(strEmptyToNull, strEmptyToNull2);
    }

    private a(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.token = str;
        this.timeToLive = str2;
    }
}
