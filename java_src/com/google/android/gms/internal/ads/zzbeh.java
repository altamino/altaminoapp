package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzard
/* loaded from: classes2.dex */
public final class zzbeh implements zzjp {
    private boolean isOpen;
    private InputStream zzegc;
    private final zzjp zzegd;
    private final WeakReference<zzbei> zzege;
    private final Context zzlj;

    public zzbeh(Context context, zzjp zzjpVar, zzbei zzbeiVar) {
        this.zzlj = context;
        this.zzegd = zzjpVar;
        this.zzege = new WeakReference<>(zzbeiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws IOException {
        if (!this.isOpen) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.isOpen = false;
        InputStream inputStream = this.zzegc;
        if (inputStream != null) {
            IOUtils.closeQuietly(inputStream);
            this.zzegc = null;
        } else {
            this.zzegd.close();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws IOException {
        Long l;
        zzjq zzjqVar2 = zzjqVar;
        if (this.isOpen) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.isOpen = true;
        zzvv zzvvVarZze = zzvv.zze(zzjqVar2.uri);
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcts)).booleanValue()) {
            zzvs zzvsVarZza = null;
            if (zzvvVarZze != null) {
                zzvvVarZze.zzbwy = zzjqVar2.zzahv;
                zzvsVarZza = com.google.android.gms.ads.internal.zzk.zzlm().zza(zzvvVarZze);
            }
            if (zzvsVarZza != null && zzvsVarZza.zznh()) {
                this.zzegc = zzvsVarZza.zzni();
                return -1L;
            }
        } else if (zzvvVarZze != null) {
            zzvvVarZze.zzbwy = zzjqVar2.zzahv;
            if (zzvvVarZze.zzbwx) {
                l = (Long) zzyt.zzpe().zzd(zzacu.zzctu);
            } else {
                l = (Long) zzyt.zzpe().zzd(zzacu.zzctt);
            }
            long jLongValue = l.longValue();
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
            com.google.android.gms.ads.internal.zzk.zzma();
            Future<InputStream> futureZza = zzwi.zza(this.zzlj, zzvvVarZze);
            try {
                try {
                    this.zzegc = futureZza.get(jLongValue, TimeUnit.MILLISECONDS);
                    long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                    zzbei zzbeiVar = this.zzege.get();
                    if (zzbeiVar != null) {
                        zzbeiVar.zzd(true, jElapsedRealtime2);
                    }
                    StringBuilder sb = new StringBuilder(44);
                    sb.append("Cache connection took ");
                    sb.append(jElapsedRealtime2);
                    sb.append("ms");
                    zzawz.zzds(sb.toString());
                    return -1L;
                } catch (InterruptedException unused) {
                    futureZza.cancel(true);
                    Thread.currentThread().interrupt();
                    long jElapsedRealtime3 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                    zzbei zzbeiVar2 = this.zzege.get();
                    if (zzbeiVar2 != null) {
                        zzbeiVar2.zzd(false, jElapsedRealtime3);
                    }
                    StringBuilder sb2 = new StringBuilder(44);
                    sb2.append("Cache connection took ");
                    sb2.append(jElapsedRealtime3);
                    sb2.append("ms");
                    zzawz.zzds(sb2.toString());
                } catch (ExecutionException | TimeoutException unused2) {
                    futureZza.cancel(true);
                    long jElapsedRealtime4 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                    zzbei zzbeiVar3 = this.zzege.get();
                    if (zzbeiVar3 != null) {
                        zzbeiVar3.zzd(false, jElapsedRealtime4);
                    }
                    StringBuilder sb3 = new StringBuilder(44);
                    sb3.append("Cache connection took ");
                    sb3.append(jElapsedRealtime4);
                    sb3.append("ms");
                    zzawz.zzds(sb3.toString());
                }
            } catch (Throwable th) {
                long jElapsedRealtime5 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                zzbei zzbeiVar4 = this.zzege.get();
                if (zzbeiVar4 != null) {
                    zzbeiVar4.zzd(false, jElapsedRealtime5);
                }
                StringBuilder sb4 = new StringBuilder(44);
                sb4.append("Cache connection took ");
                sb4.append(jElapsedRealtime5);
                sb4.append("ms");
                zzawz.zzds(sb4.toString());
                throw th;
            }
        }
        if (zzvvVarZze != null) {
            zzjqVar2 = new zzjq(Uri.parse(zzvvVarZze.url), zzjqVar2.zzapg, zzjqVar2.zzahv, zzjqVar2.zzcd, zzjqVar2.zzcc, zzjqVar2.flags);
        }
        return this.zzegd.zza(zzjqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.isOpen) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.zzegc;
        if (inputStream != null) {
            return inputStream.read(bArr, i, i2);
        }
        return this.zzegd.read(bArr, i, i2);
    }
}
