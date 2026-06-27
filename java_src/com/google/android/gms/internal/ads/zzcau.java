package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcau {
    private final zzbai zzbtc;
    private final zzady zzdgs;
    private final zzwj zzejd;
    private final zzdh zzeko;
    private final Executor zzffi;
    private final ScheduledExecutorService zzfiw;
    private final zzcan zzfrl;
    private final com.google.android.gms.ads.internal.zza zzfrm;
    private final zzcbi zzfrn;
    private final Context zzlj;

    public zzcau(Context context, zzcan zzcanVar, zzdh zzdhVar, zzbai zzbaiVar, com.google.android.gms.ads.internal.zza zzaVar, zzwj zzwjVar, Executor executor, zzcxv zzcxvVar, zzcbi zzcbiVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzlj = context;
        this.zzfrl = zzcanVar;
        this.zzeko = zzdhVar;
        this.zzbtc = zzbaiVar;
        this.zzfrm = zzaVar;
        this.zzejd = zzwjVar;
        this.zzffi = executor;
        this.zzdgs = zzcxvVar.zzdgs;
        this.zzfrn = zzcbiVar;
        this.zzfiw = scheduledExecutorService;
    }

    public static List<zzabj> zzi(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject == null) {
            return Collections.emptyList();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reasons");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            zzabj zzabjVarZzk = zzk(jSONArrayOptJSONArray.optJSONObject(i));
            if (zzabjVarZzk != null) {
                arrayList.add(zzabjVarZzk);
            }
        }
        return arrayList;
    }

    public static zzabj zzj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzk(jSONObjectOptJSONObject);
    }

    private static zzabj zzk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new zzabj(strOptString, strOptString2);
    }

    public final zzbbh<zzadw> zzc(JSONObject jSONObject, String str) {
        return zza(jSONObject.optJSONObject(str), this.zzdgs.zzcym);
    }

    public final zzbbh<List<zzadw>> zzd(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        zzady zzadyVar = this.zzdgs;
        return zza(jSONArrayOptJSONArray, zzadyVar.zzcym, zzadyVar.zzbqe);
    }

    private final zzbbh<List<zzadw>> zza(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzbar.zzm(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zza(jSONArray.optJSONObject(i), z));
        }
        return zzbar.zza(zzbar.zze(arrayList), zzcav.zzdrn, this.zzffi);
    }

    private final zzbbh<zzadw> zza(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzbar.zzm(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return zzbar.zzm(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return zzbar.zzm(new zzadw(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        return zza(jSONObject.optBoolean("require"), (zzbbh<Object>) zzbar.zza(this.zzfrl.zza(strOptString, dOptDouble, zOptBoolean), new zzbam(strOptString, dOptDouble, iOptInt, iOptInt2) { // from class: com.google.android.gms.internal.ads.zzcaw
            private final String zzddy;
            private final int zzdwk;
            private final int zzdwl;
            private final double zzfro;

            {
                this.zzddy = strOptString;
                this.zzfro = dOptDouble;
                this.zzdwk = iOptInt;
                this.zzdwl = iOptInt2;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                String str = this.zzddy;
                return new zzadw(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.zzfro, this.zzdwk, this.zzdwl);
            }
        }, this.zzffi), (Object) null);
    }

    public final zzbbh<zzadt> zze(JSONObject jSONObject, String str) {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return zzbar.zzm(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        return zza(jSONObjectOptJSONObject.optBoolean("require"), (zzbbh<Object>) zzbar.zza(zza(jSONArrayOptJSONArray, false, true), new zzbam(this, jSONObjectOptJSONObject) { // from class: com.google.android.gms.internal.ads.zzcax
            private final JSONObject zzfga;
            private final zzcau zzfrp;

            {
                this.zzfrp = this;
                this.zzfga = jSONObjectOptJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj) {
                return this.zzfrp.zza(this.zzfga, (List) obj);
            }
        }, this.zzffi), (Object) null);
    }

    private static Integer zzf(JSONObject jSONObject, String str) throws JSONException {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final zzbbh<zzbgz> zzl(JSONObject jSONObject) {
        JSONObject jSONObjectZza = zzazc.zza(jSONObject, "html_containers", "instream");
        if (jSONObjectZza == null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("video");
            if (jSONObjectOptJSONObject == null) {
                return zzbar.zzm(null);
            }
            if (TextUtils.isEmpty(jSONObjectOptJSONObject.optString("vast_xml"))) {
                zzbad.zzep("Required field 'vast_xml' is missing");
                return zzbar.zzm(null);
            }
            return zza((zzbbh<Object>) zzbar.zza(this.zzfrn.zzm(jSONObjectOptJSONObject), ((Integer) zzyt.zzpe().zzd(zzacu.zzcse)).intValue(), TimeUnit.SECONDS, this.zzfiw), (Object) null);
        }
        return zza(jSONObjectZza.optBoolean("require"), this.zzfrn.zzq(jSONObjectZza.optString("base_url"), jSONObjectZza.optString("html")), (Object) null);
    }

    private static <T> zzbbh<T> zza(zzbbh<T> zzbbhVar, T t) {
        final Object obj = null;
        return zzbar.zza(zzbbhVar, Exception.class, new zzbal(obj) { // from class: com.google.android.gms.internal.ads.zzcaz
            private final Object zzfrq;

            {
                this.zzfrq = obj;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj2) {
                Object obj3 = this.zzfrq;
                zzawz.zza("Error during loading assets.", (Exception) obj2);
                return zzbar.zzm(obj3);
            }
        }, zzbbm.zzeaf);
    }

    private static <T> zzbbh<T> zza(boolean z, final zzbbh<T> zzbbhVar, T t) {
        if (z) {
            return zzbar.zza(zzbbhVar, new zzbal(zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzcba
                private final zzbbh zzdzo;

                {
                    this.zzdzo = zzbbhVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    return obj != null ? this.zzdzo : zzbar.zzd(new zzcmw("Retrieve required value in native ad response failed.", 0));
                }
            }, zzbbm.zzeaf);
        }
        return zza(zzbbhVar, (Object) null);
    }

    final /* synthetic */ zzbbh zzb(String str, Object obj) throws Exception {
        com.google.android.gms.ads.internal.zzk.zzlh();
        zzbgz zzbgzVarZza = zzbhf.zza(this.zzlj, zzbin.zzabu(), "native-omid", false, false, this.zzeko, this.zzbtc, null, null, this.zzfrm, this.zzejd);
        final zzbbq zzbbqVarZzn = zzbbq.zzn(zzbgzVarZza);
        zzbgzVarZza.zzaai().zza(new zzbij(zzbbqVarZzn) { // from class: com.google.android.gms.internal.ads.zzcbb
            private final zzbbq zzeki;

            {
                this.zzeki = zzbbqVarZzn;
            }

            @Override // com.google.android.gms.internal.ads.zzbij
            public final void zzae(boolean z) {
                this.zzeki.zzxe();
            }
        });
        zzbgzVarZza.loadData(str, "text/html", C.UTF8_NAME);
        return zzbbqVarZzn;
    }

    final /* synthetic */ zzadt zza(JSONObject jSONObject, List list) throws JSONException {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
        Integer numZzf = zzf(jSONObject, "bg_color");
        Integer numZzf2 = zzf(jSONObject, "text_color");
        int iOptInt = jSONObject.optInt("text_size", -1);
        boolean zOptBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzadt(strOptString, list, numZzf, numZzf2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", 4000) + iOptInt2, this.zzdgs.zzbqf, zOptBoolean);
    }
}
