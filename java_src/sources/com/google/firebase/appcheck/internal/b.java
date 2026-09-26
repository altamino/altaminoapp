package com.google.firebase.appcheck.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public final class b extends x3.c {

    @VisibleForTesting
    static final String EXPIRATION_TIME_KEY = "exp";

    @VisibleForTesting
    static final String EXPIRES_IN_MILLIS_KEY = "expiresIn";

    @VisibleForTesting
    static final String ISSUED_AT_KEY = "iat";
    private static final long ONE_SECOND_MILLIS = 1000;

    @VisibleForTesting
    static final String RECEIVED_AT_TIMESTAMP_KEY = "receivedAt";
    private static final String TAG = "com.google.firebase.appcheck.internal.b";

    @VisibleForTesting
    static final String TOKEN_KEY = "token";
    private final long expiresInMillis;
    private final long receivedAtTimestamp;
    private final String token;

    @VisibleForTesting
    b(@NonNull String str, long j6) {
        this(str, j6, new com.google.firebase.appcheck.internal.util.a.C0229a().currentTimeMillis());
    }

    @Override // x3.c
    public long a() {
        return this.receivedAtTimestamp + this.expiresInMillis;
    }

    @Override // x3.c
    @NonNull
    public String b() {
        return this.token;
    }

    long f() {
        return this.expiresInMillis;
    }

    long h() {
        return this.receivedAtTimestamp;
    }

    @VisibleForTesting
    b(@NonNull String str, long j6, long j10) {
        Preconditions.checkNotEmpty(str);
        this.token = str;
        this.expiresInMillis = j6;
        this.receivedAtTimestamp = j10;
    }

    @Nullable
    static b e(@NonNull String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new b(jSONObject.getString("token"), jSONObject.getLong(EXPIRES_IN_MILLIS_KEY), jSONObject.getLong(RECEIVED_AT_TIMESTAMP_KEY));
        } catch (JSONException e) {
            Log.e(TAG, "Could not deserialize token: " + e.getMessage());
            return null;
        }
    }

    @Nullable
    String i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", this.token);
            jSONObject.put(RECEIVED_AT_TIMESTAMP_KEY, this.receivedAtTimestamp);
            jSONObject.put(EXPIRES_IN_MILLIS_KEY, this.expiresInMillis);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.e(TAG, "Could not serialize token: " + e.getMessage());
            return null;
        }
    }

    @NonNull
    public static b c(@NonNull a aVar) {
        long jG;
        Preconditions.checkNotNull(aVar);
        try {
            jG = (long) (Double.parseDouble(aVar.b().replace(CmcdHeadersFactory.STREAMING_FORMAT_SS, "")) * 1000.0d);
        } catch (NumberFormatException unused) {
            Map<String, Object> mapB = com.google.firebase.appcheck.internal.util.c.b(aVar.c());
            jG = 1000 * (g(mapB, EXPIRATION_TIME_KEY) - g(mapB, ISSUED_AT_KEY));
        }
        return new b(aVar.c(), jG);
    }

    @NonNull
    public static b d(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Map<String, Object> mapB = com.google.firebase.appcheck.internal.util.c.b(str);
        long jG = g(mapB, ISSUED_AT_KEY);
        return new b(str, (g(mapB, EXPIRATION_TIME_KEY) - jG) * 1000, jG * 1000);
    }

    private static long g(@NonNull Map<String, Object> map, @NonNull String str) {
        Preconditions.checkNotNull(map);
        Preconditions.checkNotEmpty(str);
        Integer num = (Integer) map.get(str);
        if (num == null) {
            return 0L;
        }
        return num.longValue();
    }
}
