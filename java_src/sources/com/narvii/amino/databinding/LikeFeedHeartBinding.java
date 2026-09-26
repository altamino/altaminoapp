package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class LikeFeedHeartBinding implements ViewBinding {

    @NonNull
    public final ImageView onBoardingHeart;

    @NonNull
    public final FrameLayout onBoardingOverlay;

    @NonNull
    public final SpinningView onBoardingProcess;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LikeFeedHeartBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LikeFeedHeartBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.like_feed_heart, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LikeFeedHeartBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.onBoardingHeart = imageView;
        this.onBoardingOverlay = frameLayout2;
        this.onBoardingProcess = spinningView;
    }

    @NonNull
    public static LikeFeedHeartBinding bind(@NonNull View view) {
        int i10 = R.id.on_boarding_heart;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.on_boarding_heart);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.on_boarding_process);
            if (spinningView != null) {
                return new LikeFeedHeartBinding(frameLayout, imageView, frameLayout, spinningView);
            }
            i10 = R.id.on_boarding_process;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
