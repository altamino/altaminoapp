package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerVoteAnimBinding implements ViewBinding {

    @NonNull
    private final LottieAnimationView rootView;

    @NonNull
    public final LottieAnimationView voteAnim;

    @NonNull
    public static LiveLayerVoteAnimBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LottieAnimationView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerVoteAnimBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        LottieAnimationView lottieAnimationView = (LottieAnimationView) view;
        return new LiveLayerVoteAnimBinding(lottieAnimationView, lottieAnimationView);
    }

    @NonNull
    public static LiveLayerVoteAnimBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_vote_anim, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerVoteAnimBinding(@NonNull LottieAnimationView lottieAnimationView, @NonNull LottieAnimationView lottieAnimationView2) {
        this.rootView = lottieAnimationView;
        this.voteAnim = lottieAnimationView2;
    }
}
