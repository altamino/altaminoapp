package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzabd {
    private final zzyc zzaaj;
    private AppEventListener zzbqp;
    private boolean zzbrk;
    private zzxr zzcgi;
    private AdListener zzcgl;
    private AdMetadataListener zzcgm;
    private String zzchk;
    private final zzamo zzcjc;
    private Correlator zzcjg;
    private zzzk zzcjh;
    private OnCustomRenderedAdLoadedListener zzcji;
    private RewardedVideoAdListener zzcjm;
    private boolean zzcjn;
    private final Context zzlj;

    public zzabd(Context context) {
        this(context, zzyc.zzche, null);
    }

    public zzabd(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, zzyc.zzche, publisherInterstitialAd);
    }

    @VisibleForTesting
    private zzabd(Context context, zzyc zzycVar, PublisherInterstitialAd publisherInterstitialAd) {
        this.zzcjc = new zzamo();
        this.zzlj = context;
        this.zzaaj = zzycVar;
    }

    public final AdListener getAdListener() {
        return this.zzcgl;
    }

    public final String getAdUnitId() {
        return this.zzchk;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbqp;
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcji;
    }

    public final boolean isLoaded() {
        try {
            if (this.zzcjh == null) {
                return false;
            }
            return this.zzcjh.isReady();
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    public final boolean isLoading() {
        try {
            if (this.zzcjh == null) {
                return false;
            }
            return this.zzcjh.isLoading();
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    public final void zza(zzaaz zzaazVar) {
        try {
            if (this.zzcjh == null) {
                if (this.zzchk == null) {
                    zzce("loadAd");
                }
                zzyd zzydVarZzou = this.zzcjn ? zzyd.zzou() : new zzyd();
                zzyh zzyhVarZzpb = zzyt.zzpb();
                Context context = this.zzlj;
                this.zzcjh = new zzyl(zzyhVarZzpb, context, zzydVarZzou, this.zzchk, this.zzcjc).zzd(context, false);
                if (this.zzcgl != null) {
                    this.zzcjh.zzb(new zzxv(this.zzcgl));
                }
                if (this.zzcgi != null) {
                    this.zzcjh.zza(new zzxs(this.zzcgi));
                }
                if (this.zzcgm != null) {
                    this.zzcjh.zza(new zzxy(this.zzcgm));
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
                if (this.zzcjm != null) {
                    this.zzcjh.zza(new zzatg(this.zzcjm));
                }
                this.zzcjh.setImmersiveMode(this.zzbrk);
            }
            if (this.zzcjh.zzb(zzyc.zza(this.zzlj, zzaazVar))) {
                this.zzcjc.zzf(zzaazVar.zzqa());
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        try {
            this.zzcgl = adListener;
            if (this.zzcjh != null) {
                this.zzcjh.zzb(adListener != null ? new zzxv(adListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zza(zzxr zzxrVar) {
        try {
            this.zzcgi = zzxrVar;
            if (this.zzcjh != null) {
                this.zzcjh.zza(zzxrVar != null ? new zzxs(zzxrVar) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setAdUnitId(String str) {
        if (this.zzchk != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.zzchk = str;
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        try {
            this.zzcgm = adMetadataListener;
            if (this.zzcjh != null) {
                this.zzcjh.zza(adMetadataListener != null ? new zzxy(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final Bundle getAdMetadata() {
        try {
            if (this.zzcjh != null) {
                return this.zzcjh.getAdMetadata();
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
        return new Bundle();
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbqp = appEventListener;
            if (this.zzcjh != null) {
                this.zzcjh.zza(appEventListener != null ? new zzyf(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.zzcji = onCustomRenderedAdLoadedListener;
            if (this.zzcjh != null) {
                this.zzcjh.zza(onCustomRenderedAdLoadedListener != null ? new zzadr(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzcjg = correlator;
        try {
            if (this.zzcjh != null) {
                this.zzcjh.zzb(this.zzcjg == null ? null : this.zzcjg.zzdf());
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.zzcjm = rewardedVideoAdListener;
            if (this.zzcjh != null) {
                this.zzcjh.zza(rewardedVideoAdListener != null ? new zzatg(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zzc(boolean z) {
        this.zzcjn = true;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzcjh != null) {
                return this.zzcjh.zzpj();
            }
            return null;
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
            return null;
        }
    }

    public final void show() {
        try {
            zzce("show");
            this.zzcjh.showInterstitial();
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.zzbrk = z;
            if (this.zzcjh != null) {
                this.zzcjh.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            zzbad.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    private final void zzce(String str) {
        if (this.zzcjh != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
        sb.append("The ad unit ID must be set on InterstitialAd before ");
        sb.append(str);
        sb.append(" is called.");
        throw new IllegalStateException(sb.toString());
    }
}
