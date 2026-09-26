package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.sharedfolder.SharedPhotoTouchImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes7.dex */
public final class SharedPhotoDetailLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView addComment;

    @NonNull
    public final NVListView albumList;

    @NonNull
    public final LinearLayout commentBtn;

    @NonNull
    public final NVListView commentList;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final LinearLayout detailLayout;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final SharedPhotoTouchImageView image;

    @NonNull
    public final FrameLayout imageLayout;

    @NonNull
    public final ProgressBar imageLoading;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final OverlayListPlaceholder overlayPlaceholder;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final FrameLayout touchArea;

    @NonNull
    public final LinearLayout userLayout;

    @NonNull
    public final NVVideoView videoView;

    @NonNull
    public final LinearLayout voteBtn;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final VoteIcon voteIcon;

    @NonNull
    public final SpinningView voteProgress;

    private SharedPhotoDetailLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NVListView nVListView, @NonNull LinearLayout linearLayout2, @NonNull NVListView nVListView2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull SharedPhotoTouchImageView sharedPhotoTouchImageView, @NonNull FrameLayout frameLayout, @NonNull ProgressBar progressBar, @NonNull NicknameView nicknameView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FrameLayout frameLayout2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout4, @NonNull NVVideoView nVVideoView, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.addComment = textView;
        this.albumList = nVListView;
        this.commentBtn = linearLayout2;
        this.commentList = nVListView2;
        this.datetime = textView2;
        this.detailLayout = linearLayout3;
        this.disabledBar = detailDisabledBarBinding;
        this.image = sharedPhotoTouchImageView;
        this.imageLayout = frameLayout;
        this.imageLoading = progressBar;
        this.nickname = nicknameView;
        this.overlayPlaceholder = overlayListPlaceholder;
        this.root = frameLayout2;
        this.title = textView3;
        this.touchArea = frameLayout3;
        this.userLayout = linearLayout4;
        this.videoView = nVVideoView;
        this.voteBtn = linearLayout5;
        this.voteCount = textView4;
        this.voteIcon = voteIcon;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static SharedPhotoDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedPhotoDetailLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.add_comment;
        TextView textView = (TextView) ViewBindings.a(view, R.id.add_comment);
        if (textView != null) {
            i10 = R.id.album_list;
            NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.album_list);
            if (nVListView != null) {
                i10 = R.id.comment_btn;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.comment_btn);
                if (linearLayout != null) {
                    i10 = R.id.comment_list;
                    NVListView nVListView2 = (NVListView) ViewBindings.a(view, R.id.comment_list);
                    if (nVListView2 != null) {
                        i10 = R.id.datetime;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.datetime);
                        if (textView2 != null) {
                            i10 = R.id.detail_layout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.detail_layout);
                            if (linearLayout2 != null) {
                                i10 = R.id.disabled_bar;
                                View viewA = ViewBindings.a(view, R.id.disabled_bar);
                                if (viewA != null) {
                                    DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                                    i10 = R.id.image;
                                    SharedPhotoTouchImageView sharedPhotoTouchImageView = (SharedPhotoTouchImageView) ViewBindings.a(view, R.id.image);
                                    if (sharedPhotoTouchImageView != null) {
                                        i10 = R.id.image_layout;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.image_layout);
                                        if (frameLayout != null) {
                                            i10 = R.id.image_loading;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.image_loading);
                                            if (progressBar != null) {
                                                i10 = R.id.nickname;
                                                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                                if (nicknameView != null) {
                                                    i10 = R.id.overlay_placeholder;
                                                    OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.overlay_placeholder);
                                                    if (overlayListPlaceholder != null) {
                                                        i10 = R.id.root;
                                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.root);
                                                        if (frameLayout2 != null) {
                                                            i10 = R.id.title;
                                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                                            if (textView3 != null) {
                                                                i10 = R.id.touch_area;
                                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.touch_area);
                                                                if (frameLayout3 != null) {
                                                                    i10 = R.id.user_layout;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.user_layout);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.video_view;
                                                                        NVVideoView nVVideoView = (NVVideoView) ViewBindings.a(view, R.id.video_view);
                                                                        if (nVVideoView != null) {
                                                                            i10 = R.id.vote_btn;
                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.vote_btn);
                                                                            if (linearLayout4 != null) {
                                                                                i10 = R.id.vote_count;
                                                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                                                                if (textView4 != null) {
                                                                                    i10 = R.id.vote_icon;
                                                                                    VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                                                                    if (voteIcon != null) {
                                                                                        i10 = R.id.vote_progress;
                                                                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                                                                        if (spinningView != null) {
                                                                                            return new SharedPhotoDetailLayoutBinding((LinearLayout) view, textView, nVListView, linearLayout, nVListView2, textView2, linearLayout2, detailDisabledBarBindingBind, sharedPhotoTouchImageView, frameLayout, progressBar, nicknameView, overlayListPlaceholder, frameLayout2, textView3, frameLayout3, linearLayout3, nVVideoView, linearLayout4, textView4, voteIcon, spinningView);
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
    public static SharedPhotoDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_photo_detail_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
