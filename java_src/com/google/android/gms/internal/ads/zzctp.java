package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class zzctp implements zzcva<zzcto> {
    private final PackageInfo zzdlm;
    private final zzaxb zzduk;
    private final zzcxv zzfjp;
    private final zzbbl zzfqw;

    public zzctp(zzbbl zzbblVar, zzcxv zzcxvVar, PackageInfo packageInfo, zzaxb zzaxbVar) {
        this.zzfqw = zzbblVar;
        this.zzfjp = zzcxvVar;
        this.zzdlm = packageInfo;
        this.zzduk = zzaxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcto> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzctq
            private final zzctp zzghk;

            {
                this.zzghk = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghk.zzalt();
            }
        });
    }

    final /* synthetic */ void zza(ArrayList arrayList, Bundle bundle) {
        JSONArray jSONArrayOptJSONArray;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.zzfjp.zzgld);
        String str = "landscape";
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsg)).booleanValue() && this.zzfjp.zzdgs.versionCode > 3) {
            bundle.putBoolean("enable_native_media_orientation", true);
            int i = this.zzfjp.zzdgs.zzbqd;
            String str2 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN : "square" : "portrait" : "landscape" : "any";
            if (!IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN.equals(str2)) {
                bundle.putString("native_media_orientation", str2);
            }
        }
        int i2 = this.zzfjp.zzdgs.zzbqc;
        if (i2 == 0) {
            str = "any";
        } else if (i2 == 1) {
            str = "portrait";
        } else if (i2 != 2) {
            str = IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN;
        }
        if (!IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN.equals(str)) {
            bundle.putString("native_image_orientation", str);
        }
        bundle.putBoolean("native_multiple_images", this.zzfjp.zzdgs.zzbqe);
        bundle.putBoolean("use_custom_mute", this.zzfjp.zzdgs.zzbqh);
        PackageInfo packageInfo = this.zzdlm;
        int i3 = packageInfo == null ? 0 : packageInfo.versionCode;
        if (i3 > this.zzduk.zzvq()) {
            this.zzduk.zzvw();
            this.zzduk.zzct(i3);
        }
        JSONObject jSONObjectZzvv = this.zzduk.zzvv();
        String string = (jSONObjectZzvv == null || (jSONArrayOptJSONArray = jSONObjectZzvv.optJSONArray(this.zzfjp.zzglb)) == null) ? null : jSONArrayOptJSONArray.toString();
        if (!TextUtils.isEmpty(string)) {
            bundle.putString("native_advanced_settings", string);
        }
        int i4 = this.zzfjp.zzglg;
        if (i4 > 1) {
            bundle.putInt("max_num_ads", i4);
        }
        zzaiy zzaiyVar = this.zzfjp.zzdne;
        if (zzaiyVar != null) {
            int i5 = zzaiyVar.zzdbe;
            String str3 = "l";
            if (i5 != 1) {
                if (i5 != 2) {
                    StringBuilder sb = new StringBuilder(52);
                    sb.append("Instream ad video aspect ratio ");
                    sb.append(i5);
                    sb.append(" is wrong.");
                    zzbad.zzen(sb.toString());
                } else {
                    str3 = TtmlNode.TAG_P;
                }
            }
            bundle.putString("ia_var", str3);
            bundle.putBoolean("instr", true);
        }
        if (this.zzfjp.zzamn() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
    }

    final /* synthetic */ zzcto zzalt() throws Exception {
        final ArrayList<String> arrayList = this.zzfjp.zzglc;
        if (arrayList == null) {
            return zzctr.zzghl;
        }
        if (arrayList.isEmpty()) {
            return zzcts.zzghl;
        }
        return new zzcto(this, arrayList) { // from class: com.google.android.gms.internal.ads.zzctt
            private final zzctp zzghk;
            private final ArrayList zzghm;

            {
                this.zzghk = this;
                this.zzghm = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Bundle bundle) {
                this.zzghk.zza(this.zzghm, bundle);
            }
        };
    }
}
