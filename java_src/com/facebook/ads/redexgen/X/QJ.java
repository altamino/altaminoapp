package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public interface QJ {
    boolean A3w();

    boolean A3x();

    int getCurrentPositionInMillis();

    boolean getGlobalVisibleRect(Rect rect);

    long getInitialBufferTime();

    int getMeasuredHeight();

    int getMeasuredWidth();

    EnumC0697Lh getVideoStartReason();

    @Nullable
    View getView();

    float getVolume();
}
