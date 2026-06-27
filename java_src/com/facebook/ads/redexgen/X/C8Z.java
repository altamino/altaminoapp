package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;
import com.narvii.scene.poll.ScenePollPlayView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8Z implements Animation.AnimationListener {
    public final /* synthetic */ C03588c A00;

    public C8Z(C03588c c03588c) {
        this.A00 = c03588c;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        new Handler().postDelayed(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.8Y
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                if (!this.A00.A00.A02) {
                    return;
                }
                this.A00.A00.A05();
            }
        }, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
