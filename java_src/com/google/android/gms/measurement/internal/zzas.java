package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzas extends zzcu {
    private static final AtomicReference<String[]> zzjm = new AtomicReference<>();
    private static final AtomicReference<String[]> zzjn = new AtomicReference<>();
    private static final AtomicReference<String[]> zzjo = new AtomicReference<>();

    zzas(zzby zzbyVar) {
        super(zzbyVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzcu
    protected final boolean zzak() {
        return false;
    }

    private final boolean zzcz() {
        zzag();
        return this.zzl.zzel() && this.zzl.zzad().isLoggable(3);
    }

    protected final String zzal(String str) {
        if (str == null) {
            return null;
        }
        return !zzcz() ? str : zza(str, zzcx.zzoz, zzcx.zzoy, zzjm);
    }

    protected final String zzam(String str) {
        if (str == null) {
            return null;
        }
        return !zzcz() ? str : zza(str, zzcy.zzpb, zzcy.zzpa, zzjn);
    }

    protected final String zzan(String str) {
        if (str == null) {
            return null;
        }
        if (!zzcz()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return zza(str, zzcz.zzpd, zzcz.zzpc, zzjo);
    }

    private static String zza(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzgd.zzs(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    protected final String zzb(zzaj zzajVar) {
        if (zzajVar == null) {
            return null;
        }
        if (!zzcz()) {
            return zzajVar.toString();
        }
        return "origin=" + zzajVar.origin + ",name=" + zzal(zzajVar.name) + ",params=" + zzb(zzajVar.zzfd);
    }

    protected final String zza(zzae zzaeVar) {
        if (zzaeVar == null) {
            return null;
        }
        if (!zzcz()) {
            return zzaeVar.toString();
        }
        return "Event{appId='" + zzaeVar.zzcf + "', name='" + zzal(zzaeVar.name) + "', params=" + zzb(zzaeVar.zzfd) + "}";
    }

    private final String zzb(zzag zzagVar) {
        if (zzagVar == null) {
            return null;
        }
        if (!zzcz()) {
            return zzagVar.toString();
        }
        return zzc(zzagVar.zzct());
    }

    protected final String zzc(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!zzcz()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            } else {
                sb.append("Bundle[{");
            }
            sb.append(zzam(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
