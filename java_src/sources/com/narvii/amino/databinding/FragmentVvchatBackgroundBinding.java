package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.widget.FullsizeImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentVvchatBackgroundBinding implements ViewBinding {

    @NonNull
    public final FrameLayout bgRoot;

    @NonNull
    public final FullsizeImageView chatBackground;

    @NonNull
    public final RealtimeBlurView chatBlurBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentVvchatBackgroundBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.chat_background;
        FullsizeImageView fullsizeImageView = (FullsizeImageView) ViewBindings.a(view, R.id.chat_background);
        if (fullsizeImageView != null) {
            i10 = R.id.chat_blur_background;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.chat_blur_background);
            if (realtimeBlurView != null) {
                return new FragmentVvchatBackgroundBinding(frameLayout, frameLayout, fullsizeImageView, realtimeBlurView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentVvchatBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentVvchatBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vvchat_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentVvchatBackgroundBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FullsizeImageView fullsizeImageView, @NonNull RealtimeBlurView realtimeBlurView) {
        this.rootView = frameLayout;
        this.bgRoot = frameLayout2;
        this.chatBackground = fullsizeImageView;
        this.chatBlurBackground = realtimeBlurView;
    }
}
