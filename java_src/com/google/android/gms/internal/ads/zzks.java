package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zzks implements zzlo, zzlp {
    private int index;
    private int state;
    private final int zzara;
    private zzlq zzarb;
    private zzqw zzarc;
    private long zzard;
    private boolean zzare = true;
    private boolean zzarf;

    public zzks(int i) {
        this.zzara = i;
    }

    protected void onStarted() throws zzku {
    }

    protected void onStopped() throws zzku {
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public void zza(int i, Object obj) throws zzku {
    }

    protected void zza(zzlh[] zzlhVarArr, long j) throws zzku {
    }

    protected void zzd(long j, boolean z) throws zzku {
    }

    protected void zzdz() {
    }

    protected void zzg(boolean z) throws zzku {
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final zzlp zzgi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public zzso zzgj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public int zzgp() throws zzku {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzlo, com.google.android.gms.internal.ads.zzlp
    public final int getTrackType() {
        return this.zzara;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void setIndex(int i) {
        this.index = i;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zza(zzlq zzlqVar, zzlh[] zzlhVarArr, zzqw zzqwVar, long j, boolean z, long j2) throws zzku {
        zzsk.checkState(this.state == 0);
        this.zzarb = zzlqVar;
        this.state = 1;
        zzg(z);
        zza(zzlhVarArr, zzqwVar, j2);
        zzd(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void start() throws zzku {
        zzsk.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zza(zzlh[] zzlhVarArr, zzqw zzqwVar, long j) throws zzku {
        zzsk.checkState(!this.zzarf);
        this.zzarc = zzqwVar;
        this.zzare = false;
        this.zzard = j;
        zza(zzlhVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final zzqw zzgk() {
        return this.zzarc;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final boolean zzgl() {
        return this.zzare;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zzgm() {
        this.zzarf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final boolean zzgn() {
        return this.zzarf;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zzgo() throws IOException {
        this.zzarc.zzjb();
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zzdx(long j) throws zzku {
        this.zzarf = false;
        this.zzare = false;
        zzd(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void stop() throws zzku {
        zzsk.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void disable() {
        zzsk.checkState(this.state == 1);
        this.state = 0;
        this.zzarc = null;
        this.zzarf = false;
        zzdz();
    }

    protected final zzlq zzgq() {
        return this.zzarb;
    }

    protected final int getIndex() {
        return this.index;
    }

    protected final int zza(zzlj zzljVar, zznd zzndVar, boolean z) {
        int iZzb = this.zzarc.zzb(zzljVar, zzndVar, z);
        if (iZzb == -4) {
            if (zzndVar.zzic()) {
                this.zzare = true;
                return this.zzarf ? -4 : -3;
            }
            zzndVar.zzaga += this.zzard;
        } else if (iZzb == -5) {
            zzlh zzlhVar = zzljVar.zzaue;
            long j = zzlhVar.zzaua;
            if (j != Long.MAX_VALUE) {
                zzljVar.zzaue = zzlhVar.zzed(j + this.zzard);
            }
        }
        return iZzb;
    }

    protected final void zzdy(long j) {
        this.zzarc.zzeo(j - this.zzard);
    }

    protected final boolean zzgr() {
        return this.zzare ? this.zzarf : this.zzarc.isReady();
    }
}
