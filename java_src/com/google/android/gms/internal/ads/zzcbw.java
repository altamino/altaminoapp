package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzcbw extends zzajb implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzadv {
    private zzaar zzfoh;
    private View zzfom;
    private zzbyn zzfpj;
    private boolean zzeky = false;
    private boolean zzfsb = false;

    public zzcbw(zzbyn zzbynVar, zzbyt zzbytVar) {
        this.zzfom = zzbytVar.zzahy();
        this.zzfoh = zzbytVar.getVideoController();
        this.zzfpj = zzbynVar;
        if (zzbytVar.zzahz() != null) {
            zzbytVar.zzahz().zza(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void zza(IObjectWrapper iObjectWrapper, zzajc zzajcVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzeky) {
            zzbad.zzen("Instream ad is destroyed already.");
            zza(zzajcVar, 2);
            return;
        }
        if (this.zzfom == null || this.zzfoh == null) {
            String str = this.zzfom == null ? "can not get video view." : "can not get video controller.";
            zzbad.zzen(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            zza(zzajcVar, 0);
            return;
        }
        if (this.zzfsb) {
            zzbad.zzen("Instream ad should not be used again.");
            zza(zzajcVar, 1);
            return;
        }
        this.zzfsb = true;
        zzajf();
        ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zzfom, new ViewGroup.LayoutParams(-1, -1));
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza(this.zzfom, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzk.zzmd();
        zzbbz.zza(this.zzfom, (ViewTreeObserver.OnScrollChangedListener) this);
        zzajg();
        try {
            zzajcVar.zzrt();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final zzaar getVideoController() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzeky) {
            zzbad.zzen("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.zzfoh;
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void destroy() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzajf();
        zzbyn zzbynVar = this.zzfpj;
        if (zzbynVar != null) {
            zzbynVar.destroy();
        }
        this.zzfpj = null;
        this.zzfom = null;
        this.zzfoh = null;
        this.zzeky = true;
    }

    private final void zzajf() {
        View view = this.zzfom;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.zzfom);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzajg();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzajg();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzre() {
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcbx
            private final zzcbw zzfsc;

            {
                this.zzfsc = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfsc.zzajh();
            }
        });
    }

    private final void zzajg() {
        View view;
        zzbyn zzbynVar = this.zzfpj;
        if (zzbynVar == null || (view = this.zzfom) == null) {
            return;
        }
        zzbynVar.zzb(view, Collections.emptyMap(), Collections.emptyMap(), zzbyn.zzx(this.zzfom));
    }

    private static void zza(zzajc zzajcVar, int i) {
        try {
            zzajcVar.zzcq(i);
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    final /* synthetic */ void zzajh() {
        try {
            destroy();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
