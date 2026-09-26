package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.CircleRippleView;
import com.narvii.chat.video.view.CircleView;

/* JADX INFO: loaded from: classes11.dex */
public final class UserSpeakingLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout container;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final CircleRippleView speakingRippleBg;

    @NonNull
    public final CircleView speakingRippleHolder;

    @NonNull
    public static UserSpeakingLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.speaking_ripple_bg;
        CircleRippleView circleRippleView = (CircleRippleView) ViewBindings.a(view, R.id.speaking_ripple_bg);
        if (circleRippleView != null) {
            i10 = R.id.speaking_ripple_holder;
            CircleView circleView = (CircleView) ViewBindings.a(view, R.id.speaking_ripple_holder);
            if (circleView != null) {
                return new UserSpeakingLayoutBinding(frameLayout, frameLayout, circleRippleView, circleView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static UserSpeakingLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserSpeakingLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_speaking_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserSpeakingLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull CircleRippleView circleRippleView, @NonNull CircleView circleView) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
        this.speakingRippleBg = circleRippleView;
        this.speakingRippleHolder = circleView;
    }
}
