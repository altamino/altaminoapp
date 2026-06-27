package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcaq {
    private final zzbbl zzfqw;
    private final zzcau zzfqx;
    private final zzcbd zzfqy;

    public zzcaq(zzbbl zzbblVar, zzcau zzcauVar, zzcbd zzcbdVar) {
        this.zzfqw = zzbblVar;
        this.zzfqx = zzcauVar;
        this.zzfqy = zzcbdVar;
    }

    public final zzbbh<zzbyt> zza(final zzcxu zzcxuVar, final zzcxm zzcxmVar, final JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        zzbbh zzbbhVarZza;
        final zzbbh zzbbhVarSubmit = this.zzfqw.submit(new Callable(this, zzcxuVar, zzcxmVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcar
            private final zzcxm zzfhm;
            private final zzcaq zzfqz;
            private final zzcxu zzfra;
            private final JSONObject zzfrb;

            {
                this.zzfqz = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
                this.zzfrb = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws zzcmw {
                zzcxu zzcxuVar2 = this.zzfra;
                zzcxm zzcxmVar2 = this.zzfhm;
                JSONObject jSONObject2 = this.zzfrb;
                zzbyt zzbytVar = new zzbyt();
                zzbytVar.zzdn(jSONObject2.optInt("template_id", -1));
                zzbytVar.zzfl(jSONObject2.optString("custom_template_id"));
                zzcxv zzcxvVar = zzcxuVar2.zzgkx.zzfjp;
                if (!zzcxvVar.zzglc.contains(Integer.toString(zzbytVar.zzahv()))) {
                    int iZzahv = zzbytVar.zzahv();
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("Invalid template ID: ");
                    sb.append(iZzahv);
                    throw new zzcmw(sb.toString(), 0);
                }
                if (zzbytVar.zzahv() == 3) {
                    if (zzbytVar.getCustomTemplateId() == null) {
                        throw new zzcmw("No custom template id for custom template ad response.", 0);
                    }
                    if (!zzcxvVar.zzgld.contains(zzbytVar.getCustomTemplateId())) {
                        throw new zzcmw("Unexpected custom template id in the response.", 0);
                    }
                }
                zzbytVar.setStarRating(jSONObject2.optDouble("rating", -1.0d));
                String strOptString = jSONObject2.optString("headline", null);
                if (zzcxmVar2.zzdpc) {
                    com.google.android.gms.ads.internal.zzk.zzlg();
                    String strZzwe = zzaxi.zzwe();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strZzwe).length() + 3 + String.valueOf(strOptString).length());
                    sb2.append(strZzwe);
                    sb2.append(" : ");
                    sb2.append(strOptString);
                    strOptString = sb2.toString();
                }
                zzbytVar.zzp("headline", strOptString);
                zzbytVar.zzp(TtmlNode.TAG_BODY, jSONObject2.optString(TtmlNode.TAG_BODY, null));
                zzbytVar.zzp("call_to_action", jSONObject2.optString("call_to_action", null));
                zzbytVar.zzp("store", jSONObject2.optString("store", null));
                zzbytVar.zzp("price", jSONObject2.optString("price", null));
                zzbytVar.zzp("advertiser", jSONObject2.optString("advertiser", null));
                return zzbytVar;
            }
        });
        final zzbbh<List<zzadw>> zzbbhVarZzd = this.zzfqx.zzd(jSONObject, "images");
        final zzbbh<zzadw> zzbbhVarZzc = this.zzfqx.zzc(jSONObject, "secondary_image");
        final zzbbh<zzadw> zzbbhVarZzc2 = this.zzfqx.zzc(jSONObject, "app_icon");
        final zzbbh<zzadt> zzbbhVarZze = this.zzfqx.zze(jSONObject, "attribution");
        final zzbbh<zzbgz> zzbbhVarZzl = this.zzfqx.zzl(jSONObject);
        final zzcau zzcauVar = this.zzfqx;
        if (!jSONObject.optBoolean("enable_omid") || (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) == null) {
            zzbbhVarZza = zzbar.zzm(null);
        } else {
            final String strOptString = jSONObjectOptJSONObject.optString("omid_html");
            if (TextUtils.isEmpty(strOptString)) {
                zzbbhVarZza = zzbar.zzm(null);
            } else {
                zzbbhVarZza = zzbar.zza(zzbar.zzm(null), new zzbal(zzcauVar, strOptString) { // from class: com.google.android.gms.internal.ads.zzcay
                    private final String zzdbk;
                    private final zzcau zzfrp;

                    {
                        this.zzfrp = zzcauVar;
                        this.zzdbk = strOptString;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbal
                    public final zzbbh zzf(Object obj) {
                        return this.zzfrp.zzb(this.zzdbk, obj);
                    }
                }, zzbbm.zzeae);
            }
        }
        final zzbbh zzbbhVar = zzbbhVarZza;
        final zzbbh<List<zzcbg>> zzbbhVarZzg = this.zzfqy.zzg(jSONObject, "custom_assets");
        return zzbar.zza(zzbbhVarSubmit, zzbbhVarZzd, zzbbhVarZzc, zzbbhVarZzc2, zzbbhVarZze, zzbbhVarZzl, zzbbhVar, zzbbhVarZzg).zza(new Callable(this, zzbbhVarSubmit, zzbbhVarZzd, zzbbhVarZzc2, zzbbhVarZzc, zzbbhVarZze, jSONObject, zzbbhVarZzl, zzbbhVar, zzbbhVarZzg) { // from class: com.google.android.gms.internal.ads.zzcas
            private final zzbbh zzdzi;
            private final zzbbh zzdzk;
            private final zzcaq zzfqz;
            private final zzbbh zzfrc;
            private final zzbbh zzfrd;
            private final zzbbh zzfre;
            private final JSONObject zzfrf;
            private final zzbbh zzfrg;
            private final zzbbh zzfrh;
            private final zzbbh zzfri;

            {
                this.zzfqz = this;
                this.zzdzi = zzbbhVarSubmit;
                this.zzdzk = zzbbhVarZzd;
                this.zzfrc = zzbbhVarZzc2;
                this.zzfrd = zzbbhVarZzc;
                this.zzfre = zzbbhVarZze;
                this.zzfrf = jSONObject;
                this.zzfrg = zzbbhVarZzl;
                this.zzfrh = zzbbhVar;
                this.zzfri = zzbbhVarZzg;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzbbh zzbbhVar2 = this.zzdzi;
                zzbbh zzbbhVar3 = this.zzdzk;
                zzbbh zzbbhVar4 = this.zzfrc;
                zzbbh zzbbhVar5 = this.zzfrd;
                zzbbh zzbbhVar6 = this.zzfre;
                JSONObject jSONObject2 = this.zzfrf;
                zzbbh zzbbhVar7 = this.zzfrg;
                zzbbh zzbbhVar8 = this.zzfrh;
                zzbbh zzbbhVar9 = this.zzfri;
                zzbyt zzbytVar = (zzbyt) zzbbhVar2.get();
                zzbytVar.setImages((List) zzbbhVar3.get());
                zzbytVar.zza((zzaei) zzbbhVar4.get());
                zzbytVar.zzb((zzaei) zzbbhVar5.get());
                zzbytVar.zza((zzaea) zzbbhVar6.get());
                zzbytVar.zze(zzcau.zzi(jSONObject2));
                zzbytVar.zza(zzcau.zzj(jSONObject2));
                zzbgz zzbgzVar = (zzbgz) zzbbhVar7.get();
                if (zzbgzVar != null) {
                    zzbytVar.zzh(zzbgzVar);
                    zzbytVar.zzz(zzbgzVar.getView());
                    zzbytVar.zzb(zzbgzVar.zzyb());
                }
                zzbgz zzbgzVar2 = (zzbgz) zzbbhVar8.get();
                if (zzbgzVar2 != null) {
                    zzbytVar.zzi(zzbgzVar2);
                }
                for (zzcbg zzcbgVar : (List) zzbbhVar9.get()) {
                    int i = zzcbgVar.type;
                    if (i == 1) {
                        zzbytVar.zzp(zzcbgVar.zzcc, zzcbgVar.zzfrt);
                    } else if (i == 2) {
                        zzbytVar.zza(zzcbgVar.zzcc, zzcbgVar.zzfru);
                    }
                }
                return zzbytVar;
            }
        }, this.zzfqw);
    }
}
