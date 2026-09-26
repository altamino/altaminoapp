package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class zzij implements zzmw {
    private final zzig zza;

    public static zzij zza(zzig zzigVar) {
        zzij zzijVar = zzigVar.zza;
        return zzijVar != null ? zzijVar : new zzij(zzigVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, List<Double> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZza = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZza += zzig.zza(list.get(i12).doubleValue());
        }
        this.zza.zzc(iZza);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzc(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzd = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzd += zzig.zzd(list.get(i12).intValue());
        }
        this.zza.zzc(iZzd);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzd(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zza(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZze = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZze += zzig.zze(list.get(i12).intValue());
        }
        this.zza.zzc(iZze);
        while (i11 < list.size()) {
            this.zza.zza(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zze(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zza(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzc = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzc += zzig.zzc(list.get(i12).longValue());
        }
        this.zza.zzc(iZzc);
        while (i11 < list.size()) {
            this.zza.zza(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzf(int i10, List<Float> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZza = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZza += zzig.zza(list.get(i12).floatValue());
        }
        this.zza.zzc(iZza);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzg(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzf = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzf += zzig.zzf(list.get(i12).intValue());
        }
        this.zza.zzc(iZzf);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzh(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzd = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzd += zzig.zzd(list.get(i12).longValue());
        }
        this.zza.zzc(iZzd);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzi(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zza(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzg = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzg += zzig.zzg(list.get(i12).intValue());
        }
        this.zza.zzc(iZzg);
        while (i11 < list.size()) {
            this.zza.zza(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzj(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zza(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZze = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZze += zzig.zze(list.get(i12).longValue());
        }
        this.zza.zzc(iZze);
        while (i11 < list.size()) {
            this.zza.zza(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzk(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzk(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzh = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzh += zzig.zzh(list.get(i12).intValue());
        }
        this.zza.zzc(iZzh);
        while (i11 < list.size()) {
            this.zza.zzk(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzl(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzh(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzf = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzf += zzig.zzf(list.get(i12).longValue());
        }
        this.zza.zzc(iZzf);
        while (i11 < list.size()) {
            this.zza.zzh(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzm(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzd(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzj = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzj += zzig.zzj(list.get(i12).intValue());
        }
        this.zza.zzc(iZzj);
        while (i11 < list.size()) {
            this.zza.zzc(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzn(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.zza.zzc(i10, 2);
        int iZzg = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzg += zzig.zzg(list.get(i12).longValue());
        }
        this.zza.zzc(iZzg);
        while (i11 < list.size()) {
            this.zza.zzb(list.get(i11).longValue());
            i11++;
        }
    }

    private zzij(zzig zzigVar) {
        zzig zzigVar2 = (zzig) zziz.zza(zzigVar, "output");
        this.zza = zzigVar2;
        zzigVar2.zza = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final int zza() {
        return zzmz.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, boolean z6) throws IOException {
        this.zza.zza(i10, z6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, List<Boolean> list, boolean z6) throws IOException {
        int i11 = 0;
        if (z6) {
            this.zza.zzc(i10, 2);
            int iZza = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                iZza += zzig.zza(list.get(i12).booleanValue());
            }
            this.zza.zzc(iZza);
            while (i11 < list.size()) {
                this.zza.zzb(list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zza(i10, list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, int i11) throws IOException {
        this.zza.zza(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzd(int i10, int i11) throws IOException {
        this.zza.zza(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zze(int i10, int i11) throws IOException {
        this.zza.zzk(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzf(int i10, int i11) throws IOException {
        this.zza.zzd(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, long j6) throws IOException {
        this.zza.zzb(i10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzd(int i10, long j6) throws IOException {
        this.zza.zzh(i10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zze(int i10, long j6) throws IOException {
        this.zza.zzb(i10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, Object obj, zzlb zzlbVar) throws IOException {
        this.zza.zza(i10, (zzkj) obj, zzlbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzc(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, List<?> list, zzlb zzlbVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzb(i10, list.get(i11), zzlbVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzc(int i10, long j6) throws IOException {
        this.zza.zza(i10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, zzhm zzhmVar) throws IOException {
        this.zza.zza(i10, zzhmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, List<zzhm> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zza(i10, list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    @Deprecated
    public final void zzb(int i10) throws IOException {
        this.zza.zzc(i10, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zzb(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (list instanceof zzjp) {
            zzjp zzjpVar = (zzjp) list;
            while (i11 < list.size()) {
                Object objZzb = zzjpVar.zzb(i11);
                if (objZzb instanceof String) {
                    this.zza.zza(i10, (String) objZzb);
                } else {
                    this.zza.zza(i10, (zzhm) objZzb);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zza(i10, list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, double d) throws IOException {
        this.zza.zzb(i10, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    @Deprecated
    public final void zza(int i10) throws IOException {
        this.zza.zzc(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, long j6) throws IOException {
        this.zza.zza(i10, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, float f) throws IOException {
        this.zza.zzb(i10, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, Object obj, zzlb zzlbVar) throws IOException {
        zzig zzigVar = this.zza;
        zzigVar.zzc(i10, 3);
        zzlbVar.zza((zzkj) obj, zzigVar.zza);
        zzigVar.zzc(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, List<?> list, zzlb zzlbVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zza(i10, list.get(i11), zzlbVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final <K, V> void zza(int i10, zzke<K, V> zzkeVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzc(i10, 2);
            this.zza.zzc(zzkb.zza(zzkeVar, entry.getKey(), entry.getValue()));
            zzkb.zza(this.zza, zzkeVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, Object obj) throws IOException {
        if (obj instanceof zzhm) {
            this.zza.zzb(i10, (zzhm) obj);
        } else {
            this.zza.zza(i10, (zzkj) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final void zza(int i10, String str) throws IOException {
        this.zza.zza(i10, str);
    }
}
