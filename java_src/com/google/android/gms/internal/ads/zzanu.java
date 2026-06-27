package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

@zzard
/* loaded from: classes2.dex */
public final class zzanu<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzamv zzdgl;

    public zzanu(zzamv zzamvVar) {
        this.zzdgl = zzamvVar;
    }

    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzbad.zzdp("Adapter called onClick.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzanv(this));
        } else {
            try {
                this.zzdgl.onAdClicked();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzbad.zzdp("Adapter called onDismissScreen.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zzep("#008 Must be called on the main UI thread.");
            zzazt.zzyr.post(new zzany(this));
        } else {
            try {
                this.zzdgl.onAdClosed();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(strValueOf);
        zzbad.zzdp(sb.toString());
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzanz(this, errorCode));
        } else {
            try {
                this.zzdgl.onAdFailedToLoad(zzaog.zza(errorCode));
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzbad.zzdp("Adapter called onLeaveApplication.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaoa(this));
        } else {
            try {
                this.zzdgl.onAdLeftApplication();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzbad.zzdp("Adapter called onPresentScreen.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaob(this));
        } else {
            try {
                this.zzdgl.onAdOpened();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzbad.zzdp("Adapter called onReceivedAd.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaoc(this));
        } else {
            try {
                this.zzdgl.onAdLoaded();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzbad.zzdp("Adapter called onDismissScreen.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaod(this));
        } else {
            try {
                this.zzdgl.onAdClosed();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(strValueOf);
        sb.append(".");
        zzbad.zzdp(sb.toString());
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaoe(this, errorCode));
        } else {
            try {
                this.zzdgl.onAdFailedToLoad(zzaog.zza(errorCode));
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzbad.zzdp("Adapter called onLeaveApplication.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzaof(this));
        } else {
            try {
                this.zzdgl.onAdLeftApplication();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzbad.zzdp("Adapter called onPresentScreen.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzanw(this));
        } else {
            try {
                this.zzdgl.onAdOpened();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzbad.zzdp("Adapter called onReceivedAd.");
        zzyt.zzpa();
        if (!zzazt.zzwy()) {
            zzbad.zze("#008 Must be called on the main UI thread.", null);
            zzazt.zzyr.post(new zzanx(this));
        } else {
            try {
                this.zzdgl.onAdLoaded();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
