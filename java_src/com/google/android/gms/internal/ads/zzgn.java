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
public final class zzgn extends zzgr {
    private final zzgq zzacy;
    private final zzhq zzacz;
    private int zzada;
    private long zzadb;

    public zzgn(zzhn zzhnVar, Handler handler, zzgq zzgqVar) {
        this(zzhnVar, null, true, handler, zzgqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final boolean zzdw() {
        return true;
    }

    private zzgn(zzhn zzhnVar, zzhz zzhzVar, boolean z, Handler handler, zzgq zzgqVar) {
        super(zzhnVar, null, true, handler, zzgqVar);
        this.zzacy = zzgqVar;
        this.zzada = 0;
        this.zzacz = new zzhq();
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final zzgc zzc(String str, boolean z) throws zzgz {
        if (zzkl.zzaw(str)) {
            return new zzgc("OMX.google.raw.decoder", true);
        }
        return super.zzc(str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zza(MediaCodec mediaCodec, String str, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        if ("OMX.google.raw.decoder".equals(str)) {
            String string = mediaFormat.getString(IMediaFormat.KEY_MIME);
            mediaFormat.setString(IMediaFormat.KEY_MIME, MimeTypes.AUDIO_RAW);
            mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
            mediaFormat.setString(IMediaFormat.KEY_MIME, string);
            return;
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zzas(String str) {
        return zzkl.zzav(str) && super.zzas(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void zzb(long j, boolean z) {
        super.zzb(j, z);
        this.zzadb = Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zza(zzhj zzhjVar, MediaFormat mediaFormat) throws IllegalStateException {
        if (zzkl.zzaw(zzhjVar.mimeType)) {
            this.zzacz.zza(zzhjVar.zzen(), 0);
        } else {
            this.zzacz.zza(mediaFormat, 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void onStarted() throws IllegalStateException {
        super.onStarted();
        this.zzacz.play();
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void onStopped() throws IllegalStateException {
        this.zzacz.pause();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final boolean zzdx() {
        if (super.zzdx()) {
            return (this.zzacz.zzer() && this.zzacz.zzes()) ? false : true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final boolean isReady() {
        if (this.zzacz.zzer()) {
            return true;
        }
        return super.isReady() && zzeg() == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final long zzdy() {
        long jZzf = this.zzacz.zzf(zzdx());
        if (jZzf == Long.MIN_VALUE) {
            this.zzadb = Math.max(this.zzadb, super.zzdy());
        } else {
            this.zzadb = Math.max(this.zzadb, jZzf);
        }
        return this.zzadb;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void zzdz() {
        this.zzada = 0;
        try {
            this.zzacz.reset();
        } finally {
            super.zzdz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzhp
    protected final void seekTo(long j) throws IllegalStateException, zzgd {
        super.seekTo(j);
        this.zzacz.reset();
        this.zzadb = Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws IllegalStateException, zzgd {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzadf.zzabl++;
            this.zzacz.zzeq();
            return true;
        }
        if (!this.zzacz.isInitialized()) {
            try {
                if (this.zzada != 0) {
                    this.zzacz.zzq(this.zzada);
                } else {
                    this.zzada = this.zzacz.zzq(0);
                }
                if (getState() == 3) {
                    this.zzacz.play();
                }
            } catch (zzhu e) {
                Handler handler = this.zzabq;
                if (handler != null && this.zzacy != null) {
                    handler.post(new zzgo(this, e));
                }
                throw new zzgd(e);
            }
        }
        try {
            int iZza = this.zzacz.zza(byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
            if ((iZza & 1) != 0) {
                this.zzadb = Long.MIN_VALUE;
            }
            if ((iZza & 2) == 0) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzadf.zzabk++;
            return true;
        } catch (zzhv e2) {
            Handler handler2 = this.zzabq;
            if (handler2 != null && this.zzacy != null) {
                handler2.post(new zzgp(this, e2));
            }
            throw new zzgd(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp, com.google.android.gms.internal.ads.zzgf
    public final void zza(int i, Object obj) throws zzgd {
        if (i == 1) {
            this.zzacz.setVolume(((Float) obj).floatValue());
        } else {
            super.zza(i, obj);
        }
    }
}
