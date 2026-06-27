package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

@zzard
/* loaded from: classes2.dex */
public final class zzawm {
    private zzbai zzbtc;
    private zztz zzdto;
    private zzbbh<ArrayList<String>> zzdtv;
    private Context zzlj;
    private final Object lock = new Object();
    private final zzaxc zzdtp = new zzaxc();
    private final zzawu zzdsw = new zzawu(zzyt.zzpf(), this.zzdtp);
    private boolean zzxs = false;
    private zzacy zzdtq = null;
    private Boolean zzdtr = null;
    private final AtomicInteger zzdts = new AtomicInteger(0);
    private final zzawp zzdtt = new zzawp(null);
    private final Object zzdtu = new Object();

    public final zzacy zzuw() {
        zzacy zzacyVar;
        synchronized (this.lock) {
            zzacyVar = this.zzdtq;
        }
        return zzacyVar;
    }

    public final void zza(Boolean bool) {
        synchronized (this.lock) {
            this.zzdtr = bool;
        }
    }

    public final Boolean zzux() {
        Boolean bool;
        synchronized (this.lock) {
            bool = this.zzdtr;
        }
        return bool;
    }

    public final void zzuy() {
        this.zzdtt.zzuy();
    }

    @TargetApi(23)
    public final void zzd(Context context, zzbai zzbaiVar) {
        synchronized (this.lock) {
            if (!this.zzxs) {
                this.zzlj = context.getApplicationContext();
                this.zzbtc = zzbaiVar;
                com.google.android.gms.ads.internal.zzk.zzlj().zza(this.zzdsw);
                zzacy zzacyVar = null;
                this.zzdtp.zza(this.zzlj, null, true);
                zzaqx.zzc(this.zzlj, this.zzbtc);
                this.zzdto = new zztz(context.getApplicationContext(), this.zzbtc);
                com.google.android.gms.ads.internal.zzk.zzlp();
                if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcmx)).booleanValue()) {
                    zzawz.zzds("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                } else {
                    zzacyVar = new zzacy();
                }
                this.zzdtq = zzacyVar;
                if (this.zzdtq != null) {
                    zzbao.zza(new zzawo(this).zzvi(), "AppState.registerCsiReporter");
                }
                this.zzxs = true;
                zzvd();
            }
        }
        com.google.android.gms.ads.internal.zzk.zzlg().zzq(context, zzbaiVar.zzbsx);
    }

    public final Resources getResources() {
        if (this.zzbtc.zzdze) {
            return this.zzlj.getResources();
        }
        try {
            zzbae.zzbl(this.zzlj).getResources();
            return null;
        } catch (zzbag e) {
            zzbad.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zza(Throwable th, String str) {
        zzaqx.zzc(this.zzlj, this.zzbtc).zza(th, str);
    }

    public final void zzb(Throwable th, String str) {
        zzaqx.zzc(this.zzlj, this.zzbtc).zza(th, str, ((Float) zzyt.zzpe().zzd(zzacu.zzcli)).floatValue());
    }

    public final void zzuz() {
        this.zzdts.incrementAndGet();
    }

    public final void zzva() {
        this.zzdts.decrementAndGet();
    }

    public final int zzvb() {
        return this.zzdts.get();
    }

    public final zzaxb zzvc() {
        zzaxc zzaxcVar;
        synchronized (this.lock) {
            zzaxcVar = this.zzdtp;
        }
        return zzaxcVar;
    }

    public final Context getApplicationContext() {
        return this.zzlj;
    }

    public final zzbbh<ArrayList<String>> zzvd() {
        if (PlatformVersion.isAtLeastJellyBean() && this.zzlj != null) {
            if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcri)).booleanValue()) {
                synchronized (this.zzdtu) {
                    if (this.zzdtv != null) {
                        return this.zzdtv;
                    }
                    zzbbh<ArrayList<String>> zzbbhVarZza = zzaxg.zza(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzawn
                        private final zzawm zzdtw;

                        {
                            this.zzdtw = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zzdtw.zzvf();
                        }
                    });
                    this.zzdtv = zzbbhVarZza;
                    return zzbbhVarZza;
                }
            }
        }
        return zzbar.zzm(new ArrayList());
    }

    @TargetApi(16)
    private static ArrayList<String> zzah(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final zzawu zzve() {
        return this.zzdsw;
    }

    final /* synthetic */ ArrayList zzvf() throws Exception {
        return zzah(zzasq.zzw(this.zzlj));
    }
}
