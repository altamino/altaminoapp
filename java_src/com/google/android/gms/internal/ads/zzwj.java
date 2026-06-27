package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzwl;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzwj {
    private final zzwo zzbxk;
    private final zzxn zzbxl;
    private final boolean zzbxm;

    public static zzwj zznl() {
        return new zzwj();
    }

    public zzwj(zzwo zzwoVar) {
        this.zzbxk = zzwoVar;
        this.zzbxm = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcul)).booleanValue();
        this.zzbxl = new zzxn();
        zznm();
    }

    private zzwj() {
        this.zzbxm = false;
        this.zzbxk = new zzwo();
        this.zzbxl = new zzxn();
        zznm();
    }

    public final synchronized void zza(zzwl.zza.zzb zzbVar) {
        if (this.zzbxm) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcum)).booleanValue()) {
                zzc(zzbVar);
            } else {
                zzb(zzbVar);
            }
        }
    }

    private final synchronized void zzb(zzwl.zza.zzb zzbVar) {
        this.zzbxl.zzcfh = zznn();
        this.zzbxk.zzg(zzdrw.zza(this.zzbxl)).zzby(zzbVar.zzac()).zzdj();
        String strValueOf = String.valueOf(Integer.toString(zzbVar.zzac(), 10));
        zzawz.zzds(strValueOf.length() != 0 ? "Logging Event with event code : ".concat(strValueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void zzc(zzwl.zza.zzb zzbVar) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(zzd(zzbVar).getBytes());
                } catch (IOException unused) {
                    zzawz.zzds("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                        zzawz.zzds("Could not close Clearcut output stream.");
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    zzawz.zzds("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused4) {
            zzawz.zzds("Could not find file for Clearcut");
        }
    }

    private final synchronized String zzd(zzwl.zza.zzb zzbVar) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzbxl.zzcfd, Long.valueOf(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime()), Integer.valueOf(zzbVar.zzac()), Base64.encodeToString(zzdrw.zza(this.zzbxl), 3));
    }

    public final synchronized void zza(zzwk zzwkVar) {
        if (this.zzbxm) {
            try {
                zzwkVar.zza(this.zzbxl);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    private final synchronized void zznm() {
        this.zzbxl.zzcfl = new zzxj();
        this.zzbxl.zzcfl.zzceh = new zzxk();
        this.zzbxl.zzcfi = new zzxl();
    }

    private static long[] zznn() {
        int i;
        List<String> listZzqo = zzacu.zzqo();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = listZzqo.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String[] strArrSplit = it.next().split(",");
            int length = strArrSplit.length;
            while (i < length) {
                try {
                    arrayList.add(Long.valueOf(strArrSplit[i]));
                } catch (NumberFormatException unused) {
                    zzawz.zzds("Experiment ID is not a number");
                }
                i++;
            }
        }
        long[] jArr = new long[arrayList.size()];
        int size = arrayList.size();
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            jArr[i2] = ((Long) obj).longValue();
            i2++;
        }
        return jArr;
    }
}
