package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.post.entry.PostEntrySnakeLayout;
import com.narvii.widget.RoundedRealtimeBlurView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class PostEntryMainLayoutBinding implements ViewBinding {

    @NonNull
    public final RoundedRealtimeBlurView background1;

    @NonNull
    public final RoundedRealtimeBlurView background2;

    @NonNull
    public final RoundedRealtimeBlurView background3;

    @NonNull
    public final ThumbImageView postEntryBtn2;

    @NonNull
    public final RelativeLayout postEntryDialog;

    @NonNull
    public final FrameLayout postEntryDismiss;

    @NonNull
    public final Button postEntryDismissBtn;

    @NonNull
    public final TintButton postEntryIcon;

    @NonNull
    public final PostEntrySnakeLayout postSnakeLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static PostEntryMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEntryMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_entry_main_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEntryMainLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull RoundedRealtimeBlurView roundedRealtimeBlurView, @NonNull RoundedRealtimeBlurView roundedRealtimeBlurView2, @NonNull RoundedRealtimeBlurView roundedRealtimeBlurView3, @NonNull ThumbImageView thumbImageView, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull TintButton tintButton, @NonNull PostEntrySnakeLayout postEntrySnakeLayout) {
        this.rootView = relativeLayout;
        this.background1 = roundedRealtimeBlurView;
        this.background2 = roundedRealtimeBlurView2;
        this.background3 = roundedRealtimeBlurView3;
        this.postEntryBtn2 = thumbImageView;
        this.postEntryDialog = relativeLayout2;
        this.postEntryDismiss = frameLayout;
        this.postEntryDismissBtn = button;
        this.postEntryIcon = tintButton;
        this.postSnakeLayout = postEntrySnakeLayout;
    }

    @NonNull
    public static PostEntryMainLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.background_1;
        RoundedRealtimeBlurView roundedRealtimeBlurView = (RoundedRealtimeBlurView) ViewBindings.a(view, R.id.background_1);
        if (roundedRealtimeBlurView != null) {
            i10 = R.id.background_2;
            RoundedRealtimeBlurView roundedRealtimeBlurView2 = (RoundedRealtimeBlurView) ViewBindings.a(view, R.id.background_2);
            if (roundedRealtimeBlurView2 != null) {
                i10 = R.id.background_3;
                RoundedRealtimeBlurView roundedRealtimeBlurView3 = (RoundedRealtimeBlurView) ViewBindings.a(view, R.id.background_3);
                if (roundedRealtimeBlurView3 != null) {
                    i10 = R.id.post_entry_btn2;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.post_entry_btn2);
                    if (thumbImageView != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        i10 = R.id.post_entry_dismiss;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.post_entry_dismiss);
                        if (frameLayout != null) {
                            i10 = R.id.post_entry_dismiss_btn;
                            Button button = (Button) ViewBindings.a(view, R.id.post_entry_dismiss_btn);
                            if (button != null) {
                                i10 = R.id.post_entry_icon;
                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.post_entry_icon);
                                if (tintButton != null) {
                                    i10 = R.id.post_snake_layout;
                                    PostEntrySnakeLayout postEntrySnakeLayout = (PostEntrySnakeLayout) ViewBindings.a(view, R.id.post_snake_layout);
                                    if (postEntrySnakeLayout != null) {
                                        return new PostEntryMainLayoutBinding(relativeLayout, roundedRealtimeBlurView, roundedRealtimeBlurView2, roundedRealtimeBlurView3, thumbImageView, relativeLayout, frameLayout, button, tintButton, postEntrySnakeLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
