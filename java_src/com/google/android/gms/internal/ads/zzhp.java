package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzhp implements zzgf {
    private int state;

    protected abstract long getDurationUs();

    protected abstract boolean isReady();

    protected void onStarted() throws zzgd {
    }

    protected void onStopped() throws zzgd {
    }

    protected abstract void seekTo(long j) throws zzgd;

    @Override // com.google.android.gms.internal.ads.zzgf
    public void zza(int i, Object obj) throws zzgd {
    }

    protected abstract void zza(long j, long j2) throws zzgd;

    protected void zzb(long j, boolean z) throws zzgd {
    }

    protected abstract int zzdl(long j) throws zzgd;

    protected abstract long zzdu();

    protected boolean zzdw() {
        return false;
    }

    protected abstract boolean zzdx();

    protected abstract long zzdy();

    protected void zzdz() throws zzgd {
    }

    protected void zzee() throws zzgd {
    }

    protected final int getState() {
        return this.state;
    }

    final int zzdm(long j) throws zzgd {
        zzkh.checkState(this.state == 0);
        this.state = zzdl(j);
        int i = this.state;
        zzkh.checkState(i == 0 || i == 1 || i == -1);
        return this.state;
    }

    final void zzc(long j, boolean z) throws zzgd {
        zzkh.checkState(this.state == 1);
        this.state = 2;
        zzb(j, z);
    }

    final void start() throws zzgd {
        zzkh.checkState(this.state == 2);
        this.state = 3;
        onStarted();
    }

    final void stop() throws zzgd {
        zzkh.checkState(this.state == 3);
        this.state = 2;
        onStopped();
    }

    final void disable() throws zzgd {
        zzkh.checkState(this.state == 2);
        this.state = 1;
        zzdz();
    }

    final void release() throws zzgd {
        int i = this.state;
        zzkh.checkState((i == 2 || i == 3 || i == -2) ? false : true);
        this.state = -2;
        zzee();
    }
}
