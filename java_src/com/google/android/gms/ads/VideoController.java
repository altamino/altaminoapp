package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaar;
import com.google.android.gms.internal.ads.zzacc;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzbad;

@zzard
/* loaded from: classes.dex */
public final class VideoController {

    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;

    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;

    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object lock = new Object();
    private zzaar zzaav;
    private VideoLifecycleCallbacks zzaaw;

    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    public final void zza(zzaar zzaarVar) {
        synchronized (this.lock) {
            this.zzaav = zzaarVar;
            if (this.zzaaw != null) {
                setVideoLifecycleCallbacks(this.zzaaw);
            }
        }
    }

    public final zzaar zzdh() {
        zzaar zzaarVar;
        synchronized (this.lock) {
            zzaarVar = this.zzaav;
        }
        return zzaarVar;
    }

    public final void play() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return;
            }
            try {
                this.zzaav.play();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call play on video controller.", e);
            }
        }
    }

    public final void pause() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return;
            }
            try {
                this.zzaav.pause();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call pause on video controller.", e);
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return;
            }
            try {
                this.zzaav.mute(z);
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call mute on video controller.", e);
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return true;
            }
            try {
                return this.zzaav.isMuted();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    @KeepForSdk
    public final int getPlaybackState() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return 0;
            }
            try {
                return this.zzaav.getPlaybackState();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return false;
            }
            try {
                return this.zzaav.isCustomControlsEnabled();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return false;
            }
            try {
                return this.zzaav.isClickToExpandEnabled();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        Preconditions.checkNotNull(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.lock) {
            this.zzaaw = videoLifecycleCallbacks;
            if (this.zzaav == null) {
                return;
            }
            try {
                this.zzaav.zza(new zzacc(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.lock) {
            videoLifecycleCallbacks = this.zzaaw;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzaav != null;
        }
        return z;
    }

    public final float getAspectRatio() {
        synchronized (this.lock) {
            if (this.zzaav == null) {
                return 0.0f;
            }
            try {
                return this.zzaav.getAspectRatio();
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }
}
