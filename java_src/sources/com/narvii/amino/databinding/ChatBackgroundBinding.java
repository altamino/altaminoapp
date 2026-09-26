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
import com.narvii.widget.BlurImageView;
import com.narvii.widget.FullsizeImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatBackgroundBinding implements ViewBinding {

    @NonNull
    public final FullsizeImageView chatBackground;

    @NonNull
    public final FrameLayout chatBgRoot;

    @NonNull
    public final BlurImageView chatBlurBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ChatBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatBackgroundBinding(@NonNull FrameLayout frameLayout, @NonNull FullsizeImageView fullsizeImageView, @NonNull FrameLayout frameLayout2, @NonNull BlurImageView blurImageView) {
        this.rootView = frameLayout;
        this.chatBackground = fullsizeImageView;
        this.chatBgRoot = frameLayout2;
        this.chatBlurBackground = blurImageView;
    }

    @NonNull
    public static ChatBackgroundBinding bind(@NonNull View view) {
        int i10 = R.id.chat_background;
        FullsizeImageView fullsizeImageView = (FullsizeImageView) ViewBindings.a(view, R.id.chat_background);
        if (fullsizeImageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            BlurImageView blurImageView = (BlurImageView) ViewBindings.a(view, R.id.chat_blur_background);
            if (blurImageView != null) {
                return new ChatBackgroundBinding(frameLayout, fullsizeImageView, frameLayout, blurImageView);
            }
            i10 = R.id.chat_blur_background;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
