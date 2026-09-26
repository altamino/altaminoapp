package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
public final class zzkp extends zze {
    private final zzlm zza;
    private zzfk zzb;
    private volatile Boolean zzc;
    private final zzaw zzd;
    private final zzmi zze;
    private final List<Runnable> zzf;
    private final zzaw zzg;

    final Boolean zzab() {
        return this.zzc;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }

    static /* synthetic */ void zzd(zzkp zzkpVar) {
        zzkpVar.zzt();
        if (zzkpVar.zzah()) {
            zzkpVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzkpVar.zzae();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    protected zzkp(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzf = new ArrayList();
        this.zze = new zzmi(zzhfVar.zzb());
        this.zza = new zzlm(this);
        this.zzd = new zzks(this, zzhfVar);
        this.zzg = new zzlb(this, zzhfVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzak() {
        zzt();
        zzj().zzp().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator<Runnable> it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (RuntimeException e) {
                zzj().zzg().zza("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzal() {
        zzt();
        this.zze.zzb();
        this.zzd.zza(zzbi.zzaj.zza(null).longValue());
    }

    @WorkerThread
    private final boolean zzam() {
        boolean z6;
        zzt();
        zzu();
        if (this.zzc == null) {
            zzt();
            zzu();
            Boolean boolZzn = zzk().zzn();
            boolean z10 = true;
            if (boolZzn == null || !boolZzn.booleanValue()) {
                if (zzg().zzaa() == 1) {
                    z6 = true;
                } else {
                    zzj().zzp().zza("Checking service availability");
                    int iZza = zzq().zza(12451000);
                    if (iZza != 0) {
                        z6 = false;
                        if (iZza != 1) {
                            if (iZza != 2) {
                                if (iZza != 3) {
                                    if (iZza != 9) {
                                        if (iZza != 18) {
                                            zzj().zzu().zza("Unexpected service status", Integer.valueOf(iZza));
                                        } else {
                                            zzj().zzu().zza("Service updating");
                                        }
                                    } else {
                                        zzj().zzu().zza("Service invalid");
                                    }
                                } else {
                                    zzj().zzu().zza("Service disabled");
                                }
                            } else {
                                zzj().zzc().zza("Service container out of date");
                                if (zzq().zzg() >= 17443) {
                                    if (boolZzn != null) {
                                    }
                                }
                            }
                            z10 = false;
                        } else {
                            zzj().zzp().zza("Service missing");
                        }
                        z6 = true;
                        z10 = false;
                    } else {
                        zzj().zzp().zza("Service available");
                    }
                    z6 = true;
                }
                if (!z10 && zze().zzw()) {
                    zzj().zzg().zza("No way to upload. Consider using the full version of Analytics");
                } else if (z6) {
                    zzk().zza(z10);
                }
            }
            this.zzc = Boolean.valueOf(z10);
        }
        return this.zzc.booleanValue();
    }

    @WorkerThread
    private final zzo zzb(boolean z6) {
        return zzg().zza(z6 ? zzj().zzx() : null);
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @WorkerThread
    protected final zzam zzaa() {
        zzt();
        zzu();
        zzfk zzfkVar = this.zzb;
        if (zzfkVar == null) {
            zzad();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzo zzoVarZzb = zzb(false);
        Preconditions.checkNotNull(zzoVarZzb);
        try {
            zzam zzamVarZza = zzfkVar.zza(zzoVarZzb);
            zzal();
            return zzamVarZza;
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to get consents; remote exception", e);
            return null;
        }
    }

    @WorkerThread
    protected final void zzac() {
        zzt();
        zzu();
        zzo zzoVarZzb = zzb(true);
        zzh().zzab();
        zza(new zzla(this, zzoVarZzb));
    }

    @WorkerThread
    final void zzad() {
        zzt();
        zzu();
        if (zzah()) {
            return;
        }
        if (zzam()) {
            this.zza.zza();
            return;
        }
        if (!zze().zzw()) {
            List<ResolveInfo> listQueryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
                this.zza.zza(intent);
                return;
            }
            zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
        }
    }

    @WorkerThread
    public final void zzae() {
        zzt();
        zzu();
        this.zza.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(zza(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    @WorkerThread
    protected final void zzaf() {
        zzt();
        zzu();
        zzo zzoVarZzb = zzb(false);
        zzh().zzaa();
        zza(new zzkv(this, zzoVarZzb));
    }

    @WorkerThread
    protected final void zzag() {
        zzt();
        zzu();
        zza(new zzld(this, zzb(true)));
    }

    @WorkerThread
    public final boolean zzah() {
        zzt();
        zzu();
        if (this.zzb != null) {
            return true;
        }
        return false;
    }

    @WorkerThread
    final boolean zzai() {
        zzt();
        zzu();
        if (!zzam() || zzq().zzg() >= 200900) {
            return true;
        }
        return false;
    }

    @WorkerThread
    final boolean zzaj() {
        zzt();
        zzu();
        if (!zzam() || zzq().zzg() >= zzbi.zzbo.zza(null).intValue()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfl zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfo zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zziq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkh zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkp zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzlx zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    static /* synthetic */ void zza(zzkp zzkpVar, ComponentName componentName) {
        zzkpVar.zzt();
        if (zzkpVar.zzb != null) {
            zzkpVar.zzb = null;
            zzkpVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzkpVar.zzt();
            zzkpVar.zzad();
        }
    }

    @WorkerThread
    public final void zza(com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        zzt();
        zzu();
        zza(new zzkx(this, zzb(false), zzcvVar));
    }

    @WorkerThread
    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        zza(new zzky(this, atomicReference, zzb(false)));
    }

    @WorkerThread
    protected final void zza(com.google.android.gms.internal.measurement.zzcv zzcvVar, String str, String str2) {
        zzt();
        zzu();
        zza(new zzlk(this, str, str2, zzb(false), zzcvVar));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zzad>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        zza(new zzlh(this, atomicReference, str, str2, str3, zzb(false)));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zzmh>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        zza(new zzkt(this, atomicReference, zzb(false), bundle));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zznc>> atomicReference, boolean z6) {
        zzt();
        zzu();
        zza(new zzku(this, atomicReference, zzb(false), z6));
    }

    @WorkerThread
    protected final void zza(com.google.android.gms.internal.measurement.zzcv zzcvVar, String str, String str2, boolean z6) {
        zzt();
        zzu();
        zza(new zzkr(this, str, str2, zzb(false), z6, zzcvVar));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zznc>> atomicReference, String str, String str2, String str3, boolean z6) {
        zzt();
        zzu();
        zza(new zzlj(this, atomicReference, str, str2, str3, zzb(false), z6));
    }

    @WorkerThread
    protected final void zza(zzbg zzbgVar, String str) {
        Preconditions.checkNotNull(zzbgVar);
        zzt();
        zzu();
        zza(new zzlf(this, true, zzb(true), zzh().zza(zzbgVar), zzbgVar, str));
    }

    @WorkerThread
    public final void zza(com.google.android.gms.internal.measurement.zzcv zzcvVar, zzbg zzbgVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(12451000) != 0) {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(zzcvVar, new byte[0]);
        } else {
            zza(new zzle(this, zzbgVar, str, zzcvVar));
        }
    }

    @WorkerThread
    private final void zza(Runnable runnable) throws IllegalStateException {
        zzt();
        if (zzah()) {
            runnable.run();
        } else {
            if (this.zzf.size() >= 1000) {
                zzj().zzg().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzf.add(runnable);
            this.zzg.zza(60000L);
            zzad();
        }
    }

    @WorkerThread
    final void zza(zzfk zzfkVar, AbstractSafeParcelable abstractSafeParcelable, zzo zzoVar) {
        int size;
        zzt();
        zzu();
        int i10 = 100;
        int i11 = 0;
        while (i11 < 1001 && i10 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> listZza = zzh().zza(100);
            if (listZza != null) {
                arrayList.addAll(listZza);
                size = listZza.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            int i12 = 0;
            while (i12 < size2) {
                Object obj = arrayList.get(i12);
                i12++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzbg) {
                    try {
                        zzfkVar.zza((zzbg) abstractSafeParcelable2, zzoVar);
                    } catch (RemoteException e) {
                        zzj().zzg().zza("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zznc) {
                    try {
                        zzfkVar.zza((zznc) abstractSafeParcelable2, zzoVar);
                    } catch (RemoteException e2) {
                        zzj().zzg().zza("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzad) {
                    try {
                        zzfkVar.zza((zzad) abstractSafeParcelable2, zzoVar);
                    } catch (RemoteException e6) {
                        zzj().zzg().zza("Failed to send conditional user property to the service", e6);
                    }
                } else {
                    zzj().zzg().zza("Discarding data. Unrecognized parcel type.");
                }
            }
            i11++;
            i10 = size;
        }
    }

    @WorkerThread
    protected final void zza(zzad zzadVar) {
        Preconditions.checkNotNull(zzadVar);
        zzt();
        zzu();
        zza(new zzli(this, true, zzb(true), zzh().zza(zzadVar), new zzad(zzadVar), zzadVar));
    }

    @WorkerThread
    protected final void zza(boolean z6) {
        zzt();
        zzu();
        if (z6) {
            zzh().zzaa();
        }
        if (zzaj()) {
            zza(new zzlg(this, zzb(false)));
        }
    }

    @WorkerThread
    protected final void zza(zzki zzkiVar) {
        zzt();
        zzu();
        zza(new zzkz(this, zzkiVar));
    }

    @WorkerThread
    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        zza(new zzlc(this, zzb(false), bundle));
    }

    @WorkerThread
    protected final void zza(zzfk zzfkVar) {
        zzt();
        Preconditions.checkNotNull(zzfkVar);
        this.zzb = zzfkVar;
        zzal();
        zzak();
    }

    @WorkerThread
    protected final void zza(zznc zzncVar) {
        zzt();
        zzu();
        zza(new zzkw(this, zzb(true), zzh().zza(zzncVar), zzncVar));
    }
}
