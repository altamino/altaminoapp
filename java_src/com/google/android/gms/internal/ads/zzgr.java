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
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
/* loaded from: classes2.dex */
public abstract class zzgr extends zzhp {
    protected final Handler zzabq;
    private long zzadb;
    public final zzga zzadf;
    private final zzhz zzadg;
    private final boolean zzadh;
    private final zzhn zzadi;
    private final zzhm zzadj;
    private final zzhk zzadk;
    private final List<Long> zzadl;
    private final MediaCodec.BufferInfo zzadm;
    private final zzgw zzadn;
    private zzhj zzado;
    private zzhw zzadp;
    private MediaCodec zzadq;
    private boolean zzadr;
    private ByteBuffer[] zzads;
    private ByteBuffer[] zzadt;
    private long zzadu;
    private int zzadv;
    private int zzadw;
    private boolean zzadx;
    private boolean zzady;
    private int zzadz;
    private int zzaea;
    private boolean zzaeb;
    private int zzaec;
    private int zzaed;
    private boolean zzaee;
    private boolean zzaef;
    private boolean zzaeg;
    private boolean zzaeh;

    public zzgr(zzhn zzhnVar, zzhz zzhzVar, boolean z, Handler handler, zzgw zzgwVar) {
        zzkh.checkState(zzkq.SDK_INT >= 16);
        this.zzadi = zzhnVar;
        this.zzadg = null;
        this.zzadh = true;
        this.zzabq = handler;
        this.zzadn = zzgwVar;
        this.zzadf = new zzga();
        this.zzadj = new zzhm(0);
        this.zzadk = new zzhk();
        this.zzadl = new ArrayList();
        this.zzadm = new MediaCodec.BufferInfo();
        this.zzadz = 0;
        this.zzaea = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected void onStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected void onStopped() {
    }

    protected void zza(zzhj zzhjVar, MediaFormat mediaFormat) {
    }

    protected abstract boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws zzgd;

    protected boolean zza(MediaCodec mediaCodec, boolean z, zzhj zzhjVar, zzhj zzhjVar2) {
        return false;
    }

    protected boolean zzas(String str) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final int zzdl(long j) throws zzgd {
        try {
            if (!this.zzadi.zzdg(j)) {
                return 0;
            }
            for (int i = 0; i < this.zzadi.getTrackCount(); i++) {
                if (zzas(this.zzadi.zzo(i).mimeType)) {
                    this.zzaec = i;
                    return 1;
                }
            }
            return -1;
        } catch (IOException e) {
            throw new zzgd(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected void zzb(long j, boolean z) {
        this.zzadi.zza(this.zzaec, j);
        this.zzaed = 0;
        this.zzaee = false;
        this.zzaef = false;
        this.zzaeg = false;
        this.zzadb = j;
    }

    protected zzgc zzc(String str, boolean z) throws zzgz {
        return zzgx.zzc(str, z);
    }

    protected void zza(MediaCodec mediaCodec, String str, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
    }

    protected final void zzea() throws zzgd, IOException {
        MediaCrypto mediaCryptoZzfa;
        zzgc zzgcVarZzc;
        if (zzeb()) {
            String str = this.zzado.mimeType;
            boolean zRequiresSecureDecoderComponent = false;
            zzhw zzhwVar = this.zzadp;
            if (zzhwVar != null) {
                zzhz zzhzVar = this.zzadg;
                if (zzhzVar == null) {
                    throw new zzgd("Media requires a DrmSessionManager");
                }
                if (!this.zzadx) {
                    zzhzVar.zza(zzhwVar);
                    this.zzadx = true;
                }
                int state = this.zzadg.getState();
                if (state == 0) {
                    throw new zzgd(this.zzadg.zzfb());
                }
                if (state != 3 && state != 4) {
                    return;
                }
                mediaCryptoZzfa = this.zzadg.zzfa();
                zRequiresSecureDecoderComponent = this.zzadg.requiresSecureDecoderComponent(str);
            } else {
                mediaCryptoZzfa = null;
            }
            try {
                zzgcVarZzc = zzc(str, zRequiresSecureDecoderComponent);
            } catch (zzgz e) {
                zza(new zzgv(this.zzado, e, -49998));
                zzgcVarZzc = null;
            }
            if (zzgcVarZzc == null) {
                zza(new zzgv(this.zzado, (Throwable) null, -49999));
            }
            String str2 = zzgcVarZzc.name;
            this.zzadr = zzgcVarZzc.zzabo;
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.zzadq = MediaCodec.createByCodecName(str2);
                zza(this.zzadq, str2, this.zzado.zzen(), mediaCryptoZzfa);
                this.zzadq.start();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                long j = jElapsedRealtime2 - jElapsedRealtime;
                if (this.zzabq != null && this.zzadn != null) {
                    this.zzabq.post(new zzgu(this, str2, jElapsedRealtime2, j));
                }
                this.zzads = this.zzadq.getInputBuffers();
                this.zzadt = this.zzadq.getOutputBuffers();
            } catch (Exception e2) {
                zza(new zzgv(this.zzado, e2, str2));
            }
            this.zzadu = getState() == 3 ? SystemClock.elapsedRealtime() : -1L;
            this.zzadv = -1;
            this.zzadw = -1;
            this.zzaeh = true;
            this.zzadf.zzabg++;
        }
    }

    private final void zza(zzgv zzgvVar) throws zzgd {
        Handler handler = this.zzabq;
        if (handler != null && this.zzadn != null) {
            handler.post(new zzgs(this, zzgvVar));
        }
        throw new zzgd(zzgvVar);
    }

    protected boolean zzeb() {
        return this.zzadq == null && this.zzado != null;
    }

    protected final boolean zzec() {
        return this.zzadq != null;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected void zzdz() {
        this.zzado = null;
        this.zzadp = null;
        try {
            zzed();
            try {
                if (this.zzadx) {
                    this.zzadg.close();
                    this.zzadx = false;
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                if (this.zzadx) {
                    this.zzadg.close();
                    this.zzadx = false;
                }
                throw th;
            } finally {
            }
        }
    }

    protected final void zzed() {
        if (this.zzadq != null) {
            this.zzadu = -1L;
            this.zzadv = -1;
            this.zzadw = -1;
            this.zzaeg = false;
            this.zzadl.clear();
            this.zzads = null;
            this.zzadt = null;
            this.zzady = false;
            this.zzaeb = false;
            this.zzadr = false;
            this.zzadz = 0;
            this.zzaea = 0;
            this.zzadf.zzabh++;
            try {
                this.zzadq.stop();
                try {
                    this.zzadq.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.zzadq.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final void zzee() {
        this.zzadi.release();
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected long zzdy() {
        return this.zzadb;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final long getDurationUs() {
        return this.zzadi.zzo(this.zzaec).zzack;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final long zzdu() {
        long jZzdu = this.zzadi.zzdu();
        return (jZzdu == -1 || jZzdu == -3) ? jZzdu : Math.max(jZzdu, zzdy());
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected void seekTo(long j) throws zzgd {
        this.zzadb = j;
        this.zzadi.zzdi(j);
        this.zzaed = 0;
        this.zzaee = false;
        this.zzaef = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected final void zza(long j, long j2) throws zzgd {
        int i;
        boolean z;
        int i2;
        try {
            if (this.zzadi.zzdh(j)) {
                i = this.zzaed == 0 ? 1 : this.zzaed;
            } else {
                i = 0;
            }
            this.zzaed = i;
            if (this.zzadq != null && this.zzadi.zza(this.zzaec, this.zzadb, this.zzadk, this.zzadj, true) == -5) {
                zzef();
            }
            if (this.zzado == null && this.zzadi.zza(this.zzaec, this.zzadb, this.zzadk, this.zzadj, false) == -4) {
                zza(this.zzadk);
            }
            if (this.zzadq == null && zzeb()) {
                zzea();
            }
            if (this.zzadq != null) {
                do {
                    if (this.zzaef) {
                        z = false;
                    } else {
                        if (this.zzadw < 0) {
                            this.zzadw = this.zzadq.dequeueOutputBuffer(this.zzadm, 0L);
                        }
                        if (this.zzadw == -2) {
                            zza(this.zzado, this.zzadq.getOutputFormat());
                            this.zzadf.zzabi++;
                        } else if (this.zzadw == -3) {
                            this.zzadt = this.zzadq.getOutputBuffers();
                            this.zzadf.zzabj++;
                        } else {
                            if (this.zzadw >= 0) {
                                if ((this.zzadm.flags & 4) != 0) {
                                    if (this.zzaea == 2) {
                                        zzed();
                                        zzea();
                                    } else {
                                        this.zzaef = true;
                                    }
                                } else {
                                    long j3 = this.zzadm.presentationTimeUs;
                                    int size = this.zzadl.size();
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= size) {
                                            i2 = -1;
                                            break;
                                        } else {
                                            if (this.zzadl.get(i3).longValue() == j3) {
                                                i2 = i3;
                                                break;
                                            }
                                            i3++;
                                        }
                                    }
                                    if (zza(j, j2, this.zzadq, this.zzadt[this.zzadw], this.zzadm, this.zzadw, i2 != -1)) {
                                        if (i2 != -1) {
                                            this.zzadl.remove(i2);
                                        } else {
                                            this.zzadb = this.zzadm.presentationTimeUs;
                                        }
                                        this.zzadw = -1;
                                    }
                                }
                            }
                            z = false;
                        }
                        z = true;
                    }
                } while (z);
                if (zze(true)) {
                    while (zze(false)) {
                    }
                }
            }
            this.zzadf.zzdk();
        } catch (IOException e) {
            throw new zzgd(e);
        }
    }

    private final void zzef() throws zzgd, IOException {
        this.zzadu = -1L;
        this.zzadv = -1;
        this.zzadw = -1;
        this.zzaeh = true;
        this.zzaeg = false;
        this.zzadl.clear();
        if (zzkq.SDK_INT >= 18 && this.zzaea == 0) {
            this.zzadq.flush();
            this.zzaeb = false;
        } else {
            zzed();
            zzea();
        }
        if (!this.zzady || this.zzado == null) {
            return;
        }
        this.zzadz = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zze(boolean r18) throws com.google.android.gms.internal.ads.zzgd, android.media.MediaCodec.CryptoException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgr.zze(boolean):boolean");
    }

    protected void zza(zzhk zzhkVar) throws zzgd, IOException {
        zzhj zzhjVar = this.zzado;
        this.zzado = zzhkVar.zzado;
        this.zzadp = zzhkVar.zzadp;
        MediaCodec mediaCodec = this.zzadq;
        if (mediaCodec != null && zza(mediaCodec, this.zzadr, zzhjVar, this.zzado)) {
            this.zzady = true;
            this.zzadz = 1;
        } else if (this.zzaeb) {
            this.zzaea = 1;
        } else {
            zzed();
            zzea();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected boolean zzdx() {
        return this.zzaef;
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    protected boolean isReady() {
        if (this.zzado != null && !this.zzaeg) {
            if (this.zzaed == 0 && this.zzadw < 0) {
                if (SystemClock.elapsedRealtime() < this.zzadu + 1000) {
                }
            }
            return true;
        }
        return false;
    }

    protected final int zzeg() {
        return this.zzaed;
    }

    private final void zza(MediaCodec.CryptoException cryptoException) {
        Handler handler = this.zzabq;
        if (handler == null || this.zzadn == null) {
            return;
        }
        handler.post(new zzgt(this, cryptoException));
    }
}
