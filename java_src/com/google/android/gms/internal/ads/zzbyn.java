package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbyn extends zzbpc {
    private final zzbai zzbtc;
    private final zzdh zzeko;
    private final Executor zzffv;
    private final zzbzc zzfgz;
    private final zzavf zzfio;
    private final zzbyt zzfmq;
    private final zzbzb zzfno;
    private final zzbzl zzfnp;
    private final zzbyx zzfnq;
    private final zzdte<zzccb> zzfnr;
    private final zzdte<zzcbz> zzfns;
    private final zzdte<zzccg> zzfnt;
    private final zzdte<zzcbw> zzfnu;
    private final zzdte<zzccd> zzfnv;
    private zzcab zzfnw;
    private boolean zzfnx;
    private final Context zzlj;

    public zzbyn(Executor executor, zzbyt zzbytVar, zzbzb zzbzbVar, zzbzl zzbzlVar, zzbyx zzbyxVar, zzbzc zzbzcVar, zzdte<zzccb> zzdteVar, zzdte<zzcbz> zzdteVar2, zzdte<zzccg> zzdteVar3, zzdte<zzcbw> zzdteVar4, zzdte<zzccd> zzdteVar5, zzavf zzavfVar, zzdh zzdhVar, zzbai zzbaiVar, Context context) {
        this.zzffv = executor;
        this.zzfmq = zzbytVar;
        this.zzfno = zzbzbVar;
        this.zzfnp = zzbzlVar;
        this.zzfnq = zzbyxVar;
        this.zzfgz = zzbzcVar;
        this.zzfnr = zzdteVar;
        this.zzfns = zzdteVar2;
        this.zzfnt = zzdteVar3;
        this.zzfnu = zzdteVar4;
        this.zzfnv = zzdteVar5;
        this.zzfio = zzavfVar;
        this.zzeko = zzdhVar;
        this.zzbtc = zzbaiVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzafl() {
        this.zzffv.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbyo
            private final zzbyn zzfny;

            {
                this.zzfny = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfny.zzahu();
            }
        });
        if (this.zzfmq.zzahv() != 7) {
            Executor executor = this.zzffv;
            zzbzb zzbzbVar = this.zzfno;
            zzbzbVar.getClass();
            executor.execute(zzbyp.zza(zzbzbVar));
        }
        super.zzafl();
    }

    public final synchronized void zzfi(String str) {
        this.zzfno.zzfi(str);
    }

    public final synchronized void zzahk() {
        if (this.zzfnx) {
            return;
        }
        this.zzfno.zzahk();
    }

    public final synchronized void zzf(Bundle bundle) {
        this.zzfno.zzf(bundle);
    }

    public final synchronized boolean zzh(Bundle bundle) {
        if (this.zzfnx) {
            return true;
        }
        boolean zZzh = this.zzfno.zzh(bundle);
        this.zzfnx = zZzh;
        return zZzh;
    }

    public final synchronized void zzg(Bundle bundle) {
        this.zzfno.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final synchronized void destroy() {
        this.zzffv.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbyq
            private final zzbyn zzfny;

            {
                this.zzfny = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfny.zzaht();
            }
        });
        super.destroy();
    }

    public final synchronized void zza(zzcab zzcabVar) {
        zzdc zzdcVarZzcg;
        this.zzfnw = zzcabVar;
        this.zzfnp.zzc(zzcabVar);
        this.zzfno.zza(zzcabVar.zzafi(), zzcabVar.zzaiu(), zzcabVar.zzaiv(), zzcabVar, zzcabVar);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcrg)).booleanValue() && (zzdcVarZzcg = this.zzeko.zzcg()) != null) {
            zzdcVarZzcg.zzb(zzcabVar.zzafi());
        }
        if (zzcabVar.zzais() != null) {
            zzcabVar.zzais().zza(this.zzfio);
        }
    }

    public final synchronized void zzb(zzcab zzcabVar) {
        this.zzfno.zza(zzcabVar.zzafi(), zzcabVar.zzait());
        if (zzcabVar.zzair() != null) {
            zzcabVar.zzair().setClickable(false);
            zzcabVar.zzair().removeAllViews();
        }
        if (zzcabVar.zzais() != null) {
            zzcabVar.zzais().zzb(this.zzfio);
        }
        this.zzfnw = null;
    }

    public final synchronized void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwq)).booleanValue()) {
            this.zzfnp.zzd(this.zzfnw);
        }
        this.zzfno.zza(view, view2, map, map2, z);
    }

    public final synchronized void zza(View view, MotionEvent motionEvent, View view2) {
        this.zzfno.zza(view, motionEvent, view2);
    }

    public final synchronized void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.zzfnx) {
            return;
        }
        if (z) {
            this.zzfno.zza(view, map, map2);
            this.zzfnx = true;
            return;
        }
        if (!z) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsl)).booleanValue() && map != null) {
                Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    View view2 = it.next().getValue().get();
                    if (view2 != null && zzx(view2)) {
                        this.zzfno.zza(view, map, map2);
                        this.zzfnx = true;
                        return;
                    }
                }
            }
        }
    }

    public final synchronized void setClickConfirmingView(View view) {
        this.zzfno.setClickConfirmingView(view);
    }

    public final synchronized void zza(zzagd zzagdVar) {
        this.zzfno.zza(zzagdVar);
    }

    public final synchronized void cancelUnconfirmedClick() {
        this.zzfno.cancelUnconfirmedClick();
    }

    public final synchronized void zza(zzaak zzaakVar) {
        this.zzfno.zza(zzaakVar);
    }

    public final synchronized void zza(zzaag zzaagVar) {
        this.zzfno.zza(zzaagVar);
    }

    public final synchronized void zzro() {
        this.zzfno.zzro();
    }

    public final synchronized void recordCustomClickGesture() {
        if (this.zzfnw == null) {
            zzbad.zzdp("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = this.zzfnw instanceof zzbzi;
            this.zzffv.execute(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzbyr
                private final boolean zzecm;
                private final zzbyn zzfny;

                {
                    this.zzfny = this;
                    this.zzecm = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfny.zzay(this.zzecm);
                }
            });
        }
    }

    public static boolean zzx(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    public final boolean zzahs() {
        return this.zzfnq.zzaif();
    }

    private final void zzfk(String str) {
        String str2;
        View view;
        if (this.zzfnq.zzaih()) {
            zzbgz zzbgzVarZzaia = this.zzfmq.zzaia();
            zzbgz zzbgzVarZzahz = this.zzfmq.zzahz();
            if (zzbgzVarZzaia == null && zzbgzVarZzahz == null) {
                return;
            }
            boolean z = zzbgzVarZzaia != null;
            boolean z2 = zzbgzVarZzahz != null;
            String str3 = null;
            if (z) {
                str2 = str3;
            } else if (z2) {
                str3 = "javascript";
                zzbgzVarZzaia = zzbgzVarZzahz;
                str2 = str3;
            } else {
                zzbgzVarZzaia = null;
                str2 = null;
            }
            if (zzbgzVarZzaia.getWebView() != null && com.google.android.gms.ads.internal.zzk.zzlv().zzl(this.zzlj)) {
                zzbai zzbaiVar = this.zzbtc;
                int i = zzbaiVar.zzdzc;
                int i2 = zzbaiVar.zzdzd;
                StringBuilder sb = new StringBuilder(23);
                sb.append(i);
                sb.append(".");
                sb.append(i2);
                IObjectWrapper iObjectWrapperZza = com.google.android.gms.ads.internal.zzk.zzlv().zza(sb.toString(), zzbgzVarZzaia.getWebView(), "", "javascript", str2, str);
                if (iObjectWrapperZza == null) {
                    return;
                }
                this.zzfmq.zzan(iObjectWrapperZza);
                zzbgzVarZzaia.zzam(iObjectWrapperZza);
                if (z2 && (view = zzbgzVarZzahz.getView()) != null) {
                    com.google.android.gms.ads.internal.zzk.zzlv().zza(iObjectWrapperZza, view);
                }
                com.google.android.gms.ads.internal.zzk.zzlv().zzaa(iObjectWrapperZza);
            }
        }
    }

    public final void zzy(View view) {
        IObjectWrapper iObjectWrapperZzaib = this.zzfmq.zzaib();
        boolean z = this.zzfmq.zzaia() != null;
        if (!this.zzfnq.zzaih() || iObjectWrapperZzaib == null || !z || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlv().zza(iObjectWrapperZzaib, view);
    }

    public final zzaee zzrp() {
        return new zzbym(this.zzfmq);
    }

    final /* synthetic */ void zzay(boolean z) {
        this.zzfno.zza(this.zzfnw.zzafi(), this.zzfnw.zzait(), this.zzfnw.zzaiu(), z);
    }

    final /* synthetic */ void zzaht() {
        this.zzfno.destroy();
        this.zzfmq.destroy();
    }

    final /* synthetic */ void zzahu() {
        try {
            int iZzahv = this.zzfmq.zzahv();
            if (iZzahv == 1) {
                if (this.zzfgz.zzaii() != null) {
                    zzfk("Google");
                    this.zzfgz.zzaii().zza(this.zzfnr.get());
                    return;
                }
                return;
            }
            if (iZzahv == 2) {
                if (this.zzfgz.zzaij() != null) {
                    zzfk("Google");
                    this.zzfgz.zzaij().zza(this.zzfns.get());
                    return;
                }
                return;
            }
            if (iZzahv == 3) {
                if (this.zzfgz.zzfn(this.zzfmq.getCustomTemplateId()) != null) {
                    this.zzfgz.zzfn(this.zzfmq.getCustomTemplateId()).zzb(this.zzfnv.get());
                }
            } else {
                if (iZzahv == 6) {
                    if (this.zzfgz.zzaik() != null) {
                        zzfk("Google");
                        this.zzfgz.zzaik().zza(this.zzfnt.get());
                        return;
                    }
                    return;
                }
                if (iZzahv == 7) {
                    if (this.zzfgz.zzaim() != null) {
                        this.zzfgz.zzaim().zza(this.zzfnu.get());
                        return;
                    }
                    return;
                }
                zzbad.zzen("Wrong native template id!");
            }
        } catch (RemoteException e) {
            zzbad.zzc("RemoteException when notifyAdLoad is called", e);
        }
    }
}
