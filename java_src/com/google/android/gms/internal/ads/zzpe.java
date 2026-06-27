package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
/* loaded from: classes2.dex */
public abstract class zzpe extends zzks {
    private static final byte[] zzbgp = zzsy.zzbi("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private final boolean zzadh;
    private final List<Long> zzadl;
    private final MediaCodec.BufferInfo zzadm;
    private MediaCodec zzadq;
    private ByteBuffer[] zzads;
    private ByteBuffer[] zzadt;
    private int zzadv;
    private int zzadw;
    private boolean zzady;
    private int zzadz;
    private int zzaea;
    private boolean zzaee;
    private boolean zzaef;
    private boolean zzaeg;
    private boolean zzaeh;
    private zzlh zzaue;
    private final zzpg zzbgq;
    private final zznj<Object> zzbgr;
    private final zznd zzbgs;
    private final zznd zzbgt;
    private final zzlj zzbgu;
    private zznh<Object> zzbgv;
    private zznh<Object> zzbgw;
    private zzpd zzbgx;
    private boolean zzbgy;
    private boolean zzbgz;
    private boolean zzbha;
    private boolean zzbhb;
    private boolean zzbhc;
    private boolean zzbhd;
    private boolean zzbhe;
    private boolean zzbhf;
    private boolean zzbhg;
    private long zzbhh;
    private boolean zzbhi;
    private boolean zzbhj;
    private boolean zzbhk;
    protected zznc zzbhl;

    public zzpe(int i, zzpg zzpgVar, zznj<Object> zznjVar, boolean z) {
        super(i);
        zzsk.checkState(zzsy.SDK_INT >= 16);
        this.zzbgq = (zzpg) zzsk.checkNotNull(zzpgVar);
        this.zzbgr = zznjVar;
        this.zzadh = z;
        this.zzbgs = new zznd(0);
        this.zzbgt = new zznd(0);
        this.zzbgu = new zzlj();
        this.zzadl = new ArrayList();
        this.zzadm = new MediaCodec.BufferInfo();
        this.zzadz = 0;
        this.zzaea = 0;
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzku {
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected void onStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected void onStopped() {
    }

    protected abstract int zza(zzpg zzpgVar, zzlh zzlhVar) throws zzpk;

    protected void zza(zznd zzndVar) {
    }

    protected abstract void zza(zzpd zzpdVar, MediaCodec mediaCodec, zzlh zzlhVar, MediaCrypto mediaCrypto) throws zzpk;

    protected abstract boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzku;

    protected boolean zza(MediaCodec mediaCodec, boolean z, zzlh zzlhVar, zzlh zzlhVar2) {
        return false;
    }

    protected boolean zza(zzpd zzpdVar) {
        return true;
    }

    protected void zzd(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzks, com.google.android.gms.internal.ads.zzlp
    public final int zzgp() {
        return 4;
    }

    protected void zzhw() throws zzku {
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public final int zza(zzlh zzlhVar) throws zzku {
        try {
            return zza(this.zzbgq, zzlhVar);
        } catch (zzpk e) {
            throw zzku.zza(e, getIndex());
        }
    }

    protected zzpd zza(zzpg zzpgVar, zzlh zzlhVar, boolean z) throws zzpk {
        return zzpgVar.zze(zzlhVar.zzatq, z);
    }

    protected final void zzea() throws zzku {
        zzlh zzlhVar;
        if (this.zzadq != null || (zzlhVar = this.zzaue) == null) {
            return;
        }
        this.zzbgv = this.zzbgw;
        String str = zzlhVar.zzatq;
        zznh<Object> zznhVar = this.zzbgv;
        if (zznhVar != null) {
            int state = zznhVar.getState();
            if (state == 0) {
                throw zzku.zza(this.zzbgv.zzif(), getIndex());
            }
            if (state == 3 || state == 4) {
                this.zzbgv.zzie();
                throw new NoSuchMethodError();
            }
            return;
        }
        if (this.zzbgx == null) {
            try {
                this.zzbgx = zza(this.zzbgq, zzlhVar, false);
            } catch (zzpk e) {
                zza(new zzpf(this.zzaue, (Throwable) e, false, -49998));
            }
            if (this.zzbgx == null) {
                zza(new zzpf(this.zzaue, (Throwable) null, false, -49999));
            }
        }
        if (zza(this.zzbgx)) {
            String str2 = this.zzbgx.name;
            this.zzbgy = zzsy.SDK_INT < 21 && this.zzaue.zzafw.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
            int i = zzsy.SDK_INT;
            this.zzbgz = i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (zzsy.SDK_INT == 19 && zzsy.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
            this.zzbha = zzsy.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(zzsy.DEVICE) || "flounder_lte".equals(zzsy.DEVICE) || "grouper".equals(zzsy.DEVICE) || "tilapia".equals(zzsy.DEVICE));
            this.zzbhb = zzsy.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
            this.zzbhc = (zzsy.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (zzsy.SDK_INT <= 19 && "hb2000".equals(zzsy.DEVICE) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
            this.zzbhd = zzsy.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str2);
            this.zzbhe = zzsy.SDK_INT <= 18 && this.zzaue.zzafu == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                String strValueOf = String.valueOf(str2);
                zzsx.beginSection(strValueOf.length() != 0 ? "createCodec:".concat(strValueOf) : new String("createCodec:"));
                this.zzadq = MediaCodec.createByCodecName(str2);
                zzsx.endSection();
                zzsx.beginSection("configureCodec");
                zza(this.zzbgx, this.zzadq, this.zzaue, (MediaCrypto) null);
                zzsx.endSection();
                zzsx.beginSection("startCodec");
                this.zzadq.start();
                zzsx.endSection();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                zzd(str2, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                this.zzads = this.zzadq.getInputBuffers();
                this.zzadt = this.zzadq.getOutputBuffers();
            } catch (Exception e2) {
                zza(new zzpf(this.zzaue, (Throwable) e2, false, str2));
            }
            this.zzbhh = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : C.TIME_UNSET;
            this.zzadv = -1;
            this.zzadw = -1;
            this.zzaeh = true;
            this.zzbhl.zzaza++;
        }
    }

    private final void zza(zzpf zzpfVar) throws zzku {
        throw zzku.zza(zzpfVar, getIndex());
    }

    protected final MediaCodec zzir() {
        return this.zzadq;
    }

    protected final zzpd zzis() {
        return this.zzbgx;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected void zzg(boolean z) throws zzku {
        this.zzbhl = new zznc();
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected void zzd(long j, boolean z) throws zzku {
        this.zzaee = false;
        this.zzaef = false;
        if (this.zzadq != null) {
            this.zzbhh = C.TIME_UNSET;
            this.zzadv = -1;
            this.zzadw = -1;
            this.zzaeh = true;
            this.zzaeg = false;
            this.zzbhi = false;
            this.zzadl.clear();
            this.zzbhf = false;
            this.zzbhg = false;
            if (this.zzbgz || ((this.zzbhc && this.zzbhk) || this.zzaea != 0)) {
                zzed();
                zzea();
            } else {
                this.zzadq.flush();
                this.zzbhj = false;
            }
            if (!this.zzady || this.zzaue == null) {
                return;
            }
            this.zzadz = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected void zzdz() {
        this.zzaue = null;
        try {
            zzed();
            try {
                if (this.zzbgv != null) {
                    this.zzbgr.zza(this.zzbgv);
                }
                try {
                    if (this.zzbgw != null && this.zzbgw != this.zzbgv) {
                        this.zzbgr.zza(this.zzbgw);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.zzbgw != null && this.zzbgw != this.zzbgv) {
                        this.zzbgr.zza(this.zzbgw);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.zzbgv != null) {
                    this.zzbgr.zza(this.zzbgv);
                }
                try {
                    if (this.zzbgw != null && this.zzbgw != this.zzbgv) {
                        this.zzbgr.zza(this.zzbgw);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.zzbgw != null && this.zzbgw != this.zzbgv) {
                        this.zzbgr.zza(this.zzbgw);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    protected void zzed() {
        this.zzbhh = C.TIME_UNSET;
        this.zzadv = -1;
        this.zzadw = -1;
        this.zzaeg = false;
        this.zzbhi = false;
        this.zzadl.clear();
        this.zzads = null;
        this.zzadt = null;
        this.zzbgx = null;
        this.zzady = false;
        this.zzbhj = false;
        this.zzbgy = false;
        this.zzbgz = false;
        this.zzbha = false;
        this.zzbhb = false;
        this.zzbhc = false;
        this.zzbhe = false;
        this.zzbhf = false;
        this.zzbhg = false;
        this.zzbhk = false;
        this.zzadz = 0;
        this.zzaea = 0;
        this.zzbgs.zzde = null;
        MediaCodec mediaCodec = this.zzadq;
        if (mediaCodec != null) {
            this.zzbhl.zzazb++;
            try {
                mediaCodec.stop();
                try {
                    this.zzadq.release();
                    this.zzadq = null;
                    zznh<Object> zznhVar = this.zzbgv;
                    if (zznhVar == null || this.zzbgw == zznhVar) {
                        return;
                    }
                    try {
                        this.zzbgr.zza(zznhVar);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.zzadq = null;
                    zznh<Object> zznhVar2 = this.zzbgv;
                    if (zznhVar2 != null && this.zzbgw != zznhVar2) {
                        try {
                            this.zzbgr.zza(zznhVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.zzadq.release();
                    this.zzadq = null;
                    zznh<Object> zznhVar3 = this.zzbgv;
                    if (zznhVar3 != null && this.zzbgw != zznhVar3) {
                        try {
                            this.zzbgr.zza(zznhVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.zzadq = null;
                    zznh<Object> zznhVar4 = this.zzbgv;
                    if (zznhVar4 != null && this.zzbgw != zznhVar4) {
                        try {
                            this.zzbgr.zza(zznhVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zzc(long j, long j2) throws zzku {
        if (this.zzaef) {
            zzhw();
            return;
        }
        if (this.zzaue == null) {
            this.zzbgt.clear();
            int iZza = zza(this.zzbgu, this.zzbgt, true);
            if (iZza != -5) {
                if (iZza == -4) {
                    zzsk.checkState(this.zzbgt.zzic());
                    this.zzaee = true;
                    zziu();
                    return;
                }
                return;
            }
            zzd(this.zzbgu.zzaue);
        }
        zzea();
        if (this.zzadq != null) {
            zzsx.beginSection("drainAndFeed");
            while (zze(j, j2)) {
            }
            while (zzit()) {
            }
            zzsx.endSection();
        } else {
            zzdy(j);
            this.zzbgt.clear();
            int iZza2 = zza(this.zzbgu, this.zzbgt, false);
            if (iZza2 == -5) {
                zzd(this.zzbgu.zzaue);
            } else if (iZza2 == -4) {
                zzsk.checkState(this.zzbgt.zzic());
                this.zzaee = true;
                zziu();
            }
        }
        this.zzbhl.zzdk();
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzit() throws android.media.MediaCodec.CryptoException, com.google.android.gms.internal.ads.zzku {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.zzit():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void zzd(com.google.android.gms.internal.ads.zzlh r5) throws com.google.android.gms.internal.ads.zzku {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzlh r0 = r4.zzaue
            r4.zzaue = r5
            com.google.android.gms.internal.ads.zzlh r5 = r4.zzaue
            com.google.android.gms.internal.ads.zzne r5 = r5.zzatr
            r1 = 0
            if (r0 != 0) goto Ld
            r2 = r1
            goto Lf
        Ld:
            com.google.android.gms.internal.ads.zzne r2 = r0.zzatr
        Lf:
            boolean r5 = com.google.android.gms.internal.ads.zzsy.zza(r5, r2)
            r2 = 1
            r5 = r5 ^ r2
            if (r5 == 0) goto L4d
            com.google.android.gms.internal.ads.zzlh r5 = r4.zzaue
            com.google.android.gms.internal.ads.zzne r5 = r5.zzatr
            if (r5 == 0) goto L4b
            com.google.android.gms.internal.ads.zznj<java.lang.Object> r5 = r4.zzbgr
            if (r5 == 0) goto L3b
            android.os.Looper r1 = android.os.Looper.myLooper()
            com.google.android.gms.internal.ads.zzlh r3 = r4.zzaue
            com.google.android.gms.internal.ads.zzne r3 = r3.zzatr
            com.google.android.gms.internal.ads.zznh r5 = r5.zza(r1, r3)
            r4.zzbgw = r5
            com.google.android.gms.internal.ads.zznh<java.lang.Object> r5 = r4.zzbgw
            com.google.android.gms.internal.ads.zznh<java.lang.Object> r1 = r4.zzbgv
            if (r5 != r1) goto L4d
            com.google.android.gms.internal.ads.zznj<java.lang.Object> r1 = r4.zzbgr
            r1.zza(r5)
            goto L4d
        L3b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            int r0 = r4.getIndex()
            com.google.android.gms.internal.ads.zzku r5 = com.google.android.gms.internal.ads.zzku.zza(r5, r0)
            throw r5
        L4b:
            r4.zzbgw = r1
        L4d:
            com.google.android.gms.internal.ads.zznh<java.lang.Object> r5 = r4.zzbgw
            com.google.android.gms.internal.ads.zznh<java.lang.Object> r1 = r4.zzbgv
            if (r5 != r1) goto L7e
            android.media.MediaCodec r5 = r4.zzadq
            if (r5 == 0) goto L7e
            com.google.android.gms.internal.ads.zzpd r1 = r4.zzbgx
            boolean r1 = r1.zzabo
            com.google.android.gms.internal.ads.zzlh r3 = r4.zzaue
            boolean r5 = r4.zza(r5, r1, r0, r3)
            if (r5 == 0) goto L7e
            r4.zzady = r2
            r4.zzadz = r2
            boolean r5 = r4.zzbha
            if (r5 == 0) goto L7a
            com.google.android.gms.internal.ads.zzlh r5 = r4.zzaue
            int r1 = r5.width
            int r3 = r0.width
            if (r1 != r3) goto L7a
            int r5 = r5.height
            int r0 = r0.height
            if (r5 != r0) goto L7a
            goto L7b
        L7a:
            r2 = 0
        L7b:
            r4.zzbhf = r2
            return
        L7e:
            boolean r5 = r4.zzbhj
            if (r5 == 0) goto L85
            r4.zzaea = r2
            return
        L85:
            r4.zzed()
            r4.zzea()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.zzd(com.google.android.gms.internal.ads.zzlh):void");
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public boolean zzdx() {
        return this.zzaef;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public boolean isReady() {
        if (this.zzaue == null || this.zzaeg) {
            return false;
        }
        if (zzgr() || this.zzadw >= 0) {
            return true;
        }
        return this.zzbhh != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.zzbhh;
    }

    private final boolean zze(long j, long j2) throws zzku {
        boolean zZza;
        boolean z;
        if (this.zzadw < 0) {
            if (this.zzbhd && this.zzbhk) {
                try {
                    this.zzadw = this.zzadq.dequeueOutputBuffer(this.zzadm, 0L);
                } catch (IllegalStateException unused) {
                    zziu();
                    if (this.zzaef) {
                        zzed();
                    }
                    return false;
                }
            } else {
                this.zzadw = this.zzadq.dequeueOutputBuffer(this.zzadm, 0L);
            }
            int i = this.zzadw;
            if (i < 0) {
                if (i != -2) {
                    if (i == -3) {
                        this.zzadt = this.zzadq.getOutputBuffers();
                        return true;
                    }
                    if (this.zzbhb && (this.zzaee || this.zzaea == 2)) {
                        zziu();
                    }
                    return false;
                }
                MediaFormat outputFormat = this.zzadq.getOutputFormat();
                if (this.zzbha && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.zzbhg = true;
                } else {
                    if (this.zzbhe) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    onOutputFormatChanged(this.zzadq, outputFormat);
                }
                return true;
            }
            if (this.zzbhg) {
                this.zzbhg = false;
                this.zzadq.releaseOutputBuffer(i, false);
                this.zzadw = -1;
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.zzadm;
            if ((bufferInfo.flags & 4) != 0) {
                zziu();
                this.zzadw = -1;
                return false;
            }
            ByteBuffer byteBuffer = this.zzadt[i];
            if (byteBuffer != null) {
                byteBuffer.position(bufferInfo.offset);
                MediaCodec.BufferInfo bufferInfo2 = this.zzadm;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            long j3 = this.zzadm.presentationTimeUs;
            int size = this.zzadl.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z = false;
                    break;
                }
                if (this.zzadl.get(i2).longValue() == j3) {
                    this.zzadl.remove(i2);
                    z = true;
                    break;
                }
                i2++;
            }
            this.zzbhi = z;
        }
        if (this.zzbhd && this.zzbhk) {
            try {
                zZza = zza(j, j2, this.zzadq, this.zzadt[this.zzadw], this.zzadw, this.zzadm.flags, this.zzadm.presentationTimeUs, this.zzbhi);
            } catch (IllegalStateException unused2) {
                zziu();
                if (this.zzaef) {
                    zzed();
                }
                return false;
            }
        } else {
            MediaCodec mediaCodec = this.zzadq;
            ByteBuffer[] byteBufferArr = this.zzadt;
            int i3 = this.zzadw;
            ByteBuffer byteBuffer2 = byteBufferArr[i3];
            MediaCodec.BufferInfo bufferInfo3 = this.zzadm;
            zZza = zza(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.zzbhi);
        }
        if (!zZza) {
            return false;
        }
        long j4 = this.zzadm.presentationTimeUs;
        this.zzadw = -1;
        return true;
    }

    private final void zziu() throws zzku {
        if (this.zzaea == 2) {
            zzed();
            zzea();
        } else {
            this.zzaef = true;
            zzhw();
        }
    }
}
