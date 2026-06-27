package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer2.C;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
final class zzla implements zzkv {
    private int repeatMode;
    private final Handler zzabq;
    private final CopyOnWriteArraySet<zzkw> zzabs;
    private boolean zzabu;
    private int zzabv;
    private final zzlo[] zzaro;
    private final zzrp zzarp;
    private final zzro zzarq;
    private final zzlc zzarr;
    private final zzlu zzars;
    private final zzlt zzart;
    private boolean zzaru;
    private int zzarv;
    private int zzarw;
    private boolean zzarx;
    private zzlr zzary;
    private Object zzarz;
    private zzrb zzasa;
    private zzro zzasb;
    private zzln zzasc;
    private zzle zzasd;
    private int zzase;
    private int zzasf;
    private long zzasg;

    @SuppressLint({"HandlerLeak"})
    public zzla(zzlo[] zzloVarArr, zzrp zzrpVar, zzll zzllVar) {
        String str = zzsy.zzbnq;
        StringBuilder sb = new StringBuilder("Init ExoPlayerLib/2.4.2 [".length() + 1 + String.valueOf(str).length());
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        zzsk.checkState(zzloVarArr.length > 0);
        this.zzaro = (zzlo[]) zzsk.checkNotNull(zzloVarArr);
        this.zzarp = (zzrp) zzsk.checkNotNull(zzrpVar);
        this.zzabu = false;
        this.repeatMode = 0;
        this.zzabv = 1;
        this.zzabs = new CopyOnWriteArraySet<>();
        this.zzarq = new zzro(new zzrm[zzloVarArr.length]);
        this.zzary = zzlr.zzaum;
        this.zzars = new zzlu();
        this.zzart = new zzlt();
        this.zzasa = zzrb.zzbkw;
        this.zzasb = this.zzarq;
        this.zzasc = zzln.zzaug;
        this.zzabq = new zzlb(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.zzasd = new zzle(0, 0L);
        this.zzarr = new zzlc(zzloVarArr, zzrpVar, zzllVar, this.zzabu, 0, this.zzabq, this.zzasd, this);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zza(zzkw zzkwVar) {
        this.zzabs.add(zzkwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zzb(zzkw zzkwVar) {
        this.zzabs.remove(zzkwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final int getPlaybackState() {
        return this.zzabv;
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zza(zzql zzqlVar) {
        if (!this.zzary.isEmpty() || this.zzarz != null) {
            this.zzary = zzlr.zzaum;
            this.zzarz = null;
            Iterator<zzkw> it = this.zzabs.iterator();
            while (it.hasNext()) {
                it.next().zza(this.zzary, this.zzarz);
            }
        }
        if (this.zzaru) {
            this.zzaru = false;
            this.zzasa = zzrb.zzbkw;
            this.zzasb = this.zzarq;
            this.zzarp.zzd(null);
            Iterator<zzkw> it2 = this.zzabs.iterator();
            while (it2.hasNext()) {
                it2.next().zza(this.zzasa, this.zzasb);
            }
        }
        this.zzarw++;
        this.zzarr.zza(zzqlVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zzd(boolean z) {
        if (this.zzabu != z) {
            this.zzabu = z;
            this.zzarr.zzd(z);
            Iterator<zzkw> it = this.zzabs.iterator();
            while (it.hasNext()) {
                it.next().zza(z, this.zzabv);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final boolean zzdm() {
        return this.zzabu;
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void seekTo(long j) {
        int iZzgu = zzgu();
        if (iZzgu < 0 || (!this.zzary.isEmpty() && iZzgu >= this.zzary.zzhf())) {
            throw new zzlk(this.zzary, iZzgu, j);
        }
        this.zzarv++;
        this.zzase = iZzgu;
        if (this.zzary.isEmpty()) {
            this.zzasf = 0;
        } else {
            this.zzary.zza(iZzgu, this.zzars, false);
            if (j != C.TIME_UNSET) {
                zzkt.zzea(j);
            }
            this.zzary.zza(0, this.zzart, false);
            this.zzasf = 0;
        }
        if (j == C.TIME_UNSET) {
            this.zzasg = 0L;
            this.zzarr.zza(this.zzary, iZzgu, C.TIME_UNSET);
            return;
        }
        this.zzasg = j;
        this.zzarr.zza(this.zzary, iZzgu, zzkt.zzea(j));
        Iterator<zzkw> it = this.zzabs.iterator();
        while (it.hasNext()) {
            it.next().zzgt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void stop() {
        this.zzarr.stop();
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void release() {
        this.zzarr.release();
        this.zzabq.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zza(zzky... zzkyVarArr) {
        this.zzarr.zza(zzkyVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zzb(zzky... zzkyVarArr) {
        this.zzarr.zzb(zzkyVarArr);
    }

    private final int zzgu() {
        if (this.zzary.isEmpty() || this.zzarv > 0) {
            return this.zzase;
        }
        this.zzary.zza(this.zzasd.zzatb, this.zzart, false);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final long getDuration() {
        return this.zzary.isEmpty() ? C.TIME_UNSET : zzkt.zzdz(this.zzary.zza(zzgu(), this.zzars, false).zzack);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final long zzdn() {
        if (this.zzary.isEmpty() || this.zzarv > 0) {
            return this.zzasg;
        }
        this.zzary.zza(this.zzasd.zzatb, this.zzart, false);
        return this.zzart.zzhh() + zzkt.zzdz(this.zzasd.zzacl);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final long getBufferedPosition() {
        if (this.zzary.isEmpty() || this.zzarv > 0) {
            return this.zzasg;
        }
        this.zzary.zza(this.zzasd.zzatb, this.zzart, false);
        return this.zzart.zzhh() + zzkt.zzdz(this.zzasd.zzacm);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final int zzgs() {
        return this.zzaro.length;
    }

    final void zza(Message message) {
        switch (message.what) {
            case 0:
                this.zzarw--;
                return;
            case 1:
                this.zzabv = message.arg1;
                Iterator<zzkw> it = this.zzabs.iterator();
                while (it.hasNext()) {
                    it.next().zza(this.zzabu, this.zzabv);
                }
                return;
            case 2:
                this.zzarx = message.arg1 != 0;
                Iterator<zzkw> it2 = this.zzabs.iterator();
                while (it2.hasNext()) {
                    it2.next().zzh(this.zzarx);
                }
                return;
            case 3:
                if (this.zzarw == 0) {
                    zzrr zzrrVar = (zzrr) message.obj;
                    this.zzaru = true;
                    this.zzasa = zzrrVar.zzbly;
                    this.zzasb = zzrrVar.zzblz;
                    this.zzarp.zzd(zzrrVar.zzbma);
                    Iterator<zzkw> it3 = this.zzabs.iterator();
                    while (it3.hasNext()) {
                        it3.next().zza(this.zzasa, this.zzasb);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.zzarv - 1;
                this.zzarv = i;
                if (i == 0) {
                    this.zzasd = (zzle) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<zzkw> it4 = this.zzabs.iterator();
                        while (it4.hasNext()) {
                            it4.next().zzgt();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.zzarv == 0) {
                    this.zzasd = (zzle) message.obj;
                    Iterator<zzkw> it5 = this.zzabs.iterator();
                    while (it5.hasNext()) {
                        it5.next().zzgt();
                    }
                    return;
                }
                return;
            case 6:
                zzlg zzlgVar = (zzlg) message.obj;
                this.zzarv -= zzlgVar.zzatk;
                if (this.zzarw == 0) {
                    this.zzary = zzlgVar.zzary;
                    this.zzarz = zzlgVar.zzarz;
                    this.zzasd = zzlgVar.zzasd;
                    Iterator<zzkw> it6 = this.zzabs.iterator();
                    while (it6.hasNext()) {
                        it6.next().zza(this.zzary, this.zzarz);
                    }
                    return;
                }
                return;
            case 7:
                zzln zzlnVar = (zzln) message.obj;
                if (this.zzasc.equals(zzlnVar)) {
                    return;
                }
                this.zzasc = zzlnVar;
                Iterator<zzkw> it7 = this.zzabs.iterator();
                while (it7.hasNext()) {
                    it7.next().zza(zzlnVar);
                }
                return;
            case 8:
                zzku zzkuVar = (zzku) message.obj;
                Iterator<zzkw> it8 = this.zzabs.iterator();
                while (it8.hasNext()) {
                    it8.next().zza(zzkuVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
