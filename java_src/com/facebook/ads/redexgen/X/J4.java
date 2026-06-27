package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;
import com.narvii.scene.poll.ScenePollPlayView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class J4 implements Animation.AnimationListener {
    public final /* synthetic */ J1 A00;

    public J4(J1 j1) {
        this.A00 = j1;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        new Handler().postDelayed(new J5(this), ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
