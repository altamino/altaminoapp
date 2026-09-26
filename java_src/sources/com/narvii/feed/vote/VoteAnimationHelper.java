package com.narvii.feed.vote;

import android.content.Context;
import android.view.View;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.NVActivity;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.particles.ParticlesHelper;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes10.dex */
public class VoteAnimationHelper {
    private static int count;
    private static int sessionId;

    public VoteAnimationHelper(Context context) {
    }

    public void startAnimation(final View view, int i10, final Callback<Boolean> callback) {
        if (ApplicationSessionHelper.getSessionId() != sessionId) {
            sessionId = ApplicationSessionHelper.getSessionId();
            count = 0;
        }
        ParticlesHelper particlesHelper = new ParticlesHelper();
        if (i10 == 4) {
            int i11 = count;
            int i12 = i11 + 1;
            count = i12;
            if (i12 % 3 == 0) {
                int i13 = (i11 + 6) / 6;
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 != 4) {
                                particlesHelper.l5();
                            } else {
                                particlesHelper.l4();
                            }
                        } else {
                            particlesHelper.l3();
                        }
                    } else {
                        particlesHelper.l2();
                    }
                } else {
                    particlesHelper.l1();
                }
            } else {
                particlesHelper.resId = VoteIcon.voteIconRes(i10);
                particlesHelper.l0();
            }
        } else {
            particlesHelper.resId = VoteIcon.voteIconRes(i10);
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
                    callback.call(Boolean.TRUE);
                }
            }, particlesHelper.duration());
        }
    }
}
