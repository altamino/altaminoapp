package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzig implements zzhn, zzif, zzka {
    private final Uri uri;
    private zzho[] zzacr;
    private boolean zzacs;
    private int zzact;
    private boolean[] zzacv;
    private volatile zzhw zzadp;
    private final zzjp zzahu;
    private final zzid zzaic;
    private final zzjr zzaid;
    private final int zzaie;
    private final SparseArray<zzii> zzaif;
    private final int zzaig;
    private final boolean zzaih;
    private volatile boolean zzaii;
    private volatile zzio zzaij;
    private int zzaik;
    private long zzail;
    private boolean[] zzaim;
    private boolean[] zzain;
    private long zzaio;
    private long zzaip;
    private long zzaiq;
    private boolean zzair;
    private long zzais;
    private zzjz zzait;
    private zzih zzaiu;
    private IOException zzaiv;
    private boolean zzaiw;
    private int zzaix;
    private long zzaiy;
    private boolean zzaiz;
    private int zzaja;
    private int zzajb;

    public zzig(Uri uri, zzjp zzjpVar, zzid zzidVar, int i, int i2) {
        this(uri, zzjpVar, zzidVar, 2, i2, -1);
    }

    private zzig(Uri uri, zzjp zzjpVar, zzid zzidVar, int i, int i2, int i3) {
        this.uri = uri;
        this.zzahu = zzjpVar;
        this.zzaic = zzidVar;
        this.zzact = 2;
        this.zzaie = i2;
        this.zzaig = -1;
        this.zzaif = new SparseArray<>();
        this.zzaid = new zzjr(262144);
        this.zzaiq = -1L;
        this.zzaih = true;
        zzidVar.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final boolean zzdg(long j) throws IOException {
        boolean z;
        if (this.zzacs) {
            return true;
        }
        if (this.zzait == null) {
            this.zzait = new zzjz("Loader:ExtractorSampleSource");
        }
        zzfj();
        if (this.zzaij != null && this.zzaii) {
            int i = 0;
            while (true) {
                if (i >= this.zzaif.size()) {
                    z = true;
                    break;
                }
                if (!this.zzaif.valueAt(i).zzfd()) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                int size = this.zzaif.size();
                this.zzain = new boolean[size];
                this.zzacv = new boolean[size];
                this.zzaim = new boolean[size];
                this.zzacr = new zzho[size];
                this.zzail = -1L;
                for (int i2 = 0; i2 < size; i2++) {
                    zzhj zzhjVarZzfe = this.zzaif.valueAt(i2).zzfe();
                    this.zzacr[i2] = new zzho(zzhjVarZzfe.mimeType, zzhjVarZzfe.zzack);
                    long j2 = zzhjVarZzfe.zzack;
                    if (j2 != -1 && j2 > this.zzail) {
                        this.zzail = j2;
                    }
                }
                this.zzacs = true;
                return true;
            }
        }
        zzfl();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int getTrackCount() {
        return this.zzaif.size();
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final zzho zzo(int i) {
        zzkh.checkState(this.zzacs);
        return this.zzacr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zza(int i, long j) {
        zzkh.checkState(this.zzacs);
        zzkh.checkState(!this.zzain[i]);
        this.zzaik++;
        this.zzain[i] = true;
        this.zzaim[i] = true;
        if (this.zzaik == 1) {
            zzdi(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zzp(int i) {
        zzkh.checkState(this.zzacs);
        zzkh.checkState(this.zzain[i]);
        this.zzaik--;
        this.zzain[i] = false;
        this.zzacv[i] = false;
        if (this.zzaik == 0) {
            if (this.zzait.isLoading()) {
                this.zzait.zzgb();
            } else {
                zzfn();
                this.zzaid.zzz(0);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final boolean zzdh(long j) throws IOException {
        zzkh.checkState(this.zzacs);
        zzkh.checkState(this.zzaik > 0);
        this.zzaio = j;
        long j2 = this.zzaio;
        int i = 0;
        while (true) {
            boolean[] zArr = this.zzain;
            if (i >= zArr.length) {
                break;
            }
            if (!zArr[i]) {
                this.zzaif.valueAt(i).zzdr(j2);
            }
            i++;
        }
        return this.zzaiz || zzfj();
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final int zza(int i, long j, zzhk zzhkVar, zzhm zzhmVar, boolean z) throws IOException {
        this.zzaio = j;
        boolean[] zArr = this.zzacv;
        if (zArr[i]) {
            zArr[i] = false;
            return -5;
        }
        if (z || zzfo()) {
            zzfl();
            return -2;
        }
        zzii zziiVarValueAt = this.zzaif.valueAt(i);
        if (this.zzaim[i]) {
            zzhkVar.zzado = zziiVarValueAt.zzfe();
            zzhkVar.zzadp = this.zzadp;
            this.zzaim[i] = false;
            return -4;
        }
        if (zziiVarValueAt.zza(zzhmVar)) {
            zzhmVar.flags |= this.zzaih && (zzhmVar.zzaga > this.zzaip ? 1 : (zzhmVar.zzaga == this.zzaip ? 0 : -1)) < 0 ? 134217728 : 0;
            zzhmVar.zzaga += this.zzais;
            return -3;
        }
        if (this.zzaiz) {
            return -1;
        }
        zzfl();
        return -2;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void zzdi(long j) {
        zzkh.checkState(this.zzacs);
        int i = 0;
        zzkh.checkState(this.zzaik > 0);
        this.zzaij.zzfc();
        this.zzaip = j;
        if ((zzfo() ? this.zzaiq : this.zzaio) == j) {
            return;
        }
        this.zzaio = j;
        boolean zZzds = !zzfo();
        for (int i2 = 0; zZzds && i2 < this.zzaif.size(); i2++) {
            zZzds &= this.zzaif.valueAt(i2).zzds(j);
        }
        if (!zZzds) {
            zzdt(j);
        }
        while (true) {
            boolean[] zArr = this.zzacv;
            if (i >= zArr.length) {
                return;
            }
            zArr[i] = true;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final long zzdu() {
        if (this.zzaiz) {
            return -3L;
        }
        if (zzfo()) {
            return this.zzaiq;
        }
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.zzaif.size(); i++) {
            jMax = Math.max(jMax, this.zzaif.valueAt(i).zzff());
        }
        return jMax == Long.MIN_VALUE ? this.zzaio : jMax;
    }

    @Override // com.google.android.gms.internal.ads.zzhn
    public final void release() {
        zzjz zzjzVar;
        zzkh.checkState(this.zzact > 0);
        int i = this.zzact - 1;
        this.zzact = i;
        if (i != 0 || (zzjzVar = this.zzait) == null) {
            return;
        }
        zzjzVar.release();
        this.zzait = null;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkcVar) {
        this.zzaiz = true;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzb(zzkc zzkcVar) {
        if (this.zzaik > 0) {
            zzdt(this.zzaiq);
        } else {
            zzfn();
            this.zzaid.zzz(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkcVar, IOException iOException) {
        this.zzaiv = iOException;
        this.zzaix = this.zzaja <= this.zzajb ? 1 + this.zzaix : 1;
        this.zzaiy = SystemClock.elapsedRealtime();
        zzfk();
    }

    @Override // com.google.android.gms.internal.ads.zzif
    public final zzip zzs(int i) {
        zzii zziiVar = this.zzaif.get(i);
        if (zziiVar != null) {
            return zziiVar;
        }
        zzii zziiVar2 = new zzii(this, this.zzaid);
        this.zzaif.put(i, zziiVar2);
        return zziiVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzif
    public final void zzfi() {
        this.zzaii = true;
    }

    @Override // com.google.android.gms.internal.ads.zzif
    public final void zza(zzio zzioVar) {
        this.zzaij = zzioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzif
    public final void zzb(zzhw zzhwVar) {
        this.zzadp = zzhwVar;
    }

    private final boolean zzfj() throws IOException {
        boolean z;
        zzfk();
        boolean z2 = false;
        if (zzfo()) {
            return false;
        }
        if (this.zzacs) {
            int i = 0;
            while (true) {
                boolean[] zArr = this.zzain;
                if (i >= zArr.length) {
                    z = false;
                    break;
                }
                if (zArr[i] && !this.zzaif.valueAt(i).isEmpty()) {
                    z = true;
                    break;
                }
                i++;
            }
            if (z) {
                z2 = true;
            }
        }
        if (!z2) {
            zzfl();
        }
        return z2;
    }

    private final void zzdt(long j) {
        this.zzaiq = j;
        this.zzaiz = false;
        if (this.zzait.isLoading()) {
            this.zzait.zzgb();
        } else {
            zzfn();
            zzfk();
        }
    }

    private final void zzfk() {
        if (this.zzaiz || this.zzait.isLoading()) {
            return;
        }
        if (this.zzaiv != null) {
            zzkh.checkState(this.zzaiu != null);
            if (SystemClock.elapsedRealtime() - this.zzaiy >= Math.min((this.zzaix - 1) * 1000, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
                this.zzaiv = null;
                if (!this.zzacs) {
                    for (int i = 0; i < this.zzaif.size(); i++) {
                        this.zzaif.valueAt(i).clear();
                    }
                    this.zzaiu = zzfm();
                } else {
                    this.zzaij.zzfc();
                }
                this.zzajb = this.zzaja;
                this.zzait.zza(this.zzaiu, this);
                return;
            }
            return;
        }
        this.zzais = 0L;
        this.zzair = false;
        if (!this.zzacs) {
            this.zzaiu = zzfm();
        } else {
            zzkh.checkState(zzfo());
            long j = this.zzail;
            if (j != -1 && this.zzaiq >= j) {
                this.zzaiz = true;
                this.zzaiq = -1L;
                return;
            } else {
                this.zzaiu = new zzih(this.uri, this.zzahu, this.zzaic, this.zzaid, this.zzaie, this.zzaij.zzdq(this.zzaiq));
                this.zzaiq = -1L;
            }
        }
        this.zzajb = this.zzaja;
        this.zzait.zza(this.zzaiu, this);
    }

    private final void zzfl() throws IOException {
        if (this.zzaiv == null) {
            return;
        }
        int i = this.zzaig;
        if (i == -1) {
            if (this.zzaij != null) {
                this.zzaij.zzfc();
            }
            i = 3;
        }
        if (this.zzaix > i) {
            throw this.zzaiv;
        }
    }

    private final zzih zzfm() {
        return new zzih(this.uri, this.zzahu, this.zzaic, this.zzaid, this.zzaie, 0L);
    }

    private final void zzfn() {
        for (int i = 0; i < this.zzaif.size(); i++) {
            this.zzaif.valueAt(i).clear();
        }
        this.zzaiu = null;
        this.zzaiv = null;
        this.zzaix = 0;
        this.zzaiw = false;
    }

    private final boolean zzfo() {
        return this.zzaiq != -1;
    }

    static /* synthetic */ int zza(zzig zzigVar) {
        int i = zzigVar.zzaja;
        zzigVar.zzaja = i + 1;
        return i;
    }
}
