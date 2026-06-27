package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzeg extends zzf {
    private final zzey zzqj;
    private zzam zzqk;
    private volatile Boolean zzql;
    private final zzab zzqm;
    private final zzfo zzqn;
    private final List<Runnable> zzqo;
    private final zzab zzqp;

    protected zzeg(zzby zzbyVar) {
        super(zzbyVar);
        this.zzqo = new ArrayList();
        this.zzqn = new zzfo(zzbyVar.zzz());
        this.zzqj = new zzey(this);
        this.zzqm = new zzeh(this, zzbyVar);
        this.zzqp = new zzeq(this, zzbyVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzak() {
        return false;
    }

    public final boolean isConnected() {
        zzq();
        zzah();
        return this.zzqk != null;
    }

    protected final void zzfe() {
        zzq();
        zzah();
        zzd(new zzer(this, zzi(true)));
    }

    @VisibleForTesting
    final void zza(zzam zzamVar, AbstractSafeParcelable abstractSafeParcelable, zzm zzmVar) throws IllegalStateException {
        int size;
        List<AbstractSafeParcelable> listZzc;
        zzq();
        zzo();
        zzah();
        boolean zZzff = zzff();
        int i = 0;
        int i2 = 100;
        while (i < 1001 && i2 == 100) {
            ArrayList arrayList = new ArrayList();
            if (!zZzff || (listZzc = zzw().zzc(100)) == null) {
                size = 0;
            } else {
                arrayList.addAll(listZzc);
                size = listZzc.size();
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzaj) {
                    try {
                        zzamVar.zza((zzaj) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e) {
                        zzad().zzda().zza("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzga) {
                    try {
                        zzamVar.zza((zzga) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e2) {
                        zzad().zzda().zza("Failed to send attribute to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzr) {
                    try {
                        zzamVar.zza((zzr) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e3) {
                        zzad().zzda().zza("Failed to send conditional property to the service", e3);
                    }
                } else {
                    zzad().zzda().zzaq("Discarding data. Unrecognized parcel type.");
                }
            }
            i++;
            i2 = size;
        }
    }

    protected final void zzc(zzaj zzajVar, String str) {
        Preconditions.checkNotNull(zzajVar);
        zzq();
        zzah();
        boolean zZzff = zzff();
        zzd(new zzes(this, zZzff, zZzff && zzw().zza(zzajVar), zzajVar, zzi(true), str));
    }

    protected final void zzd(zzr zzrVar) {
        Preconditions.checkNotNull(zzrVar);
        zzq();
        zzah();
        zzag();
        zzd(new zzet(this, true, zzw().zzc(zzrVar), new zzr(zzrVar), zzi(true), zzrVar));
    }

    protected final void zza(AtomicReference<List<zzr>> atomicReference, String str, String str2, String str3) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzeu(this, atomicReference, str, str2, str3, zzi(false)));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzq zzqVar, String str, String str2) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzev(this, str, str2, zzi(false), zzqVar));
    }

    protected final void zza(AtomicReference<List<zzga>> atomicReference, String str, String str2, String str3, boolean z) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzew(this, atomicReference, str, str2, str3, z, zzi(false)));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzq zzqVar, String str, String str2, boolean z) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzex(this, str, str2, z, zzi(false), zzqVar));
    }

    protected final void zzb(zzga zzgaVar) {
        zzq();
        zzah();
        zzd(new zzei(this, zzff() && zzw().zza(zzgaVar), zzgaVar, zzi(true)));
    }

    protected final void zza(AtomicReference<List<zzga>> atomicReference, boolean z) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzej(this, atomicReference, zzi(false), z));
    }

    protected final void resetAnalyticsData() throws IllegalStateException {
        zzq();
        zzo();
        zzah();
        zzm zzmVarZzi = zzi(false);
        if (zzff()) {
            zzw().resetAnalyticsData();
        }
        zzd(new zzek(this, zzmVarZzi));
    }

    private final boolean zzff() {
        zzag();
        return true;
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzq();
        zzah();
        zzd(new zzel(this, atomicReference, zzi(false)));
    }

    public final void getAppInstanceId(com.google.android.gms.internal.measurement.zzq zzqVar) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzem(this, zzi(false), zzqVar));
    }

    protected final void zzfb() throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzen(this, zzi(true)));
    }

    protected final void zza(zzec zzecVar) throws IllegalStateException {
        zzq();
        zzah();
        zzd(new zzeo(this, zzecVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzfg() {
        zzq();
        this.zzqn.start();
        this.zzqm.zzv(zzal.zzhj.get(null).longValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzfh() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzeg.zzfh():void");
    }

    final Boolean zzfi() {
        return this.zzql;
    }

    @VisibleForTesting
    protected final void zza(zzam zzamVar) throws IllegalStateException {
        zzq();
        Preconditions.checkNotNull(zzamVar);
        this.zzqk = zzamVar;
        zzfg();
        zzfk();
    }

    public final void disconnect() {
        zzq();
        zzah();
        this.zzqj.zzfl();
        try {
            ConnectionTracker.getInstance().unbindService(getContext(), this.zzqj);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzqk = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onServiceDisconnected(ComponentName componentName) throws IllegalStateException {
        zzq();
        if (this.zzqk != null) {
            this.zzqk = null;
            zzad().zzdi().zza("Disconnected from device MeasurementService", componentName);
            zzq();
            zzfh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzfj() throws IllegalStateException {
        zzq();
        if (isConnected()) {
            zzad().zzdi().zzaq("Inactivity, disconnecting from the service");
            disconnect();
        }
    }

    private final void zzd(Runnable runnable) throws IllegalStateException {
        zzq();
        if (isConnected()) {
            runnable.run();
        } else {
            if (this.zzqo.size() >= 1000) {
                zzad().zzda().zzaq("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzqo.add(runnable);
            this.zzqp.zzv(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
            zzfh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzfk() throws IllegalStateException {
        zzq();
        zzad().zzdi().zza("Processing queued up service tasks", Integer.valueOf(this.zzqo.size()));
        Iterator<Runnable> it = this.zzqo.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e) {
                zzad().zzda().zza("Task exception while flushing queue", e);
            }
        }
        this.zzqo.clear();
        this.zzqp.cancel();
    }

    private final zzm zzi(boolean z) {
        zzag();
        return zzt().zzak(z ? zzad().zzdk() : null);
    }

    public final void zza(com.google.android.gms.internal.measurement.zzq zzqVar, zzaj zzajVar, String str) throws IllegalStateException {
        zzq();
        zzah();
        if (zzab().zzd(12451000) != 0) {
            zzad().zzdd().zzaq("Not bundling data. Service unavailable or out of date");
            zzab().zza(zzqVar, new byte[0]);
        } else {
            zzd(new zzep(this, zzajVar, str, zzqVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdd zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzap zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeg zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzed zzv() {
        return super.zzv();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaq zzw() {
        return super.zzw();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzfj zzx() {
        return super.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }

    static /* synthetic */ zzam zza(zzeg zzegVar, zzam zzamVar) {
        zzegVar.zzqk = null;
        return null;
    }
}
