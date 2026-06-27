package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import java.io.IOException;

/* loaded from: classes2.dex */
final class zzpz implements zznp, zzqj, zzqv, zzsf<zzqe> {
    private final Uri uri;
    private final Handler zzabq;
    private boolean zzacf;
    private long zzack;
    private boolean zzacs;
    private final int zzaig;
    private boolean zzaii;
    private int zzaik;
    private boolean[] zzain;
    private long zzaip;
    private boolean zzaiz;
    private final zzrv zzazi;
    private final zzqi zzbia;
    private final zzqm zzbib;
    private final zzrt zzbic;
    private final String zzbid;
    private final long zzbie;
    private final zzqf zzbig;
    private zzqk zzbik;
    private zznu zzbil;
    private boolean zzbim;
    private boolean zzbin;
    private zzrb zzbio;
    private boolean[] zzbip;
    private boolean zzbiq;
    private int zzbir;
    private final zzse zzbif = new zzse("Loader:ExtractorMediaPeriod");
    private final zzsm zzbih = new zzsm();
    private final Runnable zzbii = new zzqa(this);
    private final Runnable zzbij = new zzqb(this);
    private final Handler handler = new Handler();
    private long zzaiq = C.TIME_UNSET;
    private final SparseArray<zzqt> zzaif = new SparseArray<>();
    private long zzcd = -1;

