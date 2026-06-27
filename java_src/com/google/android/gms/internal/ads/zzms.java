package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzms extends zzpe implements zzso {
    private long zzadb;
    private int zzafu;
    private int zzatx;
    private final zzma zzaxq;
    private final zzmh zzaxr;
    private boolean zzaxs;
    private boolean zzaxt;
    private MediaFormat zzaxu;
    private boolean zzaxv;

    public zzms(zzpg zzpgVar) {
        this(zzpgVar, null, true);
    }

    protected static void zzag(int i) {
    }

    protected static void zzc(int i, long j, long j2) {
    }

    protected static void zzhv() {
    }

    @Override // com.google.android.gms.internal.ads.zzks, com.google.android.gms.internal.ads.zzlo
    public final zzso zzgj() {
        return this;
    }

    private zzms(zzpg zzpgVar, zznj<Object> zznjVar, boolean z) {
        this(zzpgVar, null, true, null, null);
    }

    private zzms(zzpg zzpgVar, zznj<Object> zznjVar, boolean z, Handler handler, zzlz zzlzVar) {
        this(zzpgVar, null, true, null, null, null, new zzlx[0]);
    }

    private zzms(zzpg zzpgVar, zznj<Object> zznjVar, boolean z, Handler handler, zzlz zzlzVar, zzlw zzlwVar, zzlx... zzlxVarArr) {
        super(1, zzpgVar, zznjVar, z);
        this.zzaxr = new zzmh(null, zzlxVarArr, new zzmu(this));
        this.zzaxq = new zzma(null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final int zza(zzpg zzpgVar, zzlh zzlhVar) throws zzpk {
        int i;
        int i2;
        String str = zzlhVar.zzatq;
        if (!zzsp.zzav(str)) {
            return 0;
        }
        int i3 = zzsy.SDK_INT >= 21 ? 16 : 0;
        if (zzbb(str) && zzpgVar.zziv() != null) {
            return i3 | 4 | 3;
        }
        zzpd zzpdVarZze = zzpgVar.zze(str, false);
        boolean z = true;
        if (zzpdVarZze == null) {
            return 1;
        }
        if (zzsy.SDK_INT >= 21 && (((i = zzlhVar.zzafv) != -1 && !zzpdVarZze.zzba(i)) || ((i2 = zzlhVar.zzafu) != -1 && !zzpdVarZze.zzbb(i2)))) {
            z = false;
        }
        return i3 | 4 | (z ? 3 : 2);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final zzpd zza(zzpg zzpgVar, zzlh zzlhVar, boolean z) throws zzpk {
        zzpd zzpdVarZziv;
        if (zzbb(zzlhVar.zzatq) && (zzpdVarZziv = zzpgVar.zziv()) != null) {
            this.zzaxs = true;
            return zzpdVarZziv;
        }
        this.zzaxs = false;
        return super.zza(zzpgVar, zzlhVar, z);
    }

    private final boolean zzbb(String str) {
        return this.zzaxr.zzaz(str);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zza(zzpd zzpdVar, MediaCodec mediaCodec, zzlh zzlhVar, MediaCrypto mediaCrypto) {
        this.zzaxt = zzsy.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(zzpdVar.name) && "samsung".equals(zzsy.MANUFACTURER) && (zzsy.DEVICE.startsWith("zeroflte") || zzsy.DEVICE.startsWith("herolte") || zzsy.DEVICE.startsWith("heroqlte"));
        if (this.zzaxs) {
            this.zzaxu = zzlhVar.zzen();
            this.zzaxu.setString(IMediaFormat.KEY_MIME, MimeTypes.AUDIO_RAW);
            mediaCodec.configure(this.zzaxu, (Surface) null, (MediaCrypto) null, 0);
            this.zzaxu.setString(IMediaFormat.KEY_MIME, zzlhVar.zzatq);
            return;
        }
        mediaCodec.configure(zzlhVar.zzen(), (Surface) null, (MediaCrypto) null, 0);
        this.zzaxu = null;
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzd(String str, long j, long j2) {
        this.zzaxq.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzd(zzlh zzlhVar) throws zzku {
        super.zzd(zzlhVar);
        this.zzaxq.zzc(zzlhVar);
        this.zzatx = MimeTypes.AUDIO_RAW.equals(zzlhVar.zzatq) ? zzlhVar.zzatx : 2;
        this.zzafu = zzlhVar.zzafu;
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws IllegalStateException, zzku {
        int[] iArr;
        int i;
        boolean z = this.zzaxu != null;
        String string = z ? this.zzaxu.getString(IMediaFormat.KEY_MIME) : MimeTypes.AUDIO_RAW;
        if (z) {
            mediaFormat = this.zzaxu;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.zzaxt && integer == 6 && (i = this.zzafu) < 6) {
            iArr = new int[i];
            for (int i2 = 0; i2 < this.zzafu; i2++) {
                iArr[i2] = i2;
            }
        } else {
            iArr = null;
        }
        try {
            this.zzaxr.zza(string, integer, integer2, this.zzatx, 0, iArr);
        } catch (zzml e) {
            throw zzku.zza(e, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzg(boolean z) throws IllegalStateException, zzku {
        super.zzg(z);
        this.zzaxq.zzc(this.zzbhl);
        int i = zzgq().zzaul;
        if (i != 0) {
            this.zzaxr.zzai(i);
        } else {
            this.zzaxr.zzhr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzd(long j, boolean z) throws IllegalStateException, zzku {
        super.zzd(j, z);
        this.zzaxr.reset();
        this.zzadb = j;
        this.zzaxv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void onStarted() throws IllegalStateException {
        super.onStarted();
        this.zzaxr.play();
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void onStopped() {
        this.zzaxr.pause();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzdz() {
        try {
            this.zzaxr.release();
            try {
                super.zzdz();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzdz();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzlo
    public final boolean zzdx() {
        return super.zzdx() && this.zzaxr.zzdx();
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzlo
    public final boolean isReady() {
        return this.zzaxr.zzer() || super.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final long zzdv() {
        long jZzf = this.zzaxr.zzf(zzdx());
        if (jZzf != Long.MIN_VALUE) {
            if (!this.zzaxv) {
                jZzf = Math.max(this.zzadb, jZzf);
            }
            this.zzadb = jZzf;
            this.zzaxv = false;
        }
        return this.zzadb;
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final zzln zzb(zzln zzlnVar) {
        return this.zzaxr.zzb(zzlnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final zzln zzhq() {
        return this.zzaxr.zzhq();
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzku {
        if (this.zzaxs && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzbhl.zzabl++;
            this.zzaxr.zzeq();
            return true;
        }
        try {
            if (!this.zzaxr.zza(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzbhl.zzabk++;
            return true;
        } catch (zzmm | zzmp e) {
            throw zzku.zza(e, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzhw() throws zzku {
        try {
            this.zzaxr.zzho();
        } catch (zzmp e) {
            throw zzku.zza(e, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks, com.google.android.gms.internal.ads.zzkx
    public final void zza(int i, Object obj) throws IllegalStateException, zzku {
        if (i == 2) {
            this.zzaxr.setVolume(((Float) obj).floatValue());
        } else if (i == 3) {
            this.zzaxr.setStreamType(((Integer) obj).intValue());
        } else {
            super.zza(i, obj);
        }
    }

    static /* synthetic */ boolean zza(zzms zzmsVar, boolean z) {
        zzmsVar.zzaxv = true;
        return true;
    }
}
