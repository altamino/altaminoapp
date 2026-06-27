package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdnk implements zzdro {
    private final zzdni zzhcx;

    public static zzdnk zza(zzdni zzdniVar) {
        zzdnk zzdnkVar = zzdniVar.zzhdo;
        return zzdnkVar != null ? zzdnkVar : new zzdnk(zzdniVar);
    }

    private zzdnk(zzdni zzdniVar) {
        this.zzhcx = (zzdni) zzdod.zza(zzdniVar, "output");
        this.zzhcx.zzhdo = this;
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final int zzawy() {
        return zzdob.zze.zzhhv;
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzah(int i, int i2) throws IOException {
        this.zzhcx.zzaa(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzp(int i, long j) throws IOException {
        this.zzhcx.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzq(int i, long j) throws IOException {
        this.zzhcx.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, float f) throws IOException {
        this.zzhcx.zza(i, f);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, double d) throws IOException {
        this.zzhcx.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzai(int i, int i2) throws IOException {
        this.zzhcx.zzx(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzh(int i, long j) throws IOException {
        this.zzhcx.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzx(int i, int i2) throws IOException {
        this.zzhcx.zzx(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzj(int i, long j) throws IOException {
        this.zzhcx.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzaa(int i, int i2) throws IOException {
        this.zzhcx.zzaa(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzi(int i, boolean z) throws IOException {
        this.zzhcx.zzi(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzf(int i, String str) throws IOException {
        this.zzhcx.zzf(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, zzdmr zzdmrVar) throws IOException {
        this.zzhcx.zza(i, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzy(int i, int i2) throws IOException {
        this.zzhcx.zzy(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzz(int i, int i2) throws IOException {
        this.zzhcx.zzz(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzi(int i, long j) throws IOException {
        this.zzhcx.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, Object obj, zzdqb zzdqbVar) throws IOException {
        this.zzhcx.zza(i, (zzdpk) obj, zzdqbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, Object obj, zzdqb zzdqbVar) throws IOException {
        zzdni zzdniVar = this.zzhcx;
        zzdniVar.zzw(i, 3);
        zzdqbVar.zza((zzdpk) obj, zzdniVar.zzhdo);
        zzdniVar.zzw(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzgm(int i) throws IOException {
        this.zzhcx.zzw(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzgn(int i) throws IOException {
        this.zzhcx.zzw(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, Object obj) throws IOException {
        if (obj instanceof zzdmr) {
            this.zzhcx.zzb(i, (zzdmr) obj);
        } else {
            this.zzhcx.zzb(i, (zzdpk) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzge = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzge += zzdni.zzge(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzge);
            while (i2 < list.size()) {
                this.zzhcx.zzfz(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzx(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzgh = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzgh += zzdni.zzgh(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzgh);
            while (i2 < list.size()) {
                this.zzhcx.zzgc(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzaa(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzfm = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzfm += zzdni.zzfm(list.get(i3).longValue());
            }
            this.zzhcx.zzga(iZzfm);
            while (i2 < list.size()) {
                this.zzhcx.zzfj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzh(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzfn = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzfn += zzdni.zzfn(list.get(i3).longValue());
            }
            this.zzhcx.zzga(iZzfn);
            while (i2 < list.size()) {
                this.zzhcx.zzfj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzh(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzfp = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzfp += zzdni.zzfp(list.get(i3).longValue());
            }
            this.zzhcx.zzga(iZzfp);
            while (i2 < list.size()) {
                this.zzhcx.zzfl(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzj(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzh = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzh += zzdni.zzh(list.get(i3).floatValue());
            }
            this.zzhcx.zzga(iZzh);
            while (i2 < list.size()) {
                this.zzhcx.zzg(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zza(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzc = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzc += zzdni.zzc(list.get(i3).doubleValue());
            }
            this.zzhcx.zzga(iZzc);
            while (i2 < list.size()) {
                this.zzhcx.zzb(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzb(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzgj = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzgj += zzdni.zzgj(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzgj);
            while (i2 < list.size()) {
                this.zzhcx.zzfz(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzx(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzbg = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzbg += zzdni.zzbg(list.get(i3).booleanValue());
            }
            this.zzhcx.zzga(iZzbg);
            while (i2 < list.size()) {
                this.zzhcx.zzbf(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzi(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (list instanceof zzdot) {
            zzdot zzdotVar = (zzdot) list;
            while (i2 < list.size()) {
                Object objZzgq = zzdotVar.zzgq(i2);
                if (objZzgq instanceof String) {
                    this.zzhcx.zzf(i, (String) objZzgq);
                } else {
                    this.zzhcx.zza(i, (zzdmr) objZzgq);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzf(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, List<zzdmr> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzhcx.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzgf = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzgf += zzdni.zzgf(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzgf);
            while (i2 < list.size()) {
                this.zzhcx.zzga(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzy(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzgi = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzgi += zzdni.zzgi(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzgi);
            while (i2 < list.size()) {
                this.zzhcx.zzgc(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzaa(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzfq = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzfq += zzdni.zzfq(list.get(i3).longValue());
            }
            this.zzhcx.zzga(iZzfq);
            while (i2 < list.size()) {
                this.zzhcx.zzfl(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzj(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzgg = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzgg += zzdni.zzgg(list.get(i3).intValue());
            }
            this.zzhcx.zzga(iZzgg);
            while (i2 < list.size()) {
                this.zzhcx.zzgb(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzz(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzhcx.zzw(i, 2);
            int iZzfo = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzfo += zzdni.zzfo(list.get(i3).longValue());
            }
            this.zzhcx.zzga(iZzfo);
            while (i2 < list.size()) {
                this.zzhcx.zzfk(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzhcx.zzi(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zza(int i, List<?> list, zzdqb zzdqbVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzdqbVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final void zzb(int i, List<?> list, zzdqb zzdqbVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzdqbVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdro
    public final <K, V> void zza(int i, zzdpd<K, V> zzdpdVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzhcx.zzw(i, 2);
            this.zzhcx.zzga(zzdpc.zza(zzdpdVar, entry.getKey(), entry.getValue()));
            zzdpc.zza(this.zzhcx, zzdpdVar, entry.getKey(), entry.getValue());
        }
    }
}
