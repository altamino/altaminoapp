package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbt;
import com.google.android.gms.internal.measurement.zzin;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
final class zzea extends zzfs {
    public zzea(zzft zzftVar) {
        super(zzftVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() {
        return false;
    }

    public final byte[] zzb(zzaj zzajVar, String str) throws IllegalStateException {
        com.google.android.gms.internal.measurement.zzch zzchVar;
        com.google.android.gms.internal.measurement.zzcg zzcgVar;
        zzg zzgVar;
        Bundle bundle;
        long j;
        zzaf zzafVarZzw;
        zzgc next;
        zzq();
        this.zzl.zzn();
        Preconditions.checkNotNull(zzajVar);
        Preconditions.checkNotEmpty(str);
        if (!zzaf().zze(str, zzal.zzir)) {
            zzad().zzdh().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzajVar.name) && !"_iapx".equals(zzajVar.name)) {
            zzad().zzdh().zza("Generating a payload for this event is not available. package_name, event_name", str, zzajVar.name);
            return null;
        }
        com.google.android.gms.internal.measurement.zzcg zzcgVar2 = new com.google.android.gms.internal.measurement.zzcg();
        zzdo().beginTransaction();
        try {
            zzg zzgVarZzae = zzdo().zzae(str);
            if (zzgVarZzae == null) {
                zzad().zzdh().zza("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!zzgVarZzae.isMeasurementEnabled()) {
                zzad().zzdh().zza("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            com.google.android.gms.internal.measurement.zzch zzchVar2 = new com.google.android.gms.internal.measurement.zzch();
            zzcgVar2.zzxl = new com.google.android.gms.internal.measurement.zzch[]{zzchVar2};
            zzchVar2.zzxn = 1;
            zzchVar2.zzxv = "android";
            zzchVar2.zzcf = zzgVarZzae.zzan();
            zzchVar2.zzcp = zzgVarZzae.zzau();
            zzchVar2.zzcn = zzgVarZzae.zzas();
            long jZzat = zzgVarZzae.zzat();
            zzchVar2.zzyh = jZzat == -2147483648L ? null : Integer.valueOf((int) jZzat);
            zzchVar2.zzxz = Long.valueOf(zzgVarZzae.zzav());
            zzchVar2.zzys = Long.valueOf(zzgVarZzae.zzax());
            zzchVar2.zzch = zzgVarZzae.getGmpAppId();
            if (TextUtils.isEmpty(zzchVar2.zzch)) {
                zzchVar2.zzxf = zzgVarZzae.zzao();
            }
            zzchVar2.zzyd = Long.valueOf(zzgVarZzae.zzaw());
            if (this.zzl.isEnabled() && zzt.zzbv() && zzaf().zzk(zzchVar2.zzcf)) {
                zzchVar2.zzyn = null;
            }
            Pair<String, Boolean> pairZzar = zzae().zzar(zzgVarZzae.zzan());
            if (zzgVarZzae.zzbl() && pairZzar != null && !TextUtils.isEmpty((CharSequence) pairZzar.first)) {
                zzchVar2.zzyb = zzo((String) pairZzar.first, Long.toString(zzajVar.zzfp));
                zzchVar2.zzyc = (Boolean) pairZzar.second;
            }
            zzy().zzah();
            zzchVar2.zzxx = Build.MODEL;
            zzy().zzah();
            zzchVar2.zzxw = Build.VERSION.RELEASE;
            zzchVar2.zzxy = Integer.valueOf((int) zzy().zzco());
            zzchVar2.zzex = zzy().zzcp();
            zzchVar2.zzcg = zzo(zzgVarZzae.getAppInstanceId(), Long.toString(zzajVar.zzfp));
            zzchVar2.zzcj = zzgVarZzae.getFirebaseInstanceId();
            String strZzan = zzgVarZzae.zzan();
            List<zzgc> listZzad = zzdo().zzad(strZzan);
            if (zzaf().zzm(strZzan)) {
                Iterator<zzgc> it = listZzad.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if ("_lte".equals(next.name)) {
                        break;
                    }
                }
                if (next == null || next.value == null) {
                    zzgc zzgcVar = new zzgc(strZzan, "auto", "_lte", zzz().currentTimeMillis(), 0L);
                    listZzad.add(zzgcVar);
                    zzdo().zza(zzgcVar);
                }
            }
            if (zzaf().zze(strZzan, zzal.zzin)) {
                zzfz zzfzVarZzdm = zzdm();
                zzfzVarZzdm.zzad().zzdi().zzaq("Checking account type status for ad personalization signals");
                if (zzfzVarZzdm.zzy().zzcs()) {
                    String strZzan2 = zzgVarZzae.zzan();
                    if (zzgVarZzae.zzbl() && zzfzVarZzdm.zzdp().zzbc(strZzan2)) {
                        zzfzVarZzdm.zzad().zzdh().zzaq("Turning off ad personalization due to account type");
                        Iterator<zzgc> it2 = listZzad.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            if ("_npa".equals(it2.next().name)) {
                                it2.remove();
                                break;
                            }
                        }
                        listZzad.add(new zzgc(strZzan2, "auto", "_npa", zzfzVarZzdm.zzz().currentTimeMillis(), 1L));
                    }
                }
            }
            zzbt.zzh[] zzhVarArr = new zzbt.zzh[listZzad.size()];
            for (int i = 0; i < listZzad.size(); i++) {
                zzbt.zzh.zza zzaVarZzan = zzbt.zzh.zziu().zzby(listZzad.get(i).name).zzan(listZzad.get(i).zzsx);
                zzdm().zza(zzaVarZzan, listZzad.get(i).value);
                zzhVarArr[i] = (zzbt.zzh) ((com.google.android.gms.internal.measurement.zzez) zzaVarZzan.zzmr());
            }
            zzchVar2.zzxp = zzhVarArr;
            Bundle bundleZzct = zzajVar.zzfd.zzct();
            bundleZzct.putLong("_c", 1L);
            zzad().zzdh().zzaq("Marking in-app purchase as real-time");
            bundleZzct.putLong("_r", 1L);
            bundleZzct.putString("_o", zzajVar.origin);
            if (zzab().zzbt(zzchVar2.zzcf)) {
                zzab().zza(bundleZzct, "_dbg", (Object) 1L);
                zzab().zza(bundleZzct, "_r", (Object) 1L);
            }
            zzaf zzafVarZzc = zzdo().zzc(str, zzajVar.name);
            if (zzafVarZzc == null) {
                zzchVar = zzchVar2;
                zzcgVar = zzcgVar2;
                zzgVar = zzgVarZzae;
                bundle = bundleZzct;
                zzafVarZzw = new zzaf(str, zzajVar.name, 0L, 0L, zzajVar.zzfp, 0L, null, null, null, null);
                j = 0;
            } else {
                zzchVar = zzchVar2;
                zzcgVar = zzcgVar2;
                zzgVar = zzgVarZzae;
                bundle = bundleZzct;
                j = zzafVarZzc.zzfg;
                zzafVarZzw = zzafVarZzc.zzw(zzajVar.zzfp);
            }
            zzdo().zza(zzafVarZzw);
            zzae zzaeVar = new zzae(this.zzl, zzajVar.origin, str, zzajVar.name, zzajVar.zzfp, j, bundle);
            com.google.android.gms.internal.measurement.zzcf zzcfVar = new com.google.android.gms.internal.measurement.zzcf();
            com.google.android.gms.internal.measurement.zzch zzchVar3 = zzchVar;
            zzchVar3.zzxo = new com.google.android.gms.internal.measurement.zzcf[]{zzcfVar};
            zzcfVar.zzxj = Long.valueOf(zzaeVar.timestamp);
            zzcfVar.name = zzaeVar.name;
            zzcfVar.zzxk = Long.valueOf(zzaeVar.zzfc);
            zzcfVar.zzxi = new zzbt.zzd[zzaeVar.zzfd.size()];
            Iterator<String> it3 = zzaeVar.zzfd.iterator();
            int i2 = 0;
            while (it3.hasNext()) {
                String next2 = it3.next();
                zzbt.zzd.zza zzaVarZzbw = zzbt.zzd.zzht().zzbw(next2);
                zzdm().zza(zzaVarZzbw, zzaeVar.zzfd.get(next2));
                zzcfVar.zzxi[i2] = (zzbt.zzd) ((com.google.android.gms.internal.measurement.zzez) zzaVarZzbw.zzmr());
                i2++;
            }
            zzchVar3.zzyq = (zzbt.zze) ((com.google.android.gms.internal.measurement.zzez) zzbt.zze.zzhy().zzb(zzbt.zzc.zzhi().zzai(zzafVarZzw.zzfe).zzbu(zzajVar.name)).zzmr());
            zzchVar3.zzyg = zzdn().zza(zzgVar.zzan(), (com.google.android.gms.internal.measurement.zzcf[]) null, zzchVar3.zzxp);
            zzchVar3.zzxr = zzcfVar.zzxj;
            zzchVar3.zzxs = zzcfVar.zzxj;
            long jZzar = zzgVar.zzar();
            zzchVar3.zzxu = jZzar != 0 ? Long.valueOf(jZzar) : null;
            long jZzaq = zzgVar.zzaq();
            if (jZzaq != 0) {
                jZzar = jZzaq;
            }
            zzchVar3.zzxt = jZzar != 0 ? Long.valueOf(jZzar) : null;
            zzgVar.zzbb();
            zzchVar3.zzye = Integer.valueOf((int) zzgVar.zzay());
            zzchVar3.zzya = Long.valueOf(zzaf().zzav());
            zzchVar3.zzxq = Long.valueOf(zzz().currentTimeMillis());
            zzchVar3.zzyf = Boolean.TRUE;
            zzg zzgVar2 = zzgVar;
            zzgVar2.zze(zzchVar3.zzxr.longValue());
            zzgVar2.zzf(zzchVar3.zzxs.longValue());
            zzdo().zza(zzgVar2);
            zzdo().setTransactionSuccessful();
            try {
                byte[] bArr = new byte[zzcgVar.zzly()];
                zzin zzinVarZzk = zzin.zzk(bArr, 0, bArr.length);
                zzcgVar.zza(zzinVarZzk);
                zzinVarZzk.zzlk();
                return zzdm().zzc(bArr);
            } catch (IOException e) {
                zzad().zzda().zza("Data loss. Failed to bundle and serialize. appId", zzau.zzao(str), e);
                return null;
            }
        } catch (SecurityException e2) {
            zzad().zzdh().zza("Resettable device id encryption failed", e2.getMessage());
            return new byte[0];
        } catch (SecurityException e3) {
            zzad().zzdh().zza("app instance id encryption failed", e3.getMessage());
            return new byte[0];
        } finally {
            zzdo().endTransaction();
        }
    }

    private static String zzo(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }
}
