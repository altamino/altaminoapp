package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.post.entry.PostEntrySnakeLayout;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.RoundedRealtimeBlurView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class PostEntryMasterLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout background;

    @NonNull
    public final RoundedRealtimeBlurView background1;

    @NonNull
    public final RelativeLayout communityContainer;

    @NonNull
    public final AutoSizingTextView hint;

    @NonNull
    public final ThumbImageView postEntryBtn2;

    @NonNull
    public final RelativeLayout postEntryDialog;

    @NonNull
    public final FrameLayout postEntryDismiss;

    @NonNull
    public final TintButton postEntryIcon;

    @NonNull
    public final PostEntrySnakeLayout postSnakeLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static PostEntryMasterLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEntryMasterLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_entry_master_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEntryMasterLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull RoundedRealtimeBlurView roundedRealtimeBlurView, @NonNull RelativeLayout relativeLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ThumbImageView thumbImageView, @NonNull RelativeLayout relativeLayout3, @NonNull FrameLayout frameLayout2, @NonNull TintButton tintButton, @NonNull PostEntrySnakeLayout postEntrySnakeLayout) {
        this.rootView = relativeLayout;
        this.background = frameLayout;
        this.background1 = roundedRealtimeBlurView;
        this.communityContainer = relativeLayout2;
        this.hint = autoSizingTextView;
        this.postEntryBtn2 = thumbImageView;
        this.postEntryDialog = relativeLayout3;
        this.postEntryDismiss = frameLayout2;
        this.postEntryIcon = tintButton;
        this.postSnakeLayout = postEntrySnakeLayout;
    }

    @NonNull
    public static PostEntryMasterLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.background);
        if (frameLayout != null) {
            i10 = R.id.background_1;
            RoundedRealtimeBlurView roundedRealtimeBlurView = (RoundedRealtimeBlurView) ViewBindings.a(view, R.id.background_1);
            if (roundedRealtimeBlurView != null) {
                i10 = R.id.community_container;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.community_container);
                if (relativeLayout != null) {
                    i10 = R.id.hint;
                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.hint);
                    if (autoSizingTextView != null) {
                        i10 = R.id.post_entry_btn2;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.post_entry_btn2);
                        if (thumbImageView != null) {
                            RelativeLayout relativeLayout2 = (RelativeLayout) view;
                            i10 = R.id.post_entry_dismiss;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.post_entry_dismiss);
                            if (frameLayout2 != null) {
                                i10 = R.id.post_entry_icon;
                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.post_entry_icon);
                                if (tintButton != null) {
                                    i10 = R.id.post_snake_layout;
                                    PostEntrySnakeLayout postEntrySnakeLayout = (PostEntrySnakeLayout) ViewBindings.a(view, R.id.post_snake_layout);
                                    if (postEntrySnakeLayout != null) {
                                        return new PostEntryMasterLayoutBinding(relativeLayout2, frameLayout, roundedRealtimeBlurView, relativeLayout, autoSizingTextView, thumbImageView, relativeLayout2, frameLayout2, tintButton, postEntrySnakeLayout);
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
