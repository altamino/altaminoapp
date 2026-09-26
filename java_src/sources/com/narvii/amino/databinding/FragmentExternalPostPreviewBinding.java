package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BottomVoteIcon;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentExternalPostPreviewBinding implements ViewBinding {

    @NonNull
    public final FrameLayout bottomContainer;

    @NonNull
    public final FrameLayout commentContainer;

    @NonNull
    public final TextView commentCount;

    @NonNull
    public final TintButton commentIcon;

    @NonNull
    public final View divider;

    @NonNull
    public final View dividerGd;

    @NonNull
    public final TintButton more;

    @NonNull
    public final FrameLayout moreContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TintButton share;

    @NonNull
    public final FrameLayout shareContainer;

    @NonNull
    public final FrameLayout voteContainer;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final BottomVoteIcon voteIcon;

    @NonNull
    public final SpinningView voteProgress;

    @NonNull
    public static FragmentExternalPostPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentExternalPostPreviewBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.bottom_container);
        if (frameLayout != null) {
            i10 = R.id.comment_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.comment_container);
            if (frameLayout2 != null) {
                i10 = R.id.comment_count;
                TextView textView = (TextView) ViewBindings.a(view, R.id.comment_count);
                if (textView != null) {
                    i10 = R.id.comment_icon;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.comment_icon);
                    if (tintButton != null) {
                        i10 = R.id.divider;
                        View viewA = ViewBindings.a(view, R.id.divider);
                        if (viewA != null) {
                            i10 = R.id.divider_gd;
                            View viewA2 = ViewBindings.a(view, R.id.divider_gd);
                            if (viewA2 != null) {
                                i10 = R.id.more;
                                TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.more);
                                if (tintButton2 != null) {
                                    i10 = R.id.more_container;
                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.more_container);
                                    if (frameLayout3 != null) {
                                        i10 = R.id.share;
                                        TintButton tintButton3 = (TintButton) ViewBindings.a(view, R.id.share);
                                        if (tintButton3 != null) {
                                            i10 = R.id.share_container;
                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.share_container);
                                            if (frameLayout4 != null) {
                                                i10 = R.id.vote_container;
                                                FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.vote_container);
                                                if (frameLayout5 != null) {
                                                    i10 = R.id.vote_count;
                                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                                    if (textView2 != null) {
                                                        i10 = R.id.vote_icon;
                                                        BottomVoteIcon bottomVoteIcon = (BottomVoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                                        if (bottomVoteIcon != null) {
                                                            i10 = R.id.vote_progress;
                                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                                            if (spinningView != null) {
                                                                return new FragmentExternalPostPreviewBinding((FrameLayout) view, frameLayout, frameLayout2, textView, tintButton, viewA, viewA2, tintButton2, frameLayout3, tintButton3, frameLayout4, frameLayout5, textView2, bottomVoteIcon, spinningView);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    @NonNull
    public static FragmentExternalPostPreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_external_post_preview, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentExternalPostPreviewBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull View view, @NonNull View view2, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout4, @NonNull TintButton tintButton3, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull TextView textView2, @NonNull BottomVoteIcon bottomVoteIcon, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.bottomContainer = frameLayout2;
        this.commentContainer = frameLayout3;
        this.commentCount = textView;
        this.commentIcon = tintButton;
        this.divider = view;
        this.dividerGd = view2;
        this.more = tintButton2;
        this.moreContainer = frameLayout4;
        this.share = tintButton3;
        this.shareContainer = frameLayout5;
        this.voteContainer = frameLayout6;
        this.voteCount = textView2;
        this.voteIcon = bottomVoteIcon;
        this.voteProgress = spinningView;
    }
}
