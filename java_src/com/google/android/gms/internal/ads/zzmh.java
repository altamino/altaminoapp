package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import com.narvii.util.ws.WsMessage;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public final class zzmh {
    private static boolean zzagc;
    private static boolean zzavt;
    private int streamType;
    private int zzada;
    private ByteBuffer[] zzadt;
    private int zzafv;
    private final long[] zzage;
    private AudioTrack zzagg;
    private int zzagh;
    private int zzagi;
    private int zzagl;
    private int zzagm;
    private int zzagn;
    private long zzago;
    private long zzagp;
    private boolean zzagq;
    private long zzagr;
    private Method zzags;
    private int zzagu;
    private long zzagv;
    private long zzagw;
    private long zzagx;
    private zzln zzasc;
    private final zzmq zzavv;
    private final zzmx zzavw;
    private final zzlx[] zzavx;
    private final zzmn zzavy;
    private final zzmj zzavz;
    private final LinkedList<zzmo> zzawa;
    private int zzawb;
    private boolean zzawc;
    private long zzawd;
    private zzln zzawe;
    private long zzawf;
    private long zzawg;
    private ByteBuffer zzawh;
    private int zzawi;
    private int zzawj;
    private long zzawk;
    private long zzawl;
    private int zzawm;
    private long zzawn;
    private long zzawo;
    private int zzawp;
    private zzlx[] zzawq;
    private ByteBuffer zzawr;
    private ByteBuffer zzaws;
    private byte[] zzawt;
    private int zzawu;
    private int zzawv;
    private boolean zzaww;
    private boolean zzawx;
    private boolean zzawy;
    private boolean zzawz;
    private long zzaxa;
    private float zzcv;
    private final zzlw zzavu = null;
    private final ConditionVariable zzagd = new ConditionVariable(true);

    public zzmh(zzlw zzlwVar, zzlx[] zzlxVarArr, zzmn zzmnVar) {
        zzmi zzmiVar = null;
        this.zzavy = zzmnVar;
        if (zzsy.SDK_INT >= 18) {
            try {
                this.zzags = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzsy.SDK_INT >= 19) {
            this.zzavz = new zzmk();
        } else {
            this.zzavz = new zzmj(zzmiVar);
        }
        this.zzavv = new zzmq();
        this.zzavw = new zzmx();
        this.zzavx = new zzlx[zzlxVarArr.length + 3];
        this.zzavx[0] = new zzmv();
        zzlx[] zzlxVarArr2 = this.zzavx;
        zzlxVarArr2[1] = this.zzavv;
        System.arraycopy(zzlxVarArr, 0, zzlxVarArr2, 2, zzlxVarArr.length);
        this.zzavx[zzlxVarArr.length + 2] = this.zzavw;
        this.zzage = new long[10];
        this.zzcv = 1.0f;
        this.zzagu = 0;
        this.streamType = 3;
        this.zzada = 0;
        this.zzasc = zzln.zzaug;
        this.zzawv = -1;
        this.zzawq = new zzlx[0];
        this.zzadt = new ByteBuffer[0];
        this.zzawa = new LinkedList<>();
    }

    public final boolean zzaz(String str) {
        zzlw zzlwVar = this.zzavu;
        return zzlwVar != null && zzlwVar.zzaf(zzba(str));
    }

    public final long zzf(boolean z) {
        long jZzdv;
        long j;
        long jZza;
        long j2;
        if (!(isInitialized() && this.zzagu != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.zzagg.getPlayState() == 3) {
            long jZzdv2 = this.zzavz.zzdv();
            if (jZzdv2 != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - this.zzagp >= 30000) {
                    long[] jArr = this.zzage;
                    int i = this.zzagm;
                    jArr[i] = jZzdv2 - jNanoTime;
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
                if (!zzhu() && jNanoTime - this.zzagr >= 500000) {
                    this.zzagq = this.zzavz.zzex();
                    if (this.zzagq) {
                        long jZzey = this.zzavz.zzey() / 1000;
                        long jZzez = this.zzavz.zzez();
                        if (jZzey < this.zzagw) {
                            this.zzagq = false;
                        } else if (Math.abs(jZzey - jNanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(jZzez);
                            sb.append(", ");
                            sb.append(jZzey);
                            sb.append(", ");
                            sb.append(jNanoTime);
                            sb.append(", ");
                            sb.append(jZzdv2);
                            Log.w("AudioTrack", sb.toString());
                            this.zzagq = false;
                        } else if (Math.abs(zzdo(jZzez) - jZzdv2) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(jZzez);
                            sb2.append(", ");
                            sb2.append(jZzey);
                            sb2.append(", ");
                            sb2.append(jNanoTime);
                            sb2.append(", ");
                            sb2.append(jZzdv2);
                            Log.w("AudioTrack", sb2.toString());
                            this.zzagq = false;
                        }
                    }
                    if (this.zzags != null && !this.zzawc) {
                        try {
                            this.zzagx = (((Integer) r1.invoke(this.zzagg, null)).intValue() * 1000) - this.zzawd;
                            this.zzagx = Math.max(this.zzagx, 0L);
                            if (this.zzagx > 5000000) {
                                long j3 = this.zzagx;
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(j3);
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
            jZzdv = zzdo(this.zzavz.zzez() + zzdp(jNanoTime2 - (this.zzavz.zzey() / 1000)));
        } else {
            if (this.zzagn == 0) {
                jZzdv = this.zzavz.zzdv();
            } else {
                jZzdv = jNanoTime2 + this.zzago;
            }
            if (!z) {
                jZzdv -= this.zzagx;
            }
        }
        long j4 = this.zzagv;
        while (!this.zzawa.isEmpty() && jZzdv >= this.zzawa.getFirst().zzacl) {
            zzmo zzmoVarRemove = this.zzawa.remove();
            this.zzasc = zzmoVarRemove.zzasc;
            this.zzawg = zzmoVarRemove.zzacl;
            this.zzawf = zzmoVarRemove.zzaxg - this.zzagv;
        }
        if (this.zzasc.zzauh == 1.0f) {
            j2 = (jZzdv + this.zzawf) - this.zzawg;
        } else {
            if (this.zzawa.isEmpty() && this.zzavw.zzia() >= 1024) {
                j = this.zzawf;
                jZza = zzsy.zza(jZzdv - this.zzawg, this.zzavw.zzhz(), this.zzavw.zzia());
            } else {
                j = this.zzawf;
                double d = this.zzasc.zzauh;
                double d2 = jZzdv - this.zzawg;
                Double.isNaN(d);
                Double.isNaN(d2);
                jZza = (long) (d * d2);
            }
            j2 = jZza + j;
        }
        return j4 + j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) throws com.google.android.gms.internal.ads.zzml, java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmh.zza(java.lang.String, int, int, int, int, int[]):void");
    }

    private final void zzhn() {
        ArrayList arrayList = new ArrayList();
        for (zzlx zzlxVar : this.zzavx) {
            if (zzlxVar.isActive()) {
                arrayList.add(zzlxVar);
            } else {
                zzlxVar.flush();
            }
        }
        int size = arrayList.size();
        this.zzawq = (zzlx[]) arrayList.toArray(new zzlx[size]);
        this.zzadt = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            zzlx zzlxVar2 = this.zzawq[i];
            zzlxVar2.flush();
            this.zzadt[i] = zzlxVar2.zzhm();
        }
    }

    public final void play() throws IllegalStateException {
        this.zzawx = true;
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

    public final boolean zza(ByteBuffer byteBuffer, long j) throws IllegalStateException, zzmm, zzmp {
        int i;
        int iZzj;
        ByteBuffer byteBuffer2 = this.zzawr;
        zzsk.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!isInitialized()) {
            this.zzagd.block();
            if (this.zzawy) {
                this.zzagg = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.zzagh).setEncoding(this.zzawb).setSampleRate(this.zzafv).build(), this.zzagl, 1, this.zzada);
            } else {
                int i2 = this.zzada;
                if (i2 == 0) {
                    this.zzagg = new AudioTrack(this.streamType, this.zzafv, this.zzagh, this.zzawb, this.zzagl, 1);
                } else {
                    this.zzagg = new AudioTrack(this.streamType, this.zzafv, this.zzagh, this.zzawb, this.zzagl, 1, i2);
                }
            }
            int state = this.zzagg.getState();
            if (state != 1) {
                try {
                    this.zzagg.release();
                } catch (Exception unused) {
                } finally {
                    this.zzagg = null;
                }
                throw new zzmm(state, this.zzafv, this.zzagh, this.zzagl);
            }
            int audioSessionId = this.zzagg.getAudioSessionId();
            if (this.zzada != audioSessionId) {
                this.zzada = audioSessionId;
                this.zzavy.zzag(audioSessionId);
            }
            this.zzavz.zza(this.zzagg, zzhu());
            zzhs();
            this.zzawz = false;
            if (this.zzawx) {
                play();
            }
        }
        if (zzhu()) {
            if (this.zzagg.getPlayState() == 2) {
                this.zzawz = false;
                return false;
            }
            if (this.zzagg.getPlayState() == 1 && this.zzavz.zzev() != 0) {
                return false;
            }
        }
        boolean z = this.zzawz;
        this.zzawz = zzer();
        if (z && !this.zzawz && this.zzagg.getPlayState() != 1) {
            this.zzavy.zze(this.zzagl, zzkt.zzdz(this.zzawd), SystemClock.elapsedRealtime() - this.zzaxa);
        }
        if (this.zzawr == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.zzawc && this.zzawp == 0) {
                int i3 = this.zzawb;
                if (i3 == 7 || i3 == 8) {
                    iZzj = zzmr.zzj(byteBuffer);
                } else if (i3 == 5) {
                    iZzj = zzlv.zzhi();
                } else if (i3 == 6) {
                    iZzj = zzlv.zzh(byteBuffer);
                } else {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i3);
                    throw new IllegalStateException(sb.toString());
                }
                this.zzawp = iZzj;
            }
            if (this.zzawe != null) {
                if (!zzhp()) {
                    return false;
                }
                this.zzawa.add(new zzmo(this.zzawe, Math.max(0L, j), zzdo(zzht()), null));
                this.zzawe = null;
                zzhn();
            }
            if (this.zzagu == 0) {
                this.zzagv = Math.max(0L, j);
                this.zzagu = 1;
            } else {
                long jZzdo = this.zzagv + zzdo(this.zzawc ? this.zzawl : this.zzawk / this.zzawj);
                if (this.zzagu != 1 || Math.abs(jZzdo - j) <= 200000) {
                    i = 2;
                } else {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(jZzdo);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    i = 2;
                    this.zzagu = 2;
                }
                if (this.zzagu == i) {
                    this.zzagv += j - jZzdo;
                    this.zzagu = 1;
                    this.zzavy.zzgt();
                }
            }
            if (this.zzawc) {
                this.zzawl += this.zzawp;
            } else {
                this.zzawk += byteBuffer.remaining();
            }
            this.zzawr = byteBuffer;
        }
        if (this.zzawc) {
            zzb(this.zzawr, j);
        } else {
            zzeg(j);
        }
        if (this.zzawr.hasRemaining()) {
            return false;
        }
        this.zzawr = null;
        return true;
    }

    private final void zzeg(long j) throws zzmp {
        ByteBuffer byteBuffer;
        int length = this.zzawq.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzadt[i - 1];
            } else {
                byteBuffer = this.zzawr;
                if (byteBuffer == null) {
                    byteBuffer = zzlx.zzavh;
                }
            }
            if (i == length) {
                zzb(byteBuffer, j);
            } else {
                zzlx zzlxVar = this.zzawq[i];
                zzlxVar.zzi(byteBuffer);
                ByteBuffer byteBufferZzhm = zzlxVar.zzhm();
                this.zzadt[i] = byteBufferZzhm;
                if (byteBufferZzhm.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzb(java.nio.ByteBuffer r9, long r10) throws com.google.android.gms.internal.ads.zzmp {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmh.zzb(java.nio.ByteBuffer, long):boolean");
    }

    public final void zzho() throws zzmp {
        if (!this.zzaww && isInitialized() && zzhp()) {
            this.zzavz.zzeh(zzht());
            this.zzawi = 0;
            this.zzaww = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0032 -> B:9:0x0012). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzhp() throws com.google.android.gms.internal.ads.zzmp {
        /*
            r9 = this;
            int r0 = r9.zzawv
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L14
            boolean r0 = r9.zzawc
            if (r0 == 0) goto Lf
            com.google.android.gms.internal.ads.zzlx[] r0 = r9.zzawq
            int r0 = r0.length
            goto L10
        Lf:
            r0 = 0
        L10:
            r9.zzawv = r0
        L12:
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            int r4 = r9.zzawv
            com.google.android.gms.internal.ads.zzlx[] r5 = r9.zzawq
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.zzhl()
        L28:
            r9.zzeg(r7)
            boolean r0 = r4.zzdx()
            if (r0 != 0) goto L32
            return r3
        L32:
            int r0 = r9.zzawv
            int r0 = r0 + r2
            r9.zzawv = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.zzaws
            if (r0 == 0) goto L44
            r9.zzb(r0, r7)
            java.nio.ByteBuffer r0 = r9.zzaws
            if (r0 == 0) goto L44
            return r3
        L44:
            r9.zzawv = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmh.zzhp():boolean");
    }

    public final boolean zzdx() {
        if (isInitialized()) {
            return this.zzaww && !zzer();
        }
        return true;
    }

    public final boolean zzer() {
        if (isInitialized()) {
            if (zzht() <= this.zzavz.zzev()) {
                if (zzhu() && this.zzagg.getPlayState() == 2 && this.zzagg.getPlaybackHeadPosition() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final zzln zzb(zzln zzlnVar) {
        if (this.zzawc) {
            this.zzasc = zzln.zzaug;
            return this.zzasc;
        }
        zzln zzlnVar2 = new zzln(this.zzavw.zzb(zzlnVar.zzauh), this.zzavw.zzc(zzlnVar.zzaui));
        zzln zzlnVar3 = this.zzawe;
        if (zzlnVar3 == null) {
            if (!this.zzawa.isEmpty()) {
                zzlnVar3 = this.zzawa.getLast().zzasc;
            } else {
                zzlnVar3 = this.zzasc;
            }
        }
        if (!zzlnVar2.equals(zzlnVar3)) {
            if (isInitialized()) {
                this.zzawe = zzlnVar2;
            } else {
                this.zzasc = zzlnVar2;
            }
        }
        return this.zzasc;
    }

    public final zzln zzhq() {
        return this.zzasc;
    }

    public final void setStreamType(int i) throws IllegalStateException {
        if (this.streamType == i) {
            return;
        }
        this.streamType = i;
        if (this.zzawy) {
            return;
        }
        reset();
        this.zzada = 0;
    }

    public final void zzai(int i) throws IllegalStateException {
        zzsk.checkState(zzsy.SDK_INT >= 21);
        if (this.zzawy && this.zzada == i) {
            return;
        }
        this.zzawy = true;
        this.zzada = i;
        reset();
    }

    public final void zzhr() throws IllegalStateException {
        if (this.zzawy) {
            this.zzawy = false;
            this.zzada = 0;
            reset();
        }
    }

    public final void setVolume(float f) {
        if (this.zzcv != f) {
            this.zzcv = f;
            zzhs();
        }
    }

    private final void zzhs() {
        if (isInitialized()) {
            if (zzsy.SDK_INT >= 21) {
                this.zzagg.setVolume(this.zzcv);
                return;
            }
            AudioTrack audioTrack = this.zzagg;
            float f = this.zzcv;
            audioTrack.setStereoVolume(f, f);
        }
    }

    public final void pause() {
        this.zzawx = false;
        if (isInitialized()) {
            zzet();
            this.zzavz.pause();
        }
    }

    public final void reset() throws IllegalStateException {
        if (isInitialized()) {
            this.zzawk = 0L;
            this.zzawl = 0L;
            this.zzawn = 0L;
            this.zzawo = 0L;
            this.zzawp = 0;
            zzln zzlnVar = this.zzawe;
            if (zzlnVar != null) {
                this.zzasc = zzlnVar;
                this.zzawe = null;
            } else if (!this.zzawa.isEmpty()) {
                this.zzasc = this.zzawa.getLast().zzasc;
            }
            this.zzawa.clear();
            this.zzawf = 0L;
            this.zzawg = 0L;
            this.zzawr = null;
            this.zzaws = null;
            int i = 0;
            while (true) {
                zzlx[] zzlxVarArr = this.zzawq;
                if (i >= zzlxVarArr.length) {
                    break;
                }
                zzlx zzlxVar = zzlxVarArr[i];
                zzlxVar.flush();
                this.zzadt[i] = zzlxVar.zzhm();
                i++;
            }
            this.zzaww = false;
            this.zzawv = -1;
            this.zzawh = null;
            this.zzawi = 0;
            this.zzagu = 0;
            this.zzagx = 0L;
            zzet();
            if (this.zzagg.getPlayState() == 3) {
                this.zzagg.pause();
            }
            AudioTrack audioTrack = this.zzagg;
            this.zzagg = null;
            this.zzavz.zza(null, false);
            this.zzagd.close();
            new zzmi(this, audioTrack).start();
        }
    }

    public final void release() throws IllegalStateException {
        reset();
        for (zzlx zzlxVar : this.zzavx) {
            zzlxVar.reset();
        }
        this.zzada = 0;
        this.zzawx = false;
    }

    private final boolean isInitialized() {
        return this.zzagg != null;
    }

    private final long zzdo(long j) {
        return (j * 1000000) / this.zzafv;
    }

    private final long zzdp(long j) {
        return (j * this.zzafv) / 1000000;
    }

    private final long zzht() {
        return this.zzawc ? this.zzawo : this.zzawn / this.zzawm;
    }

    private final void zzet() {
        this.zzago = 0L;
        this.zzagn = 0;
        this.zzagm = 0;
        this.zzagp = 0L;
        this.zzagq = false;
        this.zzagr = 0L;
    }

    private final boolean zzhu() {
        if (zzsy.SDK_INT >= 23) {
            return false;
        }
        int i = this.zzawb;
        return i == 5 || i == 6;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzba(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1095064472: goto L2a;
                case 187078296: goto L20;
                case 1504578661: goto L16;
                case 1505942594: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L34
        Lc:
            java.lang.String r0 = "audio/vnd.dts.hd"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 3
            goto L35
        L16:
            java.lang.String r0 = "audio/eac3"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 1
            goto L35
        L20:
            java.lang.String r0 = "audio/ac3"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 0
            goto L35
        L2a:
            java.lang.String r0 = "audio/vnd.dts"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 2
            goto L35
        L34:
            r5 = -1
        L35:
            if (r5 == 0) goto L45
            if (r5 == r4) goto L43
            if (r5 == r3) goto L41
            if (r5 == r2) goto L3e
            return r1
        L3e:
            r5 = 8
            return r5
        L41:
            r5 = 7
            return r5
        L43:
            r5 = 6
            return r5
        L45:
            r5 = 5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmh.zzba(java.lang.String):int");
    }
}
