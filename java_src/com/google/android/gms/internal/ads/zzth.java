package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import com.tonyodev.fetch.FetchService;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzth extends zzpe {
    private static final int[] zzbod = {1920, 1600, 1440, 1280, 960, 854, 640, 540, FetchService.QUERY_SINGLE};
    private Surface zzaez;
    private boolean zzafb;
    private long zzafd;
    private int zzaff;
    private int zzafg;
    private float zzafh;
    private int zzaul;
    private boolean zzawy;
    private final zztl zzboe;
    private final zzto zzbof;
    private final long zzbog;
    private final int zzboh;
    private final boolean zzboi;
    private final long[] zzboj;
    private zzlh[] zzbok;
    private zztj zzbol;
    private Surface zzbom;
    private int zzbon;
    private long zzboo;
    private int zzbop;
    private int zzboq;
    private int zzbor;
    private float zzbos;
    private int zzbot;
    private int zzbou;
    private int zzbov;
    private int zzbow;
    private float zzbox;
    zztk zzboy;
    private long zzboz;
    private int zzbpa;
    private final Context zzlj;

    public zzth(Context context, zzpg zzpgVar, long j, Handler handler, zztn zztnVar, int i) {
        this(context, zzpgVar, 0L, null, false, handler, zztnVar, -1);
    }

    private static boolean zzer(long j) {
        return j < -30000;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzth(Context context, zzpg zzpgVar, long j, zznj<Object> zznjVar, boolean z, Handler handler, zztn zztnVar, int i) {
        super(2, zzpgVar, null, false);
        boolean z2 = false;
        this.zzbog = 0L;
        this.zzboh = -1;
        this.zzlj = context.getApplicationContext();
        this.zzboe = new zztl(context);
        this.zzbof = new zzto(handler, zztnVar);
        if (zzsy.SDK_INT <= 22 && "foster".equals(zzsy.DEVICE) && "NVIDIA".equals(zzsy.MANUFACTURER)) {
            z2 = true;
        }
        this.zzboi = z2;
        this.zzboj = new long[10];
        this.zzboz = C.TIME_UNSET;
        this.zzboo = C.TIME_UNSET;
        this.zzaff = -1;
        this.zzafg = -1;
        this.zzafh = -1.0f;
        this.zzbos = -1.0f;
        this.zzbon = 1;
        zzkk();
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final int zza(zzpg zzpgVar, zzlh zzlhVar) throws zzpk {
        boolean z;
        int i;
        int i2;
        String str = zzlhVar.zzatq;
        if (!zzsp.zzbf(str)) {
            return 0;
        }
        zzne zzneVar = zzlhVar.zzatr;
        if (zzneVar != null) {
            z = false;
            for (int i3 = 0; i3 < zzneVar.zzazg; i3++) {
                z |= zzneVar.zzap(i3).zzazh;
            }
        } else {
            z = false;
        }
        zzpd zzpdVarZze = zzpgVar.zze(str, z);
        if (zzpdVarZze == null) {
            return 1;
        }
        boolean zZzat = zzpdVarZze.zzat(zzlhVar.zzatn);
        if (zZzat && (i = zzlhVar.width) > 0 && (i2 = zzlhVar.height) > 0) {
            if (zzsy.SDK_INT >= 21) {
                zZzat = zzpdVarZze.zza(i, i2, zzlhVar.zzats);
            } else {
                zZzat = i * i2 <= zzpi.zziw();
                if (!zZzat) {
                    int i4 = zzlhVar.width;
                    int i5 = zzlhVar.height;
                    String str2 = zzsy.zzbnq;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                    sb.append("FalseCheck [legacyFrameSize, ");
                    sb.append(i4);
                    sb.append("x");
                    sb.append(i5);
                    sb.append("] [");
                    sb.append(str2);
                    sb.append("]");
                    Log.d("MediaCodecVideoRenderer", sb.toString());
                }
            }
        }
        return (zZzat ? 3 : 2) | (zzpdVarZze.zzabo ? 8 : 4) | (zzpdVarZze.zzawy ? 16 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzg(boolean z) throws zzku {
        super.zzg(z);
        this.zzaul = zzgq().zzaul;
        this.zzawy = this.zzaul != 0;
        this.zzbof.zzc(this.zzbhl);
        this.zzboe.enable();
    }

    @Override // com.google.android.gms.internal.ads.zzks
    protected final void zza(zzlh[] zzlhVarArr, long j) throws zzku {
        this.zzbok = zzlhVarArr;
        if (this.zzboz == C.TIME_UNSET) {
            this.zzboz = j;
        } else {
            int i = this.zzbpa;
            long[] jArr = this.zzboj;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.zzbpa = i + 1;
            }
            this.zzboj[this.zzbpa - 1] = j;
        }
        super.zza(zzlhVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzd(long j, boolean z) throws zzku {
        super.zzd(j, z);
        zzki();
        this.zzboq = 0;
        int i = this.zzbpa;
        if (i != 0) {
            this.zzboz = this.zzboj[i - 1];
            this.zzbpa = 0;
        }
        if (z) {
            zzkh();
        } else {
            this.zzboo = C.TIME_UNSET;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzlo
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.zzafb || (((surface = this.zzbom) != null && this.zzaez == surface) || zzir() == null))) {
            this.zzboo = C.TIME_UNSET;
            return true;
        }
        if (this.zzboo == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.zzboo) {
            return true;
        }
        this.zzboo = C.TIME_UNSET;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void onStarted() {
        super.onStarted();
        this.zzbop = 0;
        this.zzafd = SystemClock.elapsedRealtime();
        this.zzboo = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void onStopped() {
        zzkm();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzpe, com.google.android.gms.internal.ads.zzks
    protected final void zzdz() {
        this.zzaff = -1;
        this.zzafg = -1;
        this.zzafh = -1.0f;
        this.zzbos = -1.0f;
        this.zzboz = C.TIME_UNSET;
        this.zzbpa = 0;
        zzkk();
        zzki();
        this.zzboe.disable();
        this.zzboy = null;
        this.zzawy = false;
        try {
            super.zzdz();
        } finally {
            this.zzbhl.zzdk();
            this.zzbof.zzd(this.zzbhl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks, com.google.android.gms.internal.ads.zzkx
    public final void zza(int i, Object obj) throws zzku {
        if (i != 1) {
            if (i == 4) {
                this.zzbon = ((Integer) obj).intValue();
                MediaCodec mediaCodecZzir = zzir();
                if (mediaCodecZzir != null) {
                    mediaCodecZzir.setVideoScalingMode(this.zzbon);
                    return;
                }
                return;
            }
            super.zza(i, obj);
            return;
        }
        Surface surface = (Surface) obj;
        if (surface == null) {
            Surface surface2 = this.zzbom;
            if (surface2 != null) {
                surface = surface2;
            } else {
                zzpd zzpdVarZzis = zzis();
                if (zzpdVarZzis != null && zzn(zzpdVarZzis.zzaer)) {
                    this.zzbom = zztd.zzc(this.zzlj, zzpdVarZzis.zzaer);
                    surface = this.zzbom;
                }
            }
        }
        if (this.zzaez != surface) {
            this.zzaez = surface;
            int state = getState();
            if (state == 1 || state == 2) {
                MediaCodec mediaCodecZzir2 = zzir();
                if (zzsy.SDK_INT >= 23 && mediaCodecZzir2 != null && surface != null) {
                    mediaCodecZzir2.setOutputSurface(surface);
                } else {
                    zzed();
                    zzea();
                }
            }
            if (surface != null && surface != this.zzbom) {
                zzkl();
                zzki();
                if (state == 2) {
                    zzkh();
                    return;
                }
                return;
            }
            zzkk();
            zzki();
            return;
        }
        if (surface == null || surface == this.zzbom) {
            return;
        }
        zzkl();
        if (this.zzafb) {
            this.zzbof.zzc(this.zzaez);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final boolean zza(zzpd zzpdVar) {
        return this.zzaez != null || zzn(zzpdVar.zzaer);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zza(zzpd zzpdVar, MediaCodec mediaCodec, zzlh zzlhVar, MediaCrypto mediaCrypto) throws zzpk {
        zztj zztjVar;
        int i;
        Point point;
        float f;
        zzlh[] zzlhVarArr = this.zzbok;
        int i2 = zzlhVar.width;
        int i3 = zzlhVar.height;
        int iZzi = zzi(zzlhVar);
        if (zzlhVarArr.length == 1) {
            zztjVar = new zztj(i2, i3, iZzi);
        } else {
            int iMax = i3;
            int iMax2 = iZzi;
            boolean z = false;
            int iMax3 = i2;
            for (zzlh zzlhVar2 : zzlhVarArr) {
                if (zza(zzpdVar.zzabo, zzlhVar, zzlhVar2)) {
                    z |= zzlhVar2.width == -1 || zzlhVar2.height == -1;
                    iMax3 = Math.max(iMax3, zzlhVar2.width);
                    int iMax4 = Math.max(iMax, zzlhVar2.height);
                    iMax2 = Math.max(iMax2, zzi(zzlhVar2));
                    iMax = iMax4;
                }
            }
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(iMax3);
                sb.append("x");
                sb.append(iMax);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z2 = zzlhVar.height > zzlhVar.width;
                int i4 = z2 ? zzlhVar.height : zzlhVar.width;
                int i5 = z2 ? zzlhVar.width : zzlhVar.height;
                float f2 = i5 / i4;
                int[] iArr = zzbod;
                int length = iArr.length;
                int i6 = 0;
                while (i6 < length) {
                    int i7 = length;
                    int i8 = iArr[i6];
                    int[] iArr2 = iArr;
                    int i9 = (int) (i8 * f2);
                    if (i8 <= i4 || i9 <= i5) {
                        break;
                    }
                    int i10 = i4;
                    int i11 = i5;
                    if (zzsy.SDK_INT >= 21) {
                        int i12 = z2 ? i9 : i8;
                        if (z2) {
                            i9 = i8;
                        }
                        Point pointZze = zzpdVar.zze(i12, i9);
                        i = iMax2;
                        f = f2;
                        if (zzpdVar.zza(pointZze.x, pointZze.y, zzlhVar.zzats)) {
                            point = pointZze;
                            break;
                        }
                        i6++;
                        length = i7;
                        iArr = iArr2;
                        i4 = i10;
                        i5 = i11;
                        iMax2 = i;
                        f2 = f;
                    } else {
                        i = iMax2;
                        f = f2;
                        int iZzb = zzsy.zzb(i8, 16) << 4;
                        int iZzb2 = zzsy.zzb(i9, 16) << 4;
                        if (iZzb * iZzb2 <= zzpi.zziw()) {
                            int i13 = z2 ? iZzb2 : iZzb;
                            if (z2) {
                                iZzb2 = iZzb;
                            }
                            point = new Point(i13, iZzb2);
                        } else {
                            i6++;
                            length = i7;
                            iArr = iArr2;
                            i4 = i10;
                            i5 = i11;
                            iMax2 = i;
                            f2 = f;
                        }
                    }
                }
                i = iMax2;
                point = null;
                if (point != null) {
                    iMax3 = Math.max(iMax3, point.x);
                    iMax = Math.max(iMax, point.y);
                    iMax2 = Math.max(i, zza(zzlhVar.zzatq, iMax3, iMax));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(iMax3);
                    sb2.append("x");
                    sb2.append(iMax);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                } else {
                    iMax2 = i;
                }
            }
            zztjVar = new zztj(iMax3, iMax, iMax2);
        }
        this.zzbol = zztjVar;
        zztj zztjVar2 = this.zzbol;
        boolean z3 = this.zzboi;
        int i14 = this.zzaul;
        MediaFormat mediaFormatZzen = zzlhVar.zzen();
        mediaFormatZzen.setInteger("max-width", zztjVar2.width);
        mediaFormatZzen.setInteger("max-height", zztjVar2.height);
        int i15 = zztjVar2.zzbpb;
        if (i15 != -1) {
            mediaFormatZzen.setInteger("max-input-size", i15);
        }
        if (z3) {
            mediaFormatZzen.setInteger("auto-frc", 0);
        }
        if (i14 != 0) {
            mediaFormatZzen.setFeatureEnabled("tunneled-playback", true);
            mediaFormatZzen.setInteger("audio-session-id", i14);
        }
        if (this.zzaez == null) {
            zzsk.checkState(zzn(zzpdVar.zzaer));
            if (this.zzbom == null) {
                this.zzbom = zztd.zzc(this.zzlj, zzpdVar.zzaer);
            }
            this.zzaez = this.zzbom;
        }
        mediaCodec.configure(mediaFormatZzen, this.zzaez, (MediaCrypto) null, 0);
        if (zzsy.SDK_INT < 23 || !this.zzawy) {
            return;
        }
        this.zzboy = new zztk(this, mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzed() {
        try {
            super.zzed();
        } finally {
            Surface surface = this.zzbom;
            if (surface != null) {
                if (this.zzaez == surface) {
                    this.zzaez = null;
                }
                this.zzbom.release();
                this.zzbom = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzd(String str, long j, long j2) {
        this.zzbof.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zzd(zzlh zzlhVar) throws zzku {
        super.zzd(zzlhVar);
        this.zzbof.zzc(zzlhVar);
        float f = zzlhVar.zzaft;
        if (f == -1.0f) {
            f = 1.0f;
        }
        this.zzbos = f;
        this.zzbor = zzj(zzlhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void zza(zznd zzndVar) {
        if (zzsy.SDK_INT >= 23 || !this.zzawy) {
            return;
        }
        zzkj();
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
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
        this.zzafh = this.zzbos;
        if (zzsy.SDK_INT >= 21) {
            int i = this.zzbor;
            if (i == 90 || i == 270) {
                int i2 = this.zzaff;
                this.zzaff = this.zzafg;
                this.zzafg = i2;
                this.zzafh = 1.0f / this.zzafh;
            }
        } else {
            this.zzbot = this.zzbor;
        }
        mediaCodec.setVideoScalingMode(this.zzbon);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final boolean zza(MediaCodec mediaCodec, boolean z, zzlh zzlhVar, zzlh zzlhVar2) {
        if (!zza(z, zzlhVar, zzlhVar2)) {
            return false;
        }
        int i = zzlhVar2.width;
        zztj zztjVar = this.zzbol;
        return i <= zztjVar.width && zzlhVar2.height <= zztjVar.height && zzlhVar2.zzafs <= zztjVar.zzbpb;
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    protected final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws InterruptedException {
        while (true) {
            int i3 = this.zzbpa;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.zzboj;
            if (j3 < jArr[0]) {
                break;
            }
            this.zzboz = jArr[0];
            this.zzbpa = i3 - 1;
            System.arraycopy(jArr, 1, jArr, 0, this.zzbpa);
        }
        long j4 = j3 - this.zzboz;
        if (z) {
            zza(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.zzaez == this.zzbom) {
            if (!zzer(j5)) {
                return false;
            }
            zza(mediaCodec, i, j4);
            return true;
        }
        if (!this.zzafb) {
            if (zzsy.SDK_INT >= 21) {
                zza(mediaCodec, i, j4, System.nanoTime());
            } else {
                zzb(mediaCodec, i, j4);
            }
            return true;
        }
        if (getState() != 2) {
            return false;
        }
        long jElapsedRealtime = j5 - ((SystemClock.elapsedRealtime() * 1000) - j2);
        long jNanoTime = System.nanoTime();
        long jZzg = this.zzboe.zzg(j3, (jElapsedRealtime * 1000) + jNanoTime);
        long j6 = (jZzg - jNanoTime) / 1000;
        if (zzer(j6)) {
            zzsx.beginSection("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            zzsx.endSection();
            zznc zzncVar = this.zzbhl;
            zzncVar.zzabm++;
            this.zzbop++;
            this.zzboq++;
            zzncVar.zzazd = Math.max(this.zzboq, zzncVar.zzazd);
            if (this.zzbop == this.zzboh) {
                zzkm();
            }
            return true;
        }
        if (zzsy.SDK_INT >= 21) {
            if (j6 < 50000) {
                zza(mediaCodec, i, j4, jZzg);
                return true;
            }
        } else if (j6 < 30000) {
            if (j6 > 11000) {
                try {
                    Thread.sleep((j6 - 10000) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            zzb(mediaCodec, i, j4);
            return true;
        }
        return false;
    }

    private final void zza(MediaCodec mediaCodec, int i, long j) {
        zzsx.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzsx.endSection();
        this.zzbhl.zzabl++;
    }

    private final void zzb(MediaCodec mediaCodec, int i, long j) {
        zzej();
        zzsx.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzsx.endSection();
        this.zzbhl.zzabk++;
        this.zzboq = 0;
        zzkj();
    }

    @TargetApi(21)
    private final void zza(MediaCodec mediaCodec, int i, long j, long j2) {
        zzej();
        zzsx.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzsx.endSection();
        this.zzbhl.zzabk++;
        this.zzboq = 0;
        zzkj();
    }

    private final boolean zzn(boolean z) {
        if (zzsy.SDK_INT < 23 || this.zzawy) {
            return false;
        }
        return !z || zztd.zzc(this.zzlj);
    }

    private final void zzkh() {
        this.zzboo = this.zzbog > 0 ? SystemClock.elapsedRealtime() + this.zzbog : C.TIME_UNSET;
    }

    private final void zzki() {
        MediaCodec mediaCodecZzir;
        this.zzafb = false;
        if (zzsy.SDK_INT < 23 || !this.zzawy || (mediaCodecZzir = zzir()) == null) {
            return;
        }
        this.zzboy = new zztk(this, mediaCodecZzir);
    }

    final void zzkj() {
        if (this.zzafb) {
            return;
        }
        this.zzafb = true;
        this.zzbof.zzc(this.zzaez);
    }

    private final void zzkk() {
        this.zzbou = -1;
        this.zzbov = -1;
        this.zzbox = -1.0f;
        this.zzbow = -1;
    }

    private final void zzej() {
        if (this.zzbou == this.zzaff && this.zzbov == this.zzafg && this.zzbow == this.zzbot && this.zzbox == this.zzafh) {
            return;
        }
        this.zzbof.zzb(this.zzaff, this.zzafg, this.zzbot, this.zzafh);
        this.zzbou = this.zzaff;
        this.zzbov = this.zzafg;
        this.zzbow = this.zzbot;
        this.zzbox = this.zzafh;
    }

    private final void zzkl() {
        if (this.zzbou == -1 && this.zzbov == -1) {
            return;
        }
        this.zzbof.zzb(this.zzaff, this.zzafg, this.zzbot, this.zzafh);
    }

    private final void zzkm() {
        if (this.zzbop > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbof.zzg(this.zzbop, jElapsedRealtime - this.zzafd);
            this.zzbop = 0;
            this.zzafd = jElapsedRealtime;
        }
    }

    private static int zzi(zzlh zzlhVar) {
        int i = zzlhVar.zzafs;
        return i != -1 ? i : zza(zzlhVar.zzatq, zzlhVar.width, zzlhVar.height);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zza(java.lang.String r7, int r8, int r9) {
        /*
            r0 = -1
            if (r8 == r0) goto L8c
            if (r9 != r0) goto L7
            goto L8c
        L7:
            int r1 = r7.hashCode()
            r2 = 5
            r3 = 1
            r4 = 3
            r5 = 4
            r6 = 2
            switch(r1) {
                case -1664118616: goto L4b;
                case -1662541442: goto L40;
                case 1187890754: goto L35;
                case 1331836730: goto L2a;
                case 1599127256: goto L1f;
                case 1599127257: goto L14;
                default: goto L13;
            }
        L13:
            goto L56
        L14:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 5
            goto L57
        L1f:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 3
            goto L57
        L2a:
            java.lang.String r1 = "video/avc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 2
            goto L57
        L35:
            java.lang.String r1 = "video/mp4v-es"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 1
            goto L57
        L40:
            java.lang.String r1 = "video/hevc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 4
            goto L57
        L4b:
            java.lang.String r1 = "video/3gpp"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L56
            r7 = 0
            goto L57
        L56:
            r7 = -1
        L57:
            if (r7 == 0) goto L83
            if (r7 == r3) goto L83
            if (r7 == r6) goto L67
            if (r7 == r4) goto L83
            if (r7 == r5) goto L64
            if (r7 == r2) goto L64
            return r0
        L64:
            int r8 = r8 * r9
            goto L86
        L67:
            java.lang.String r7 = com.google.android.gms.internal.ads.zzsy.MODEL
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L72
            return r0
        L72:
            r7 = 16
            int r8 = com.google.android.gms.internal.ads.zzsy.zzb(r8, r7)
            int r7 = com.google.android.gms.internal.ads.zzsy.zzb(r9, r7)
            int r8 = r8 * r7
            int r7 = r8 << 4
            int r8 = r7 << 4
            goto L85
        L83:
            int r8 = r8 * r9
        L85:
            r5 = 2
        L86:
            int r8 = r8 * 3
            int r5 = r5 * 2
            int r8 = r8 / r5
            return r8
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzth.zza(java.lang.String, int, int):int");
    }

    private static boolean zza(boolean z, zzlh zzlhVar, zzlh zzlhVar2) {
        if (!zzlhVar.zzatq.equals(zzlhVar2.zzatq) || zzj(zzlhVar) != zzj(zzlhVar2)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzlhVar.width == zzlhVar2.width && zzlhVar.height == zzlhVar2.height;
    }

    private static int zzj(zzlh zzlhVar) {
        int i = zzlhVar.zzatt;
        if (i == -1) {
            return 0;
        }
        return i;
    }
}
