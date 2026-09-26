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
import com.narvii.chat.video.view.RippleChildView;
import com.narvii.chat.video.view.RippleView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class AvChatJoinButtonLayoutBinding implements ViewBinding {

    @NonNull
    public final RippleChildView disableBg;

    @NonNull
    public final ImageView joinIndicator;

    @NonNull
    public final SpinningView joinLoading;

    @NonNull
    public final RippleView rippleBg;

    @NonNull
    public final RippleChildView rippleHolder;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AvChatJoinButtonLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AvChatJoinButtonLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.av_chat_join_button_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AvChatJoinButtonLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RippleChildView rippleChildView, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull RippleView rippleView, @NonNull RippleChildView rippleChildView2) {
        this.rootView = frameLayout;
        this.disableBg = rippleChildView;
        this.joinIndicator = imageView;
        this.joinLoading = spinningView;
        this.rippleBg = rippleView;
        this.rippleHolder = rippleChildView2;
    }

    @NonNull
    public static AvChatJoinButtonLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.disable_bg;
        RippleChildView rippleChildView = (RippleChildView) ViewBindings.a(view, R.id.disable_bg);
        if (rippleChildView != null) {
            i10 = R.id.join_indicator;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.join_indicator);
            if (imageView != null) {
                i10 = R.id.join_loading;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.join_loading);
                if (spinningView != null) {
                    i10 = R.id.ripple_bg;
                    RippleView rippleView = (RippleView) ViewBindings.a(view, R.id.ripple_bg);
                    if (rippleView != null) {
                        i10 = R.id.ripple_holder;
                        RippleChildView rippleChildView2 = (RippleChildView) ViewBindings.a(view, R.id.ripple_holder);
                        if (rippleChildView2 != null) {
                            return new AvChatJoinButtonLayoutBinding((FrameLayout) view, rippleChildView, imageView, spinningView, rippleView, rippleChildView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
