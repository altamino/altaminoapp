package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzaxg;
import com.google.android.gms.internal.ads.zzazt;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbai;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdg;
import com.google.android.gms.internal.ads.zzyt;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@zzard
/* loaded from: classes.dex */
public final class zzg implements zzdc, Runnable {
    private zzbai zzbrc;
    private Context zzlj;
    private final List<Object[]> zzbra = new Vector();
    private final AtomicReference<zzdc> zzbrb = new AtomicReference<>();
    private CountDownLatch zzbrd = new CountDownLatch(1);

    public zzg(Context context, zzbai zzbaiVar) {
        this.zzlj = context;
        this.zzbrc = zzbaiVar;
        zzyt.zzpa();
        if (zzazt.zzwy()) {
            zzaxg.zzc(this);
        } else {
            run();
        }
    }

    private final boolean zzla() throws InterruptedException {
        try {
            this.zzbrd.await();
            return true;
        } catch (InterruptedException e) {
            zzbad.zzd("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private final void zzlb() {
        if (this.zzbra.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.zzbra) {
            if (objArr.length == 1) {
                this.zzbrb.get().zza((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.zzbrb.get().zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzbra.clear();
    }

    private static Context zze(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context) {
        zzdc zzdcVar;
        if (!zzla() || (zzdcVar = this.zzbrb.get()) == null) {
            return "";
        }
        zzlb();
        return zzdcVar.zza(zze(context));
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view, Activity activity) {
        zzdc zzdcVar;
        if (!zzla() || (zzdcVar = this.zzbrb.get()) == null) {
            return "";
        }
        zzlb();
        return zzdcVar.zza(zze(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zzb(View view) {
        zzdc zzdcVar = this.zzbrb.get();
        if (zzdcVar != null) {
            zzdcVar.zzb(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(MotionEvent motionEvent) {
        zzdc zzdcVar = this.zzbrb.get();
        if (zzdcVar != null) {
            zzlb();
            zzdcVar.zza(motionEvent);
        } else {
            this.zzbra.add(new Object[]{motionEvent});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(int i, int i2, int i3) {
        zzdc zzdcVar = this.zzbrb.get();
        if (zzdcVar != null) {
            zzlb();
            zzdcVar.zza(i, i2, i3);
        } else {
            this.zzbra.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        try {
            boolean z2 = this.zzbrc.zzdze;
            if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcpb)).booleanValue() && z2) {
                z = true;
            }
            this.zzbrb.set(zzdg.zza(this.zzbrc.zzbsx, zze(this.zzlj), z));
        } finally {
            this.zzbrd.countDown();
            this.zzlj = null;
            this.zzbrc = null;
        }
    }
}
