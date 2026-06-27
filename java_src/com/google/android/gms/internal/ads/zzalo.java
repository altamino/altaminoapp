package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzalo {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    public static final zzaln<JSONObject> zzddi = new zzalq();
    public static final zzall<InputStream> zzddj = zzalp.zzddk;

    static final /* synthetic */ InputStream zze(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
