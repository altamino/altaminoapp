package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6s, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public interface InterfaceC03236s {
    void A3p();

    boolean A3r();

    void A77();

    void A78(EnumC0697Lh enumC0697Lh);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC0697Lh getStartReason();

    EnumC03216q getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void pause(boolean z);

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(@Nullable String str);

    void setVideoStateChangeListener(QI qi);

    void setup(Uri uri);

    void stop();
}
