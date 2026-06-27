package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzbgp extends zzbft implements zzbfi {
    private String zzecf;
    private boolean zzeih;
    private zzbfa zzeiu;
    private Exception zzeiv;
    private boolean zzeiw;

    public zzbgp(zzbdf zzbdfVar, zzbde zzbdeVar) {
        super(zzbdfVar);
        this.zzeiu = new zzbfa(zzbdfVar.getContext(), zzbdeVar);
        this.zzeiu.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzde(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzo(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzd(final boolean z, final long j) {
        final zzbdf zzbdfVar = this.zzeht.get();
        if (zzbdfVar != null) {
            zzbbm.zzeae.execute(new Runnable(zzbdfVar, z, j) { // from class: com.google.android.gms.internal.ads.zzbgq
                private final boolean zzecm;
                private final long zzega;
                private final zzbdf zzein;

                {
                    this.zzein = zzbdfVar;
                    this.zzecm = z;
                    this.zzega = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzein.zza(this.zzecm, this.zzega);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zza(String str, Exception exc) {
        this.zzeiv = exc;
        zzbad.zzd("Precache error", exc);
        zzfb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzcz(int i) {
        this.zzeiu.zzzu().zzdh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzcy(int i) {
        this.zzeiu.zzzu().zzdg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzda(int i) {
        this.zzeiu.zzzu().zzda(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzdb(int i) {
        this.zzeiu.zzzu().zzdb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbft, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzbfa zzbfaVar = this.zzeiu;
        if (zzbfaVar != null) {
            zzbfaVar.zza((zzbfi) null);
            this.zzeiu.release();
        }
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    protected final String zzey(String str) {
        String strValueOf = String.valueOf(super.zzey(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzex(String str) {
        return zze(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r1v27 */
    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zze(String str, String[] strArr) throws Throwable {
        String str2;
        long j;
        long j2;
        long j3;
        ?? r1;
        long j4;
        this.zzecf = str;
        String strZzey = zzey(str);
        String str3 = IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                try {
                    uriArr[i] = Uri.parse(strArr[i]);
                } catch (Exception e) {
                    e = e;
                    String message = e.getMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb.append("Failed to preload url ");
                    sb.append(str);
                    sb.append(" Exception: ");
                    sb.append(message);
                    zzbad.zzep(sb.toString());
                    release();
                    zza(str, strZzey, str3, zzb(str3, e));
                    return false;
                }
            }
            this.zzeiu.zza(uriArr, this.zzdyb);
            zzbdf zzbdfVar = this.zzeht.get();
            if (zzbdfVar != null) {
                zzbdfVar.zza(strZzey, this);
            }
            Clock clockZzln = com.google.android.gms.ads.internal.zzk.zzln();
            long jCurrentTimeMillis = clockZzln.currentTimeMillis();
            long jLongValue = ((Long) zzyt.zzpe().zzd(zzacu.zzcly)).longValue();
            long jLongValue2 = ((Long) zzyt.zzpe().zzd(zzacu.zzclx)).longValue() * 1000;
            long jIntValue = ((Integer) zzyt.zzpe().zzd(zzacu.zzclw)).intValue();
            long j5 = -1;
            while (true) {
                try {
                    synchronized (this) {
                        try {
                            if (clockZzln.currentTimeMillis() - jCurrentTimeMillis > jLongValue2) {
                                long j6 = jLongValue2;
                                StringBuilder sb2 = new StringBuilder(47);
                                sb2.append("Timeout reached. Limit: ");
                                sb2.append(j6);
                                sb2.append(" ms");
                                throw new IOException(sb2.toString());
                            }
                            if (this.zzeih) {
                                if (this.zzeiv != null) {
                                    throw this.zzeiv;
                                }
                                throw new IOException("Abort requested before buffering finished. ");
                            }
                            if (!this.zzeiw) {
                                zzkv zzkvVarZzzt = this.zzeiu.zzzt();
                                if (zzkvVarZzzt == null) {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                                str2 = str3;
                                try {
                                    long duration = zzkvVarZzzt.getDuration();
                                    if (duration > 0) {
                                        long bufferedPosition = zzkvVarZzzt.getBufferedPosition();
                                        if (bufferedPosition != j5) {
                                            j = jIntValue;
                                            j2 = jLongValue2;
                                            j4 = jLongValue;
                                            zza(str, strZzey, bufferedPosition, duration, bufferedPosition > 0, zzbfa.zzyp(), zzbfa.zzyq());
                                            j5 = bufferedPosition;
                                        } else {
                                            j = jIntValue;
                                            j2 = jLongValue2;
                                            j4 = jLongValue;
                                        }
                                        if (bufferedPosition >= duration) {
                                            zzb(str, strZzey, duration);
                                        } else if (this.zzeiu.getBytesTransferred() < j || bufferedPosition <= 0) {
                                            j3 = j5;
                                            r1 = j4;
                                        }
                                    } else {
                                        j = jIntValue;
                                        j2 = jLongValue2;
                                        j3 = j5;
                                        r1 = jLongValue;
                                    }
                                    try {
                                        try {
                                            wait(r1);
                                        } catch (Throwable th) {
                                            th = th;
                                            str3 = r1;
                                            throw th;
                                        }
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    str3 = str2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    jLongValue = r1;
                    j5 = j3;
                    str3 = str2;
                    jIntValue = j;
                    jLongValue2 = j2;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            return true;
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void abort() {
        zzfb(null);
    }

    private final void zzfb(String str) {
        synchronized (this) {
            this.zzeih = true;
            notify();
            release();
        }
        String str2 = this.zzecf;
        if (str2 != null) {
            String strZzey = zzey(str2);
            Exception exc = this.zzeiv;
            if (exc != null) {
                zza(this.zzecf, strZzey, "badUrl", zzb(str, exc));
            } else {
                zza(this.zzecf, strZzey, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    public final zzbfa zzaaa() {
        synchronized (this) {
            this.zzeiw = true;
            notify();
        }
        this.zzeiu.zza((zzbfi) null);
        zzbfa zzbfaVar = this.zzeiu;
        this.zzeiu = null;
        return zzbfaVar;
    }

    private static String zzb(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }
}
