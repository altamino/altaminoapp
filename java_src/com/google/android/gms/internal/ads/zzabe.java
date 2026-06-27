package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

@zzard
/* loaded from: classes2.dex */
public final class zzabe {
    private static final Object lock = new Object();
    private static zzabe zzcjo;
    private zzaab zzcjp;
    private RewardedVideoAd zzcjq;
    private zztw zzcjr;

    public static zzabe zzqf() {
        zzabe zzabeVar;
        synchronized (lock) {
            if (zzcjo == null) {
                zzcjo = new zzabe();
            }
            zzabeVar = zzcjo;
        }
        return zzabeVar;
    }

    /* JADX WARN: Type inference failed for: r3v8, types: [com.google.android.gms.internal.ads.zzabg, com.google.android.gms.internal.ads.zztw] */
    public final void zza(final Context context, String str, zzabi zzabiVar, zztx zztxVar) {
        synchronized (lock) {
            if (this.zzcjp != null) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                zzami.initialize(context, str);
                boolean z = false;
                this.zzcjp = new zzyn(zzyt.zzpb(), context).zzd(context, false);
                this.zzcjp.zza(new zzamo());
                this.zzcjp.zza();
                this.zzcjp.zzb(str, ObjectWrapper.wrap(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.zzabf
                    private final zzabe zzcjs;
                    private final Context zzcjt;

                    {
                        this.zzcjs = this;
                        this.zzcjt = context;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcjs.getRewardedVideoAdInstance(this.zzcjt);
                    }
                }));
                zzacu.initialize(context);
                if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcuw)).booleanValue()) {
                    if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvc)).booleanValue()) {
                        z = true;
                    }
                }
                if (!z) {
                    zzbad.zzen("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                    this.zzcjr = new Object(this) { // from class: com.google.android.gms.internal.ads.zzabg
                        private final zzabe zzcjs;

                        {
                            this.zzcjs = this;
                        }
                    };
                }
            } catch (RemoteException e) {
                zzbad.zzd("MobileAdsSettingManager initialization failed", e);
            }
        }
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (lock) {
            if (this.zzcjq != null) {
                return this.zzcjq;
            }
            this.zzcjq = new zzatj(context, new zzyq(zzyt.zzpb(), context, new zzamo()).zzd(context, false));
            return this.zzcjq;
        }
    }

    public final void setAppVolume(float f) {
        Preconditions.checkArgument(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        Preconditions.checkState(this.zzcjp != null, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzcjp.setAppVolume(f);
        } catch (RemoteException e) {
            zzbad.zzc("Unable to set app volume.", e);
        }
    }

    public final float zzpq() {
        zzaab zzaabVar = this.zzcjp;
        if (zzaabVar == null) {
            return 1.0f;
        }
        try {
            return zzaabVar.zzpq();
        } catch (RemoteException e) {
            zzbad.zzc("Unable to get app volume.", e);
            return 1.0f;
        }
    }

    public final void setAppMuted(boolean z) {
        Preconditions.checkState(this.zzcjp != null, "MobileAds.initialize() must be called prior to setting app muted state.");
        try {
            this.zzcjp.setAppMuted(z);
        } catch (RemoteException e) {
            zzbad.zzc("Unable to set app mute state.", e);
        }
    }

    public final boolean zzpr() {
        zzaab zzaabVar = this.zzcjp;
        if (zzaabVar == null) {
            return false;
        }
        try {
            return zzaabVar.zzpr();
        } catch (RemoteException e) {
            zzbad.zzc("Unable to get app mute state.", e);
            return false;
        }
    }

    public final void openDebugMenu(Context context, String str) {
        Preconditions.checkState(this.zzcjp != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.zzcjp.zzc(ObjectWrapper.wrap(context), str);
        } catch (RemoteException e) {
            zzbad.zzc("Unable to open debug menu.", e);
        }
    }

    public final String getVersionString() {
        Preconditions.checkState(this.zzcjp != null, "MobileAds.initialize() must be called prior to getting version string.");
        try {
            return this.zzcjp.getVersionString();
        } catch (RemoteException e) {
            zzbad.zzc("Unable to get version string.", e);
            return "";
        }
    }

    public final void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        try {
            this.zzcjp.zzbv(cls.getCanonicalName());
        } catch (RemoteException e) {
            zzbad.zzc("Unable to register RtbAdapter", e);
        }
    }

    private zzabe() {
    }
}
