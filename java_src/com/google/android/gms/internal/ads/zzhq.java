package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.ConditionVariable;
import android.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.util.ws.WsMessage;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzhq {
    private static boolean zzagc;
    private int zzafv;
    private final ConditionVariable zzagd = new ConditionVariable(true);
    private final long[] zzage;
    private final zzhs zzagf;
    private AudioTrack zzagg;
    private int zzagh;
    private int zzagi;
    private int zzagj;
    private int zzagk;
    private int zzagl;
    private int zzagm;
    private int zzagn;
    private long zzago;
    private long zzagp;
    private boolean zzagq;
    private long zzagr;
    private Method zzags;
    private long zzagt;
    private int zzagu;
    private long zzagv;
    private long zzagw;
    private long zzagx;
    private byte[] zzagy;
    private int zzagz;
    private int zzaha;
    private boolean zzahb;
    private int zzahc;
    private float zzcv;

    public zzhq() {
        zzhr zzhrVar = null;
        if (zzkq.SDK_INT >= 18) {
            try {
                this.zzags = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzkq.SDK_INT >= 19) {
            this.zzagf = new zzht();
        } else {
            this.zzagf = new zzhs(zzhrVar);
        }
        this.zzage = new long[10];
        this.zzcv = 1.0f;
        this.zzagu = 0;
    }

    public final boolean isInitialized() {
        return this.zzagg != null;
    }

    public final long zzf(boolean z) {
        long jZzew;
        long j;
        if (!(isInitialized() && this.zzagv != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.zzagg.getPlayState() == 3) {
            long jZzew2 = this.zzagf.zzew();
            if (jZzew2 != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - this.zzagp >= 30000) {
                    long[] jArr = this.zzage;
                    int i = this.zzagm;
                    jArr[i] = jZzew2 - jNanoTime;
                    this.zzagm = (i + 1) % 10;
                    int i2 = this.zzagn;
                    if (i2 < 10) {
                        this.zzagn = i2 + 1;
                    }
                    this.zzagp = jNanoTime;
                    this.zzago = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzagn;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzago += this.zzage[i3] / i4;
                        i3++;
                    }
                }
                if (!this.zzahb && jNanoTime - this.zzagr >= 500000) {
                    this.zzagq = this.zzagf.zzex();
                    if (this.zzagq) {
                        long jZzey = this.zzagf.zzey() / 1000;
                        long jZzez = this.zzagf.zzez();
                        if (jZzey < this.zzagw) {
                            this.zzagq = false;
                        } else if (Math.abs(jZzey - jNanoTime) > 5000000) {
                            this.zzagq = false;
                            StringBuilder sb = new StringBuilder(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(jZzez);
                            sb.append(", ");
                            sb.append(jZzey);
                            sb.append(", ");
                            sb.append(jNanoTime);
                            sb.append(", ");
                            sb.append(jZzew2);
                            Log.w("AudioTrack", sb.toString());
                        } else if (Math.abs(zzdo(jZzez) - jZzew2) > 5000000) {
                            this.zzagq = false;
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(jZzez);
                            sb2.append(", ");
                            sb2.append(jZzey);
                            sb2.append(", ");
                            sb2.append(jNanoTime);
                            sb2.append(", ");
                            sb2.append(jZzew2);
                            Log.w("AudioTrack", sb2.toString());
                        }
                    }
                    if (this.zzags != null) {
                        try {
                            this.zzagx = (((Integer) r1.invoke(this.zzagg, null)).intValue() * 1000) - zzdo(zzdn(this.zzagl));
                            this.zzagx = Math.max(this.zzagx, 0L);
                            if (this.zzagx > 5000000) {
                                long j2 = this.zzagx;
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(j2);
                                Log.w("AudioTrack", sb3.toString());
                                this.zzagx = 0L;
                            }
                        } catch (Exception unused) {
                            this.zzags = null;
                        }
                    }
                    this.zzagr = jNanoTime;
                }
            }
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        if (this.zzagq) {
            return zzdo(this.zzagf.zzez() + zzdp(jNanoTime2 - (this.zzagf.zzey() / 1000))) + this.zzagv;
        }
        if (this.zzagn == 0) {
            jZzew = this.zzagf.zzew();
            j = this.zzagv;
        } else {
            jZzew = jNanoTime2 + this.zzago;
            j = this.zzagv;
        }
        long j3 = jZzew + j;
        return !z ? j3 - this.zzagx : j3;
    }

    public final int zzq(int i) throws zzhu {
        this.zzagd.block();
        if (i == 0) {
            this.zzagg = new AudioTrack(3, this.zzafv, this.zzagh, this.zzagi, this.zzagl, 1);
        } else {
            this.zzagg = new AudioTrack(3, this.zzafv, this.zzagh, this.zzagi, this.zzagl, 1, i);
        }
        int state = this.zzagg.getState();
        if (state != 1) {
            try {
                this.zzagg.release();
            } catch (Exception unused) {
            } finally {
                this.zzagg = null;
            }
            throw new zzhu(state, this.zzafv, this.zzagh, this.zzagl);
        }
        int audioSessionId = this.zzagg.getAudioSessionId();
        this.zzagf.zza(this.zzagg, this.zzahb);
        setVolume(this.zzcv);
        return audioSessionId;
    }

    public final void zza(MediaFormat mediaFormat, int i) throws IllegalStateException {
        int i2;
        int i3;
        int integer = mediaFormat.getInteger("channel-count");
        if (integer == 1) {
            i2 = 4;
        } else if (integer == 2) {
            i2 = 12;
        } else if (integer == 6) {
            i2 = 252;
        } else {
            if (integer != 8) {
                StringBuilder sb = new StringBuilder(38);
                sb.append("Unsupported channel count: ");
                sb.append(integer);
                throw new IllegalArgumentException(sb.toString());
            }
            i2 = 1020;
        }
        int integer2 = mediaFormat.getInteger("sample-rate");
        String string = mediaFormat.getString(IMediaFormat.KEY_MIME);
        if (MimeTypes.AUDIO_AC3.equals(string)) {
            i3 = 5;
        } else if (MimeTypes.AUDIO_E_AC3.equals(string)) {
            i3 = 6;
        } else {
            i3 = zzkl.zzav(string) ? 2 : 0;
        }
        boolean z = i3 == 5 || i3 == 6;
        if (isInitialized() && this.zzafv == integer2 && this.zzagh == i2 && !this.zzahb && !z) {
            return;
        }
        reset();
        this.zzagi = i3;
        this.zzafv = integer2;
        this.zzagh = i2;
        this.zzahb = z;
        this.zzahc = 0;
        this.zzagj = integer * 2;
        this.zzagk = AudioTrack.getMinBufferSize(integer2, i2, i3);
        zzkh.checkState(this.zzagk != -2);
        int i4 = this.zzagk << 2;
        int iZzdp = ((int) zzdp(250000L)) * this.zzagj;
        int iMax = (int) Math.max(this.zzagk, zzdp(750000L) * this.zzagj);
        if (i4 < iZzdp) {
            i4 = iZzdp;
        } else if (i4 > iMax) {
            i4 = iMax;
        }
        this.zzagl = i4;
    }

    public final void play() throws IllegalStateException {
        if (isInitialized()) {
            this.zzagw = System.nanoTime() / 1000;
            this.zzagg.play();
        }
    }

    public final void zzeq() {
        if (this.zzagu == 1) {
            this.zzagu = 2;
        }
    }

    public final int zza(ByteBuffer byteBuffer, int i, int i2, long j) throws zzhv {
        int i3;
        if (i2 == 0) {
            return 2;
        }
        int iWrite = 0;
        if (zzkq.SDK_INT <= 22 && this.zzahb) {
            if (this.zzagg.getPlayState() == 2) {
                return 0;
            }
            if (this.zzagg.getPlayState() == 1 && this.zzagf.zzev() != 0) {
                return 0;
            }
        }
        if (this.zzaha != 0) {
            i3 = 0;
        } else {
            if (this.zzahb && this.zzahc == 0) {
                this.zzahc = zzkg.zza(i2, this.zzafv);
            }
            long jZzdo = j - zzdo(zzdn(i2));
            long j2 = this.zzagv;
            if (j2 == 0) {
                this.zzagv = Math.max(0L, jZzdo);
                this.zzagu = 1;
            } else {
                long jZzdo2 = j2 + zzdo(zzdn(this.zzagt));
                if (this.zzagu == 1 && Math.abs(jZzdo2 - jZzdo) > 200000) {
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Discontinuity detected [expected ");
                    sb.append(jZzdo2);
                    sb.append(", got ");
                    sb.append(jZzdo);
                    sb.append("]");
                    Log.e("AudioTrack", sb.toString());
                    this.zzagu = 2;
                }
                if (this.zzagu == 2) {
                    this.zzagv += jZzdo - jZzdo2;
                    this.zzagu = 1;
                    i3 = 1;
                }
            }
            i3 = 0;
        }
        if (this.zzaha == 0) {
            this.zzaha = i2;
            byteBuffer.position(i);
            if (zzkq.SDK_INT < 21) {
                byte[] bArr = this.zzagy;
                if (bArr == null || bArr.length < i2) {
                    this.zzagy = new byte[i2];
                }
                byteBuffer.get(this.zzagy, 0, i2);
                this.zzagz = 0;
            }
        }
        if (zzkq.SDK_INT < 21) {
            int iZzev = this.zzagl - ((int) (this.zzagt - (this.zzagf.zzev() * this.zzagj)));
            if (iZzev > 0) {
                iWrite = this.zzagg.write(this.zzagy, this.zzagz, Math.min(this.zzaha, iZzev));
                if (iWrite >= 0) {
                    this.zzagz += iWrite;
                }
            }
        } else {
            iWrite = this.zzagg.write(byteBuffer, this.zzaha, 1);
        }
        if (iWrite < 0) {
            throw new zzhv(iWrite);
        }
        this.zzaha -= iWrite;
        this.zzagt += iWrite;
        return this.zzaha == 0 ? i3 | 2 : i3;
    }

    public final boolean zzer() {
        if (isInitialized()) {
            return zzdn(this.zzagt) > this.zzagf.zzev() || this.zzagf.zzeu();
        }
        return false;
    }

    public final boolean zzes() {
        return this.zzagt > ((long) ((this.zzagk * 3) / 2));
    }

    public final void setVolume(float f) {
        this.zzcv = f;
        if (isInitialized()) {
            if (zzkq.SDK_INT >= 21) {
                this.zzagg.setVolume(f);
            } else {
                this.zzagg.setStereoVolume(f, f);
            }
        }
    }

    public final void pause() throws IllegalStateException {
        if (isInitialized()) {
            zzet();
            this.zzagg.pause();
        }
    }

    public final void reset() throws IllegalStateException {
        if (isInitialized()) {
            this.zzagt = 0L;
            this.zzaha = 0;
            this.zzagv = 0L;
            this.zzagx = 0L;
            zzet();
            if (this.zzagg.getPlayState() == 3) {
                this.zzagg.pause();
            }
            AudioTrack audioTrack = this.zzagg;
            this.zzagg = null;
            this.zzagf.zza(null, false);
            this.zzagd.close();
            new zzhr(this, audioTrack).start();
        }
    }

    private final long zzdn(long j) {
        if (this.zzahb) {
            if (this.zzahc == 0) {
                return 0L;
            }
            return ((j << 3) * this.zzafv) / (r0 * 1000);
        }
        return j / this.zzagj;
    }

    private final long zzdo(long j) {
        return (j * 1000000) / this.zzafv;
    }

    private final long zzdp(long j) {
        return (j * this.zzafv) / 1000000;
    }

    private final void zzet() {
        this.zzago = 0L;
        this.zzagn = 0;
        this.zzagm = 0;
        this.zzagp = 0L;
        this.zzagq = false;
        this.zzagr = 0L;
    }
}