    public zzpz(Uri uri, zzrv zzrvVar, zznn[] zznnVarArr, int i, Handler handler, zzqi zzqiVar, zzqm zzqmVar, zzrt zzrtVar, String str, int i2) {
        this.uri = uri;
        this.zzazi = zzrvVar;
        this.zzaig = i;
        this.zzabq = handler;
        this.zzbia = zzqiVar;
        this.zzbib = zzqmVar;
        this.zzbic = zzrtVar;
        this.zzbid = str;
        this.zzbie = i2;
        this.zzbig = new zzqf(zznnVarArr, this);
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzem(long j) {
    }

    public final void release() {
        this.zzbif.zza(new zzqc(this, this.zzbig));
        this.handler.removeCallbacksAndMessages(null);
        this.zzacf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zza(zzqk zzqkVar, long j) {
        this.zzbik = zzqkVar;
        this.zzbih.zzjx();
        startLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zziy() throws IOException {
        this.zzbif.zzbm(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final zzrb zziz() {
        return this.zzbio;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zza(zzrm[] zzrmVarArr, boolean[] zArr, zzqw[] zzqwVarArr, boolean[] zArr2, long j) {
        zzsk.checkState(this.zzacs);
        for (int i = 0; i < zzrmVarArr.length; i++) {
            if (zzqwVarArr[i] != null && (zzrmVarArr[i] == null || !zArr[i])) {
                int i2 = ((zzqg) zzqwVarArr[i]).track;
                zzsk.checkState(this.zzain[i2]);
                this.zzaik--;
                this.zzain[i2] = false;
                this.zzaif.valueAt(i2).disable();
                zzqwVarArr[i] = null;
            }
        }
        boolean z = false;
        for (int i3 = 0; i3 < zzrmVarArr.length; i3++) {
            if (zzqwVarArr[i3] == null && zzrmVarArr[i3] != null) {
                zzrm zzrmVar = zzrmVarArr[i3];
                zzsk.checkState(zzrmVar.length() == 1);
                zzsk.checkState(zzrmVar.zzbh(0) == 0);
                int iZza = this.zzbio.zza(zzrmVar.zzjr());
                zzsk.checkState(!this.zzain[iZza]);
                this.zzaik++;
                this.zzain[iZza] = true;
                zzqwVarArr[i3] = new zzqg(this, iZza);
                zArr2[i3] = true;
                z = true;
            }
        }
        if (!this.zzbim) {
            int size = this.zzaif.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.zzain[i4]) {
                    this.zzaif.valueAt(i4).disable();
                }
            }
        }
        if (this.zzaik == 0) {
            this.zzbin = false;
            if (this.zzbif.isLoading()) {
                this.zzbif.zzgb();
            }
        } else if (!this.zzbim ? j != 0 : z) {
            j = zzen(j);
            for (int i5 = 0; i5 < zzqwVarArr.length; i5++) {
                if (zzqwVarArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.zzbim = true;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzqj, com.google.android.gms.internal.ads.zzqx
    public final boolean zzel(long j) {
        if (this.zzaiz) {
            return false;
        }
        if (this.zzacs && this.zzaik == 0) {
            return false;
        }
        boolean zZzjx = this.zzbih.zzjx();
        if (this.zzbif.isLoading()) {
            return zZzjx;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzqj, com.google.android.gms.internal.ads.zzqx
    public final long zzix() {
        if (this.zzaik == 0) {
            return Long.MIN_VALUE;
        }
        return zzdu();
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzja() {
        if (!this.zzbin) {
            return C.TIME_UNSET;
        }
        this.zzbin = false;
        return this.zzaip;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzdu() {
        long jZzje;
        if (this.zzaiz) {
            return Long.MIN_VALUE;
        }
        if (zzfo()) {
            return this.zzaiq;
        }
        if (this.zzbiq) {
            jZzje = Long.MAX_VALUE;
            int size = this.zzaif.size();
            for (int i = 0; i < size; i++) {
                if (this.zzbip[i]) {
                    jZzje = Math.min(jZzje, this.zzaif.valueAt(i).zzje());
                }
            }
        } else {
            jZzje = zzje();
        }
        return jZzje == Long.MIN_VALUE ? this.zzaip : jZzje;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzen(long j) {
        if (!this.zzbil.zzfc()) {
            j = 0;
        }
        this.zzaip = j;
        int size = this.zzaif.size();
        boolean zZzh = !zzfo();
        for (int i = 0; zZzh && i < size; i++) {
            if (this.zzain[i]) {
                zZzh = this.zzaif.valueAt(i).zzh(j, false);
            }
        }
        if (!zZzh) {
            this.zzaiq = j;
            this.zzaiz = false;
            if (this.zzbif.isLoading()) {
                this.zzbif.zzgb();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.zzaif.valueAt(i2).zzk(this.zzain[i2]);
                }
            }
        }
        this.zzbin = false;
        return j;
    }

    final boolean zzbd(int i) {
        if (this.zzaiz) {
            return true;
        }
        return !zzfo() && this.zzaif.valueAt(i).zzjk();
    }

    final void zzjb() throws IOException {
        this.zzbif.zzbm(Integer.MIN_VALUE);
    }

    final int zza(int i, zzlj zzljVar, zznd zzndVar, boolean z) {
        if (this.zzbin || zzfo()) {
            return -3;
        }
        return this.zzaif.valueAt(i).zza(zzljVar, zzndVar, z, this.zzaiz, this.zzaip);
    }

    final void zzf(int i, long j) {
        zzqt zzqtVarValueAt = this.zzaif.valueAt(i);
        if (this.zzaiz && j > zzqtVarValueAt.zzje()) {
            zzqtVarValueAt.zzjn();
        } else {
            zzqtVarValueAt.zzh(j, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznp
    public final zznw zzd(int i, int i2) {
        zzqt zzqtVar = this.zzaif.get(i);
        if (zzqtVar != null) {
            return zzqtVar;
        }
        zzqt zzqtVar2 = new zzqt(this.zzbic);
        zzqtVar2.zza(this);
        this.zzaif.put(i, zzqtVar2);
        return zzqtVar2;
    }

    @Override // com.google.android.gms.internal.ads.zznp
    public final void zzfi() {
        this.zzaii = true;
        this.handler.post(this.zzbii);
    }

    @Override // com.google.android.gms.internal.ads.zznp
    public final void zza(zznu zznuVar) {
        this.zzbil = zznuVar;
        this.handler.post(this.zzbii);
    }

    @Override // com.google.android.gms.internal.ads.zzqv
    public final void zzf(zzlh zzlhVar) {
        this.handler.post(this.zzbii);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzjc() {
        if (this.zzacf || this.zzacs || this.zzbil == null || !this.zzaii) {
            return;
        }
        int size = this.zzaif.size();
        for (int i = 0; i < size; i++) {
            if (this.zzaif.valueAt(i).zzjl() == null) {
                return;
            }
        }
        this.zzbih.zzjy();
        zzra[] zzraVarArr = new zzra[size];
        this.zzbip = new boolean[size];
        this.zzain = new boolean[size];
        this.zzack = this.zzbil.getDurationUs();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 < size) {
                zzlh zzlhVarZzjl = this.zzaif.valueAt(i2).zzjl();
                zzraVarArr[i2] = new zzra(zzlhVarZzjl);
                String str = zzlhVarZzjl.zzatq;
                if (!zzsp.zzbf(str) && !zzsp.zzav(str)) {
                    z = false;
                }
                this.zzbip[i2] = z;
                this.zzbiq = z | this.zzbiq;
                i2++;
            } else {
                this.zzbio = new zzrb(zzraVarArr);
                this.zzacs = true;
                this.zzbib.zzb(new zzqz(this.zzack, this.zzbil.zzfc()), null);
                this.zzbik.zza((zzqj) this);
                return;
            }
        }
    }

    private final void zza(zzqe zzqeVar) {
        if (this.zzcd == -1) {
            this.zzcd = zzqeVar.zzcd;
        }
    }

    private final void startLoading() {
        zznu zznuVar;
        zzqe zzqeVar = new zzqe(this, this.uri, this.zzazi, this.zzbig, this.zzbih);
        if (this.zzacs) {
            zzsk.checkState(zzfo());
            long j = this.zzack;
            if (j != C.TIME_UNSET && this.zzaiq >= j) {
                this.zzaiz = true;
                this.zzaiq = C.TIME_UNSET;
                return;
            } else {
                zzqeVar.zzf(this.zzbil.zzdq(this.zzaiq), this.zzaiq);
                this.zzaiq = C.TIME_UNSET;
            }
        }
        this.zzbir = zzjd();
        int i = this.zzaig;
        if (i == -1) {
            i = (this.zzacs && this.zzcd == -1 && ((zznuVar = this.zzbil) == null || zznuVar.getDurationUs() == C.TIME_UNSET)) ? 6 : 3;
        }
        this.zzbif.zza(zzqeVar, this, i);
    }

    private final int zzjd() {
        int size = this.zzaif.size();
        int iZzjj = 0;
        for (int i = 0; i < size; i++) {
            iZzjj += this.zzaif.valueAt(i).zzjj();
        }
        return iZzjj;
    }

    private final long zzje() {
        int size = this.zzaif.size();
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            jMax = Math.max(jMax, this.zzaif.valueAt(i).zzje());
        }
        return jMax;
    }

    private final boolean zzfo() {
        return this.zzaiq != C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final /* synthetic */ int zza(zzsh zzshVar, long j, long j2, IOException iOException) {
        zznu zznuVar;
        zzqe zzqeVar = (zzqe) zzshVar;
        zza(zzqeVar);
        Handler handler = this.zzabq;
        if (handler != null && this.zzbia != null) {
            handler.post(new zzqd(this, iOException));
        }
        if (iOException instanceof zzrc) {
            return 3;
        }
        boolean z = zzjd() > this.zzbir;
        if (this.zzcd == -1 && ((zznuVar = this.zzbil) == null || zznuVar.getDurationUs() == C.TIME_UNSET)) {
            this.zzaip = 0L;
            this.zzbin = this.zzacs;
            int size = this.zzaif.size();
            for (int i = 0; i < size; i++) {
                this.zzaif.valueAt(i).zzk(!this.zzacs || this.zzain[i]);
            }
            zzqeVar.zzf(0L, 0L);
        }
        this.zzbir = zzjd();
        return z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final /* synthetic */ void zza(zzsh zzshVar, long j, long j2, boolean z) {
        zza((zzqe) zzshVar);
        if (z || this.zzaik <= 0) {
            return;
        }
        int size = this.zzaif.size();
        for (int i = 0; i < size; i++) {
            this.zzaif.valueAt(i).zzk(this.zzain[i]);
        }
        this.zzbik.zza((zzqk) this);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final /* synthetic */ void zza(zzsh zzshVar, long j, long j2) {
        zza((zzqe) zzshVar);
        this.zzaiz = true;
        if (this.zzack == C.TIME_UNSET) {
            long jZzje = zzje();
            this.zzack = jZzje == Long.MIN_VALUE ? 0L : jZzje + 10000;
            this.zzbib.zzb(new zzqz(this.zzack, this.zzbil.zzfc()), null);
        }
        this.zzbik.zza((zzqk) this);
    }
}
