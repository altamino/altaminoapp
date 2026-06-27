package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;

@zzard
/* loaded from: classes2.dex */
public final class zzabb {
    private final zzyc zzaaj;
    private VideoOptions zzbqg;
    private boolean zzbqn;
    private AppEventListener zzbqp;
    private zzxr zzcgi;
    private AdListener zzcgl;
    private AdSize[] zzchj;
    private String zzchk;
    private final zzamo zzcjc;
    private final AtomicBoolean zzcjd;
    private final VideoController zzcje;

    @VisibleForTesting
    private final zzyv zzcjf;
    private Correlator zzcjg;
    private zzzk zzcjh;
    private OnCustomRenderedAdLoadedListener zzcji;
    private ViewGroup zzcjj;
    private int zzcjk;

    private static boolean zzcp(int i) {
        return i == 1;
    }

    public zzabb(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzyc.zzche, 0);
    }

    public zzabb(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzyc.zzche, i);
    }

    public zzabb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzyc.zzche, 0);
    }

    public zzabb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzyc.zzche, i);
    }

    @VisibleForTesting
    private zzabb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzyc zzycVar, zzzk zzzkVar, int i) {
        this.zzcjc = new zzamo();
        this.zzcje = new VideoController();
        this.zzcjf = new zzabc(this);
        this.zzcjj = viewGroup;
        this.zzaaj = zzycVar;
        this.zzcjh = null;
        this.zzcjd = new AtomicBoolean(false);
        this.zzcjk = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzyg zzygVar = new zzyg(context, attributeSet);
                this.zzchj = zzygVar.zzs(z);
                this.zzchk = zzygVar.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzazt zzaztVarZzpa = zzyt.zzpa();
                    AdSize adSize = this.zzchj[0];
                    int i2 = this.zzcjk;
                    zzyd zzydVar = new zzyd(context, adSize);
                    zzydVar.zzchi = zzcp(i2);
                    zzaztVarZzpa.zza(viewGroup, zzydVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzyt.zzpa().zza(viewGroup, new zzyd(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    @VisibleForTesting
    private zzabb(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzyc zzycVar, int i) {
        this(viewGroup, attributeSet, z, zzycVar, null, i);
    }

    public final void destroy() {
        try {
            if (this.zzcjh != null) {
                this.zzcjh.destroy();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.zzcgl;
    }

    public final AdSize getAdSize() {
        zzyd zzydVarZzpn;
        try {
            if (this.zzcjh != null && (zzydVarZzpn = this.zzcjh.zzpn()) != null) {
                return com.google.android.gms.ads.zzb.zza(zzydVarZzpn.width, zzydVarZzpn.height, zzydVarZzpn.zzaap);
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.zzchj;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzchj;
    }

    public final String getAdUnitId() {
        zzzk zzzkVar;
        if (this.zzchk == null && (zzzkVar = this.zzcjh) != null) {
            try {
                this.zzchk = zzzkVar.getAdUnitId();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
        return this.zzchk;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbqp;
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcji;
    }

    public final void zza(zzaaz zzaazVar) {
        zzzk zzzkVarZzd;
        try {
            if (this.zzcjh == null) {
                if ((this.zzchj == null || this.zzchk == null) && this.zzcjh == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzcjj.getContext();
                zzyd zzydVarZza = zza(context, this.zzchj, this.zzcjk);
                if ("search_v2".equals(zzydVarZza.zzaap)) {
                    zzzkVarZzd = new zzyk(zzyt.zzpb(), context, zzydVarZza, this.zzchk).zzd(context, false);
                } else {
                    zzzkVarZzd = new zzyi(zzyt.zzpb(), context, zzydVarZza, this.zzchk, this.zzcjc).zzd(context, false);
                }
                this.zzcjh = zzzkVarZzd;
                this.zzcjh.zzb(new zzxv(this.zzcjf));
                if (this.zzcgi != null) {
                    this.zzcjh.zza(new zzxs(this.zzcgi));
                }
                if (this.zzbqp != null) {
                    this.zzcjh.zza(new zzyf(this.zzbqp));
                }
                if (this.zzcji != null) {
                    this.zzcjh.zza(new zzadr(this.zzcji));
                }
                if (this.zzcjg != null) {
                    this.zzcjh.zzb(this.zzcjg.zzdf());
                }
                if (this.zzbqg != null) {
                    this.zzcjh.zza(new zzacd(this.zzbqg));
                }
                this.zzcjh.setManualImpressionsEnabled(this.zzbqn);
                try {
                    IObjectWrapper iObjectWrapperZzpl = this.zzcjh.zzpl();
                    if (iObjectWrapperZzpl != null) {
                        this.zzcjj.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzpl));
                    }
                } catch (RemoteException e) {
                    zzbad.zze("#007 Could not call remote method.", e);
                }
            }
            if (this.zzcjh.zzb(zzyc.zza(this.zzcjj.getContext(), zzaazVar))) {
                this.zzcjc.zzf(zzaazVar.zzqa());
            }
        } catch (RemoteException e2) {
            zzbad.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void pause() {
        try {
            if (this.zzcjh != null) {
                this.zzcjh.pause();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void recordManualImpression() {
        if (this.zzcjd.getAndSet(true)) {
            return;
        }
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zzpm();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void resume() {
        try {
            if (this.zzcjh != null) {
                this.zzcjh.resume();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzcgl = adListener;
        this.zzcjf.zza(adListener);
    }

    public final void zza(zzxr zzxrVar) {
        try {
            this.zzcgi = zzxrVar;
            if (this.zzcjh != null) {
                this.zzcjh.zza(zzxrVar != null ? new zzxs(zzxrVar) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzchj != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzchj = adSizeArr;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zza(zza(this.zzcjj.getContext(), this.zzchj, this.zzcjk));
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
        this.zzcjj.requestLayout();
    }

    public final void setAdUnitId(String str) {
        if (this.zzchk != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.zzchk = str;
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbqp = appEventListener;
            if (this.zzcjh != null) {
                this.zzcjh.zza(appEventListener != null ? new zzyf(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcji = onCustomRenderedAdLoadedListener;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zza(onCustomRenderedAdLoadedListener != null ? new zzadr(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbqn = z;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.setManualImpressionsEnabled(this.zzbqn);
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzcjg = correlator;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zzb(this.zzcjg == null ? null : this.zzcjg.zzdf());
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzcjh != null) {
                return this.zzcjh.zzpj();
            }
            return null;
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final boolean isLoading() {
        try {
            if (this.zzcjh != null) {
                return this.zzcjh.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final VideoController getVideoController() {
        return this.zzcje;
    }

    public final zzaar zzdh() {
        zzzk zzzkVar = this.zzcjh;
        if (zzzkVar == null) {
            return null;
        }
        try {
            return zzzkVar.getVideoController();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzbqg = videoOptions;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zza(videoOptions == null ? null : new zzacd(videoOptions));
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbqg;
    }

    public final boolean zza(zzzk zzzkVar) {
        if (zzzkVar == null) {
            return false;
        }
        try {
            IObjectWrapper iObjectWrapperZzpl = zzzkVar.zzpl();
            if (iObjectWrapperZzpl == null || ((View) ObjectWrapper.unwrap(iObjectWrapperZzpl)).getParent() != null) {
                return false;
            }
            this.zzcjj.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzpl));
            this.zzcjh = zzzkVar;
            return true;
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    private static zzyd zza(Context context, AdSize[] adSizeArr, int i) {
        zzyd zzydVar = new zzyd(context, adSizeArr);
        zzydVar.zzchi = zzcp(i);
        return zzydVar;
    }
}
