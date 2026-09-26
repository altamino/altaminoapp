package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzqd;
import java.util.HashMap;

/* JADX INFO: loaded from: classes11.dex */
public final class zzmn extends zzml {
    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    private final String zzb(String str) {
        String strZzf = zzm().zzf(str);
        if (TextUtils.isEmpty(strZzf)) {
            return zzbi.zzq.zza(null);
        }
        Uri uri = Uri.parse(zzbi.zzq.zza(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.authority(strZzf + "." + uri.getAuthority());
        return builderBuildUpon.build().toString();
    }

    public final zzmq zza(String str) {
        if (zzqd.zza() && zze().zza(zzbi.zzbu)) {
            zzj().zzp().zza("sgtm feature flag enabled.");
            zzh zzhVarZzd = zzh().zzd(str);
            if (zzhVarZzd == null) {
                return new zzmq(zzb(str));
            }
            zzmq zzmqVar = null;
            if (zzhVarZzd.zzam()) {
                zzj().zzp().zza("sgtm upload enabled in manifest.");
                com.google.android.gms.internal.measurement.zzfc.zzd zzdVarZzc = zzm().zzc(zzhVarZzd.zzx());
                if (zzdVarZzc != null) {
                    String strZzj = zzdVarZzc.zzj();
                    if (!TextUtils.isEmpty(strZzj)) {
                        String strZzi = zzdVarZzc.zzi();
                        zzj().zzp().zza("sgtm configured with upload_url, server_info", strZzj, TextUtils.isEmpty(strZzi) ? "Y" : "N");
                        if (TextUtils.isEmpty(strZzi)) {
                            zzmqVar = new zzmq(strZzj);
                        } else {
                            HashMap map = new HashMap();
                            map.put("x-google-sgtm-server-info", strZzi);
                            zzmqVar = new zzmq(strZzj, map);
                        }
                    }
                }
            }
            if (zzmqVar != null) {
                return zzmqVar;
            }
        }
        return new zzmq(zzb(str));
    }

    zzmn(zzmp zzmpVar) {
        super(zzmpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmz g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzao zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzgp zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzls zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmn zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }
}
