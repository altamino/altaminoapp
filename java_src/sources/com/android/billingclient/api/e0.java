package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzl;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
final class e0 implements ServiceConnection {
    final /* synthetic */ e zza;
    private final Object zzb = new Object();
    private boolean zzc = false;
    private f zzd;

    /* synthetic */ e0(e eVar, f fVar, d0 d0Var) {
        this.zza = eVar;
        this.zzd = fVar;
    }

    private final void p(h hVar) {
        synchronized (this.zzb) {
            try {
                f fVar = this.zzd;
                if (fVar != null) {
                    fVar.onBillingSetupFinished(hVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    final /* synthetic */ Object m() throws Exception {
        Bundle bundle;
        int i10;
        int iZzv;
        synchronized (this.zzb) {
            try {
                if (!this.zzc) {
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                    }
                    int i11 = 3;
                    try {
                        String packageName = this.zza.zze.getPackageName();
                        iZzv = 3;
                        int i12 = 21;
                        while (true) {
                            if (i12 < 3) {
                                i12 = 0;
                                break;
                            }
                            if (bundle == null) {
                                try {
                                    iZzv = this.zza.zzg.zzv(i12, packageName, "subs");
                                } catch (Exception e) {
                                    e = e;
                                    i11 = iZzv;
                                    zzb.zzl("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                    this.zza.zza = 0;
                                    this.zza.zzg = null;
                                    i10 = 42;
                                    iZzv = i11;
                                }
                            } else {
                                iZzv = this.zza.zzg.zzc(i12, packageName, "subs", bundle);
                            }
                            if (iZzv == 0) {
                                zzb.zzj("BillingClient", "highestLevelSupportedForSubs: " + i12);
                                break;
                            }
                            i12--;
                        }
                        boolean z6 = true;
                        this.zza.zzj = i12 >= 5;
                        this.zza.zzi = i12 >= 3;
                        if (i12 < 3) {
                            zzb.zzj("BillingClient", "In-app billing API does not support subscription on this device.");
                            i10 = 9;
                        } else {
                            i10 = 1;
                        }
                        for (int i13 = 21; i13 >= 3; i13--) {
                            iZzv = bundle == null ? this.zza.zzg.zzv(i13, packageName, "inapp") : this.zza.zzg.zzc(i13, packageName, "inapp", bundle);
                            if (iZzv == 0) {
                                this.zza.zzk = i13;
                                zzb.zzj("BillingClient", "mHighestLevelSupportedForInApp: " + this.zza.zzk);
                                break;
                            }
                        }
                        e eVar = this.zza;
                        eVar.zzx = eVar.zzk >= 21;
                        e eVar2 = this.zza;
                        eVar2.zzw = eVar2.zzk >= 20;
                        e eVar3 = this.zza;
                        eVar3.zzv = eVar3.zzk >= 19;
                        e eVar4 = this.zza;
                        eVar4.zzu = eVar4.zzk >= 18;
                        e eVar5 = this.zza;
                        eVar5.zzt = eVar5.zzk >= 17;
                        e eVar6 = this.zza;
                        eVar6.zzs = eVar6.zzk >= 16;
                        e eVar7 = this.zza;
                        eVar7.zzr = eVar7.zzk >= 15;
                        e eVar8 = this.zza;
                        eVar8.zzq = eVar8.zzk >= 14;
                        e eVar9 = this.zza;
                        eVar9.zzp = eVar9.zzk >= 12;
                        e eVar10 = this.zza;
                        eVar10.zzo = eVar10.zzk >= 10;
                        e eVar11 = this.zza;
                        eVar11.zzn = eVar11.zzk >= 9;
                        e eVar12 = this.zza;
                        eVar12.zzm = eVar12.zzk >= 8;
                        e eVar13 = this.zza;
                        if (eVar13.zzk < 6) {
                            z6 = false;
                        }
                        eVar13.zzl = z6;
                        if (this.zza.zzk < 3) {
                            zzb.zzk("BillingClient", "In-app billing API version 3 is not supported on this device.");
                            i10 = 36;
                        }
                        if (iZzv == 0) {
                            this.zza.zza = 2;
                            if (this.zza.zzd != null) {
                                t1 t1Var = this.zza.zzd;
                                this.zza.zze.getPackageName();
                                t1Var.f(false);
                            }
                        } else {
                            this.zza.zza = 0;
                            this.zza.zzg = null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                    if (iZzv == 0) {
                        this.zza.zzf.c(m0.b(6));
                        p(p0.zzl);
                    } else {
                        n0 n0Var = this.zza.zzf;
                        h hVar = p0.zza;
                        n0Var.a(m0.a(i10, 6, hVar));
                        p(hVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }

    final /* synthetic */ void n() {
        this.zza.zza = 0;
        this.zza.zzg = null;
        n0 n0Var = this.zza.zzf;
        h hVar = p0.zzn;
        n0Var.a(m0.a(24, 6, hVar));
        p(hVar);
    }

    final void o() {
        synchronized (this.zzb) {
            this.zzd = null;
            this.zzc = true;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzb.zzj("BillingClient", "Billing service connected.");
        this.zza.zzg = zzl.zzr(iBinder);
        Callable callable = new Callable() { // from class: com.android.billingclient.api.b0
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zza.m();
                return null;
            }
        };
        Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.n();
            }
        };
        e eVar = this.zza;
        if (eVar.J(callable, 30000L, runnable, eVar.E()) == null) {
            e eVar2 = this.zza;
            h hVarH = eVar2.H();
            eVar2.zzf.a(m0.a(25, 6, hVarH));
            p(hVarH);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzb.zzk("BillingClient", "Billing service disconnected.");
        this.zza.zzf.b(zziz.zzw());
        this.zza.zzg = null;
        this.zza.zza = 0;
        synchronized (this.zzb) {
            try {
                f fVar = this.zzd;
                if (fVar != null) {
                    fVar.onBillingServiceDisconnected();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
