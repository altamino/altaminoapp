package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzchl extends zzchj {
    private static final Pattern zzfwx = Pattern.compile("Received error HTTP response code: (.*)");
    private final ScheduledExecutorService zzfiw;
    private final zzcxv zzfjp;
    private final zzbbl zzfqw;
    private final zzcgn zzfwv;
    private final zzcji zzfww;

    zzchl(zzbtg zzbtgVar, zzcxv zzcxvVar, zzcgn zzcgnVar, zzbbl zzbblVar, ScheduledExecutorService scheduledExecutorService, zzcji zzcjiVar) {
        super(zzbtgVar);
        this.zzfjp = zzcxvVar;
        this.zzfwv = zzcgnVar;
        this.zzfqw = zzbblVar;
        this.zzfiw = scheduledExecutorService;
        this.zzfww = zzcjiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchj
    public final zzbbh<zzcxu> zze(zzarx zzarxVar) throws zzcgm {
        zzbbh<zzcxu> zzbbhVarZza = zzbar.zza(this.zzfwv.zzc(zzarxVar), new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzchm
            private final zzchl zzfwy;

            {
                this.zzfwy = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfwy.zzd((InputStream) obj);
            }
        }, this.zzfqw);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvm)).booleanValue()) {
            zzbbhVarZza = zzbar.zza(zzbar.zza(zzbbhVarZza, ((Integer) zzyt.zzpe().zzd(zzacu.zzcvn)).intValue(), TimeUnit.SECONDS, this.zzfiw), TimeoutException.class, zzchn.zzbqz, zzbbm.zzeaf);
        }
        zzbar.zza(zzbbhVarZza, new zzcho(this), zzbbm.zzeaf);
        return zzbbhVarZza;
    }

    final /* synthetic */ zzbbh zzd(InputStream inputStream) throws Exception {
        return zzbar.zzm(new zzcxu(new zzcxr(this.zzfjp), zzcxs.zza(new InputStreamReader(inputStream))));
    }
}
