package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

@zzard
/* loaded from: classes2.dex */
public final class zzaii implements zzm {
    private volatile zzahz zzdax;
    private final Context zzlj;

    public zzaii(Context context) {
        this.zzlj = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzm
    public final zzp zzc(zzr<?> zzrVar) throws zzaf {
        zzaia zzaiaVarZzh = zzaia.zzh(zzrVar);
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
        try {
            zzbbr zzbbrVar = new zzbbr();
            this.zzdax = new zzahz(this.zzlj, com.google.android.gms.ads.internal.zzk.zzlu().zzwr(), new zzaim(this, zzbbrVar), new zzain(this, zzbbrVar));
            this.zzdax.checkAvailabilityAndConnect();
            zzbbh zzbbhVarZza = zzbar.zza(zzbar.zza(zzbbrVar, new zzaij(this, zzaiaVarZzh), zzaxg.zzdvp), ((Integer) zzyt.zzpe().zzd(zzacu.zzctx)).intValue(), TimeUnit.MILLISECONDS, zzaxg.zzdvr);
            zzbbhVarZza.zza(new zzail(this), zzaxg.zzdvp);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzbbhVarZza.get();
            long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(jElapsedRealtime2);
            sb.append("ms");
            zzawz.zzds(sb.toString());
            zzaic zzaicVar = (zzaic) new zzaru(parcelFileDescriptor).zza(zzaic.CREATOR);
            if (zzaicVar == null) {
                return null;
            }
            if (zzaicVar.zzdav) {
                throw new zzaf(zzaicVar.zzdaw);
            }
            if (zzaicVar.zzdat.length != zzaicVar.zzdau.length) {
                return null;
            }
            HashMap map = new HashMap();
            int i = 0;
            while (true) {
                String[] strArr = zzaicVar.zzdat;
                if (i < strArr.length) {
                    map.put(strArr[i], zzaicVar.zzdau[i]);
                    i++;
                } else {
                    return new zzp(zzaicVar.statusCode, zzaicVar.data, map, zzaicVar.zzac, zzaicVar.zzad);
                }
            }
        } catch (InterruptedException | ExecutionException unused) {
            long jElapsedRealtime3 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(jElapsedRealtime3);
            sb2.append("ms");
            zzawz.zzds(sb2.toString());
            return null;
        } catch (Throwable th) {
            long jElapsedRealtime4 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(jElapsedRealtime4);
            sb3.append("ms");
            zzawz.zzds(sb3.toString());
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        if (this.zzdax == null) {
            return;
        }
        this.zzdax.disconnect();
        Binder.flushPendingCommands();
    }
}
