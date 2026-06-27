package com.google.android.gms.internal.ads;

import android.support.v4.app.NotificationCompat;
import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdgr;
import com.google.android.gms.internal.ads.zzdha;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdbr implements zzdbv {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final InputStream zzapv;
    private boolean zzgpc = false;
    private final JSONObject zzgpb = null;

    private zzdbr(InputStream inputStream) {
        this.zzapv = inputStream;
    }

    public static zzdbv zzf(InputStream inputStream) throws IOException {
        return new zzdbr(inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final zzdha zzanq() throws JSONException, IOException {
        zzdgu zzdguVar;
        zzdhm zzdhmVar;
        zzdgr.zzb zzbVar;
        try {
            JSONObject jSONObject = new JSONObject(new String(zzdch.zzg(this.zzapv), UTF_8));
            if (!jSONObject.has("key") || jSONObject.getJSONArray("key").length() == 0) {
                throw new JSONException("invalid keyset");
            }
            zzdha.zza zzaVarZzask = zzdha.zzask();
            if (jSONObject.has("primaryKeyId")) {
                zzaVarZzask.zzes(jSONObject.getInt("primaryKeyId"));
            }
            JSONArray jSONArray = jSONObject.getJSONArray("key");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (!jSONObject2.has("keyData") || !jSONObject2.has(NotificationCompat.CATEGORY_STATUS) || !jSONObject2.has("keyId") || !jSONObject2.has("outputPrefixType")) {
                    throw new JSONException("invalid key");
                }
                zzdha.zzb.zza zzaVarZzasq = zzdha.zzb.zzasq();
                String string = jSONObject2.getString(NotificationCompat.CATEGORY_STATUS);
                if (string.equals("ENABLED")) {
                    zzdguVar = zzdgu.ENABLED;
                } else if (string.equals("DISABLED")) {
                    zzdguVar = zzdgu.DISABLED;
                } else {
                    String strValueOf = String.valueOf(string);
                    throw new JSONException(strValueOf.length() != 0 ? "unknown status: ".concat(strValueOf) : new String("unknown status: "));
                }
                zzdha.zzb.zza zzaVarZzeu = zzaVarZzasq.zzb(zzdguVar).zzeu(jSONObject2.getInt("keyId"));
                String string2 = jSONObject2.getString("outputPrefixType");
                if (string2.equals("TINK")) {
                    zzdhmVar = zzdhm.TINK;
                } else if (string2.equals("RAW")) {
                    zzdhmVar = zzdhm.RAW;
                } else if (string2.equals("LEGACY")) {
                    zzdhmVar = zzdhm.LEGACY;
                } else if (string2.equals("CRUNCHY")) {
                    zzdhmVar = zzdhm.CRUNCHY;
                } else {
                    String strValueOf2 = String.valueOf(string2);
                    throw new JSONException(strValueOf2.length() != 0 ? "unknown output prefix type: ".concat(strValueOf2) : new String("unknown output prefix type: "));
                }
                zzdha.zzb.zza zzaVarZzb = zzaVarZzeu.zzb(zzdhmVar);
                JSONObject jSONObject3 = jSONObject2.getJSONObject("keyData");
                if (!jSONObject3.has("typeUrl") || !jSONObject3.has("value") || !jSONObject3.has("keyMaterialType")) {
                    throw new JSONException("invalid keyData");
                }
                zzdgr.zza zzaVarZzbo = zzdgr.zzarw().zzgk(jSONObject3.getString("typeUrl")).zzbo(zzdmr.zzz(zzdjp.decode(jSONObject3.getString("value"))));
                String string3 = jSONObject3.getString("keyMaterialType");
                if (string3.equals("SYMMETRIC")) {
                    zzbVar = zzdgr.zzb.SYMMETRIC;
                } else if (string3.equals("ASYMMETRIC_PRIVATE")) {
                    zzbVar = zzdgr.zzb.ASYMMETRIC_PRIVATE;
                } else if (string3.equals("ASYMMETRIC_PUBLIC")) {
                    zzbVar = zzdgr.zzb.ASYMMETRIC_PUBLIC;
                } else if (string3.equals("REMOTE")) {
                    zzbVar = zzdgr.zzb.REMOTE;
                } else {
                    String strValueOf3 = String.valueOf(string3);
                    throw new JSONException(strValueOf3.length() != 0 ? "unknown key material type: ".concat(strValueOf3) : new String("unknown key material type: "));
                }
                zzaVarZzask.zzb((zzdha.zzb) ((zzdob) zzaVarZzb.zzb((zzdgr) ((zzdob) zzaVarZzbo.zzb(zzbVar).zzaya())).zzaya()));
            }
            return (zzdha) ((zzdob) zzaVarZzask.zzaya());
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }
}
