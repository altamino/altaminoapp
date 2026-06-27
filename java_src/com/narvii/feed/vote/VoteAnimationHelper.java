package com.narvii.feed.vote;

import android.content.Context;
import android.view.View;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.NVActivity;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.particles.ParticlesHelper;
import com.narvii.widget.VoteIcon;

/* loaded from: classes2.dex */
public class VoteAnimationHelper {
    private static int count;
    private static int sessionId;

    public VoteAnimationHelper(Context context) {
    }

    public void startAnimation(final View view, int i, final Callback<Boolean> callback) {
        if (ApplicationSessionHelper.getSessionId() != sessionId) {
            sessionId = ApplicationSessionHelper.getSessionId();
            count = 0;
        }
        ParticlesHelper particlesHelper = new ParticlesHelper();
        if (i == 4) {
            count++;
            int i2 = count;
            if (i2 % 3 == 0) {
                int i3 = (i2 + 5) / 6;
                if (i3 == 1) {
                    particlesHelper.l1();
                } else if (i3 == 2) {
                    particlesHelper.l2();
                } else if (i3 == 3) {
                    particlesHelper.l3();
                } else if (i3 == 4) {
                    particlesHelper.l4();
                } else {
                    particlesHelper.l5();
                }
            } else {
                particlesHelper.resId = VoteIcon.voteIconRes(i);
                particlesHelper.l0();
            }
        } else {
            particlesHelper.resId = VoteIcon.voteIconRes(i);
            particlesHelper.l0();
        }
        particlesHelper.emit(view);
        if (callback != null) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.feed.vote.VoteAnimationHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    if ((view.getContext() instanceof NVActivity) && ((NVActivity) view.getContext()).isDestoryed()) {
                        return;
                    }
                    callback.call(true);
                }
            }, particlesHelper.duration());
        }
    }
}
