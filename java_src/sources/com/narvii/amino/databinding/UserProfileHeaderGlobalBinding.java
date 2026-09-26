package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class UserProfileHeaderGlobalBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final BubbleBackground bubble;

    @NonNull
    public final TextView nickname;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final SlideshowView slideshow;

    @NonNull
    public final RelativeLayout userProfileHeader;

    @NonNull
    public static UserProfileHeaderGlobalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileHeaderGlobalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_header_global, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileHeaderGlobalBinding(@NonNull RelativeLayout relativeLayout, @NonNull ThumbImageView thumbImageView, @NonNull BubbleBackground bubbleBackground, @NonNull TextView textView, @NonNull SlideshowView slideshowView, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.avatar = thumbImageView;
        this.bubble = bubbleBackground;
        this.nickname = textView;
        this.slideshow = slideshowView;
        this.userProfileHeader = relativeLayout2;
    }

    @NonNull
    public static UserProfileHeaderGlobalBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.bubble;
            BubbleBackground bubbleBackground = (BubbleBackground) ViewBindings.a(view, R.id.bubble);
            if (bubbleBackground != null) {
                i10 = R.id.nickname;
                TextView textView = (TextView) ViewBindings.a(view, R.id.nickname);
                if (textView != null) {
                    i10 = R.id.slideshow;
                    SlideshowView slideshowView = (SlideshowView) ViewBindings.a(view, R.id.slideshow);
                    if (slideshowView != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        return new UserProfileHeaderGlobalBinding(relativeLayout, thumbImageView, bubbleBackground, textView, slideshowView, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
