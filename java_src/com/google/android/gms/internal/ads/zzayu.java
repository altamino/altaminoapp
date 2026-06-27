package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzayu {
    private static zzv zzdxh;
    private static final Object zzdxi = new Object();

    @Deprecated
    private static final zzayy<Void> zzdxj = new zzayv();

    public zzayu(Context context) {
        zzbd(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    public static zzbbh<zzp> zzeg(String str) {
        zzbbr zzbbrVar = new zzbbr();
        zzdxh.zze(new zzaza(str, zzbbrVar));
        return zzbbrVar;
    }

    public final zzbbh<String> zza(int i, String str, Map<String, String> map, byte[] bArr) throws IOException {
        zzayz zzayzVar = new zzayz(null);
        zzayw zzaywVar = new zzayw(this, str, zzayzVar);
        zzazx zzazxVar = new zzazx(null);
        zzayx zzayxVar = new zzayx(this, i, str, zzayzVar, zzaywVar, bArr, map, zzazxVar);
        if (zzazx.isEnabled()) {
            try {
                zzazxVar.zza(str, "GET", zzayxVar.getHeaders(), zzayxVar.zzg());
            } catch (zza e) {
                zzbad.zzep(e.getMessage());
            }
        }
        zzdxh.zze(zzayxVar);
        return zzayzVar;
    }

    public final zzbbh<String> zzc(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }

    @VisibleForTesting
    private static zzv zzbd(Context context) {
        zzv zzvVar;
        zzv zzvVar2;
        synchronized (zzdxi) {
            if (zzdxh == null) {
                zzacu.initialize(context);
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzctv)).booleanValue()) {
                    zzvVar2 = zzayl.zzbc(context);
                } else {
                    zzvVar2 = new zzv(new zzan(new File(context.getCacheDir(), "volley")), new zzak((zzaj) new zzat()));
                    zzvVar2.start();
                }
                zzdxh = zzvVar2;
            }
            zzvVar = zzdxh;
        }
        return zzvVar;
    }
}
