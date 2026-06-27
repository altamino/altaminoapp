package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzard
/* loaded from: classes2.dex */
public final class zzbex implements zzrv {
    private boolean isOpen;
    private Uri uri;
    private InputStream zzegc;
    private final zzrv zzegq;
    private final zzsj<zzrv> zzegr;
    private final zzbey zzegs;
    private final Context zzlj;

    public zzbex(Context context, zzrv zzrvVar, zzsj<zzrv> zzsjVar, zzbey zzbeyVar) {
        this.zzlj = context;
        this.zzegq = zzrvVar;
        this.zzegr = zzsjVar;
        this.zzegs = zzbeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final void close() throws IOException {
        if (!this.isOpen) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.isOpen = false;
        this.uri = null;
        InputStream inputStream = this.zzegc;
        if (inputStream != null) {
            IOUtils.closeQuietly(inputStream);
            this.zzegc = null;
        } else {
            this.zzegq.close();
        }
        zzsj<zzrv> zzsjVar = this.zzegr;
        if (zzsjVar != null) {
            zzsjVar.zze(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final long zza(zzry zzryVar) throws IOException {
        Long l;
        zzry zzryVar2 = zzryVar;
        if (this.isOpen) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.isOpen = true;
        this.uri = zzryVar2.uri;
        zzsj<zzrv> zzsjVar = this.zzegr;
        if (zzsjVar != null) {
            zzsjVar.zza(this, zzryVar2);
        }
        zzvv zzvvVarZze = zzvv.zze(zzryVar2.uri);
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcts)).booleanValue()) {
            zzvs zzvsVarZza = null;
            if (zzvvVarZze != null) {
                zzvvVarZze.zzbwy = zzryVar2.zzahv;
                zzvsVarZza = com.google.android.gms.ads.internal.zzk.zzlm().zza(zzvvVarZze);
            }
            if (zzvsVarZza != null && zzvsVarZza.zznh()) {
                this.zzegc = zzvsVarZza.zzni();
                return -1L;
            }
        } else if (zzvvVarZze != null) {
            zzvvVarZze.zzbwy = zzryVar2.zzahv;
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
                    this.zzegs.zzd(true, jElapsedRealtime2);
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
                    this.zzegs.zzd(false, jElapsedRealtime3);
                    StringBuilder sb2 = new StringBuilder(44);
                    sb2.append("Cache connection took ");
                    sb2.append(jElapsedRealtime3);
                    sb2.append("ms");
                    zzawz.zzds(sb2.toString());
                } catch (ExecutionException | TimeoutException unused2) {
                    futureZza.cancel(true);
                    long jElapsedRealtime4 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                    this.zzegs.zzd(false, jElapsedRealtime4);
                    StringBuilder sb3 = new StringBuilder(44);
                    sb3.append("Cache connection took ");
                    sb3.append(jElapsedRealtime4);
                    sb3.append("ms");
                    zzawz.zzds(sb3.toString());
                }
            } catch (Throwable th) {
                long jElapsedRealtime5 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
                this.zzegs.zzd(false, jElapsedRealtime5);
                StringBuilder sb4 = new StringBuilder(44);
                sb4.append("Cache connection took ");
                sb4.append(jElapsedRealtime5);
                sb4.append("ms");
                zzawz.zzds(sb4.toString());
                throw th;
            }
        }
        if (zzvvVarZze != null) {
            zzryVar2 = new zzry(Uri.parse(zzvvVarZze.url), zzryVar2.zzbmd, zzryVar2.zzapg, zzryVar2.zzahv, zzryVar2.zzcd, zzryVar2.zzcc, zzryVar2.flags);
        }
        return this.zzegq.zza(zzryVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (!this.isOpen) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.zzegc;
        if (inputStream != null) {
            i3 = inputStream.read(bArr, i, i2);
        } else {
            i3 = this.zzegq.read(bArr, i, i2);
        }
        zzsj<zzrv> zzsjVar = this.zzegr;
        if (zzsjVar != null) {
            zzsjVar.zzc(this, i3);
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final Uri getUri() {
        return this.uri;
    }
}
