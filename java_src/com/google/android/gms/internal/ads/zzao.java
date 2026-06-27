package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzao {
    final String zza;
    final long zzb;
    final long zzc;
    long zzcb;
    final String zzcc;
    final long zzd;
    final long zze;
    final List<zzl> zzg;

    private zzao(String str, String str2, long j, long j2, long j3, long j4, List<zzl> list) {
        this.zzcc = str;
        this.zza = "".equals(str2) ? null : str2;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = j3;
        this.zze = j4;
        this.zzg = list;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    zzao(String str, zzc zzcVar) {
        String str2 = zzcVar.zza;
        long j = zzcVar.zzb;
        long j2 = zzcVar.zzc;
        long j3 = zzcVar.zzd;
        long j4 = zzcVar.zze;
        List arrayList = zzcVar.zzg;
        if (arrayList == null) {
            Map<String, String> map = zzcVar.zzf;
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new zzl(entry.getKey(), entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
    }

    static zzao zzc(zzap zzapVar) throws IOException {
        if (zzan.zzb((InputStream) zzapVar) != 538247942) {
            throw new IOException();
        }
        return new zzao(zzan.zza(zzapVar), zzan.zza(zzapVar), zzan.zzc(zzapVar), zzan.zzc(zzapVar), zzan.zzc(zzapVar), zzan.zzc(zzapVar), zzan.zzb(zzapVar));
    }

    final boolean zza(OutputStream outputStream) throws IOException {
        try {
            zzan.zza(outputStream, 538247942);
            zzan.zza(outputStream, this.zzcc);
            zzan.zza(outputStream, this.zza == null ? "" : this.zza);
            zzan.zza(outputStream, this.zzb);
            zzan.zza(outputStream, this.zzc);
            zzan.zza(outputStream, this.zzd);
            zzan.zza(outputStream, this.zze);
            List<zzl> list = this.zzg;
            if (list != null) {
                zzan.zza(outputStream, list.size());
                for (zzl zzlVar : list) {
                    zzan.zza(outputStream, zzlVar.getName());
                    zzan.zza(outputStream, zzlVar.getValue());
                }
            } else {
                zzan.zza(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            zzag.d("%s", e.toString());
            return false;
        }
    }
}
