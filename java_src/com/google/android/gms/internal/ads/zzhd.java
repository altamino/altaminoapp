package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzhd extends zzgr {
    private final zzhi zzaeu;
    private final zzhh zzaev;
    private final long zzaew;
    private final int zzaex;
    private final int zzaey;
    private Surface zzaez;
    private boolean zzafa;
    private boolean zzafb;
    private long zzafc;
    private long zzafd;
    private int zzafe;
    private int zzaff;
    private int zzafg;
    private float zzafh;
    private int zzafi;
    private int zzafj;
    private float zzafk;

    public zzhd(zzhn zzhnVar, int i, long j, Handler handler, zzhh zzhhVar, int i2) {
        this(zzhnVar, null, true, 1, 0L, null, handler, zzhhVar, -1);
    }

    private zzhd(zzhn zzhnVar, zzhz zzhzVar, boolean z, int i, long j, zzhi zzhiVar, Handler handler, zzhh zzhhVar, int i2) {
        super(zzhnVar, null, true, handler, zzhhVar);
        this.zzaex = 1;
        this.zzaew = 0L;
        this.zzaeu = null;
        this.zzaev = zzhhVar;
        this.zzaey = -1;
        this.zzafc = -1L;
        this.zzaff = -1;
        this.zzafg = -1;
        this.zzafh = -1.0f;
        this.zzafi = -1;
        this.zzafj = -1;
        this.zzafk = -1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zzas(String str) {
        return zzkl.zzau(str).equals("video") && super.zzas(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void zzb(long j, boolean z) {
        super.zzb(j, z);
        this.zzafb = false;
        if (!z || this.zzaew <= 0) {
            return;
        }
        this.zzafc = (SystemClock.elapsedRealtime() * 1000) + this.zzaew;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void seekTo(long j) throws zzgd {
        super.seekTo(j);
        this.zzafb = false;
        this.zzafc = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final boolean isReady() {
        if (super.isReady() && (this.zzafb || !zzec() || zzeg() == 2)) {
            this.zzafc = -1L;
            return true;
        }
        if (this.zzafc == -1) {
            return false;
        }
        if (SystemClock.elapsedRealtime() * 1000 < this.zzafc) {
            return true;
        }
        this.zzafc = -1L;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void onStarted() {
        super.onStarted();
        this.zzafe = 0;
        this.zzafd = SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void onStopped() {
        this.zzafc = -1L;
        zzel();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    public final void zzdz() {
        this.zzaff = -1;
        this.zzafg = -1;
        this.zzafh = -1.0f;
        this.zzafi = -1;
        this.zzafj = -1;
        this.zzafk = -1.0f;
        super.zzdz();
    }

    @Override // com.google.android.gms.internal.ads.zzhp, com.google.android.gms.internal.ads.zzgf
    public final void zza(int i, Object obj) throws zzgd, IOException {
        if (i == 1) {
            Surface surface = (Surface) obj;
            if (this.zzaez != surface) {
                this.zzaez = surface;
                this.zzafa = false;
                int state = getState();
                if (state == 2 || state == 3) {
                    zzed();
                    zzea();
                    return;
                }
                return;
            }
            return;
        }
        super.zza(i, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zzeb() {
        Surface surface;
        return super.zzeb() && (surface = this.zzaez) != null && surface.isValid();
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zza(MediaCodec mediaCodec, String str, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        mediaCodec.configure(mediaFormat, this.zzaez, mediaCrypto, 0);
        mediaCodec.setVideoScalingMode(this.zzaex);
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zza(zzhk zzhkVar) throws zzgd, IOException {
        super.zza(zzhkVar);
        float f = zzhkVar.zzado.zzaft;
        if (f == -1.0f) {
            f = 1.0f;
        }
        this.zzafh = f;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zza(zzhj zzhjVar, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.zzaff = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.zzafg = integer2;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zza(MediaCodec mediaCodec, boolean z, zzhj zzhjVar, zzhj zzhjVar2) {
        if (!zzhjVar2.mimeType.equals(zzhjVar.mimeType)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzhjVar.width == zzhjVar2.width && zzhjVar.height == zzhjVar2.height;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws InterruptedException {
        if (z) {
            zzkp.beginSection("skipVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzkp.endSection();
            this.zzadf.zzabl++;
            return true;
        }
        long jElapsedRealtime = (bufferInfo.presentationTimeUs - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
        long jNanoTime = System.nanoTime() + (jElapsedRealtime * 1000);
        if (jElapsedRealtime < -30000) {
            zzkp.beginSection("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzkp.endSection();
            this.zzadf.zzabm++;
            this.zzafe++;
            if (this.zzafe == this.zzaey) {
                zzel();
            }
            return true;
        }
        if (!this.zzafb) {
            zza(mediaCodec, i);
            return true;
        }
        if (getState() != 3) {
            return false;
        }
        if (zzkq.SDK_INT >= 21) {
            if (jElapsedRealtime < 50000) {
                zzej();
                zzkp.beginSection("releaseOutputBufferTimed");
                mediaCodec.releaseOutputBuffer(i, jNanoTime);
                zzkp.endSection();
                this.zzadf.zzabk++;
                this.zzafb = true;
                zzek();
                return true;
            }
        } else if (jElapsedRealtime < 30000) {
            if (jElapsedRealtime > 11000) {
                try {
                    Thread.sleep((jElapsedRealtime - 10000) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            zza(mediaCodec, i);
            return true;
        }
        return false;
    }

    private final void zza(MediaCodec mediaCodec, int i) {
        zzej();
        zzkp.beginSection("renderVideoBufferImmediate");
        mediaCodec.releaseOutputBuffer(i, true);
        zzkp.endSection();
        this.zzadf.zzabk++;
        this.zzafb = true;
        zzek();
    }

    private final void zzej() {
        if (this.zzabq == null || this.zzaev == null) {
            return;
        }
        if (this.zzafi == this.zzaff && this.zzafj == this.zzafg && this.zzafk == this.zzafh) {
            return;
        }
        int i = this.zzaff;
        int i2 = this.zzafg;
        float f = this.zzafh;
        this.zzabq.post(new zzhe(this, i, i2, f));
        this.zzafi = i;
        this.zzafj = i2;
        this.zzafk = f;
    }

    private final void zzek() {
        Handler handler = this.zzabq;
        if (handler == null || this.zzaev == null || this.zzafa) {
            return;
        }
        handler.post(new zzhf(this, this.zzaez));
        this.zzafa = true;
    }

    private final void zzel() {
        if (this.zzabq == null || this.zzaev == null || this.zzafe == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.zzabq.post(new zzhg(this, this.zzafe, jElapsedRealtime - this.zzafd));
        this.zzafe = 0;
        this.zzafd = jElapsedRealtime;
    }
}
