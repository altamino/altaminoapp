package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentProfileListBinding implements ViewBinding {

    @NonNull
    public final NVThemeTintButton aminoIdRightChevron;

    @NonNull
    public final ImageView avatarFrameError;

    @NonNull
    public final SpinningView avatarFrameLoading;

    @NonNull
    public final FrameLayout avatarPickerContainer;

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final LinearLayout communityLogoLayout;

    @NonNull
    public final NVThemeLinearLayout contentLayout;

    @NonNull
    public final TextView editAvatarFrame;

    @NonNull
    public final TextView editNickname;

    @NonNull
    public final ThumbImageView ivCommunity1;

    @NonNull
    public final ThumbImageView ivCommunity2;

    @NonNull
    public final ThumbImageView ivCommunity3;

    @NonNull
    public final ThumbImageView ivCommunity4;

    @NonNull
    public final ThumbImageView ivCommunity5;

    @NonNull
    public final LinearLayout layoutCommentPermission;

    @NonNull
    public final LinearLayout layoutEditBio;

    @NonNull
    public final LinearLayout layoutEditId;

    @NonNull
    public final LinearLayout layoutEditUsername;

    @NonNull
    public final LinearLayout layoutLinkedCommunities;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final NVScrollView scrollView;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public final NVThemeTextView tvAminoId;

    @NonNull
    public final NVThemeTextView tvBio;

    @NonNull
    public final NVThemeTextView tvCommentPermission;

    @NonNull
    public final UserAvatarLayoutLargeBinding userAvatarLayout;

    private FragmentProfileListBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout, @NonNull BackgroundPickerView backgroundPickerView, @NonNull LinearLayout linearLayout, @NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ThumbImageView thumbImageView5, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull NVScrollView nVScrollView, @NonNull PageStatusView pageStatusView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NVThemeTextView nVThemeTextView3, @NonNull UserAvatarLayoutLargeBinding userAvatarLayoutLargeBinding) {
        this.rootView = nVThemeFrameLayout;
        this.aminoIdRightChevron = nVThemeTintButton;
        this.avatarFrameError = imageView;
        this.avatarFrameLoading = spinningView;
        this.avatarPickerContainer = frameLayout;
        this.backgroundPicker = backgroundPickerView;
        this.communityLogoLayout = linearLayout;
        this.contentLayout = nVThemeLinearLayout;
        this.editAvatarFrame = textView;
        this.editNickname = textView2;
        this.ivCommunity1 = thumbImageView;
        this.ivCommunity2 = thumbImageView2;
        this.ivCommunity3 = thumbImageView3;
        this.ivCommunity4 = thumbImageView4;
        this.ivCommunity5 = thumbImageView5;
        this.layoutCommentPermission = linearLayout2;
        this.layoutEditBio = linearLayout3;
        this.layoutEditId = linearLayout4;
        this.layoutEditUsername = linearLayout5;
        this.layoutLinkedCommunities = linearLayout6;
        this.scrollView = nVScrollView;
        this.statusView = pageStatusView;
        this.tvAminoId = nVThemeTextView;
        this.tvBio = nVThemeTextView2;
        this.tvCommentPermission = nVThemeTextView3;
        this.userAvatarLayout = userAvatarLayoutLargeBinding;
    }

    @NonNull
    public static FragmentProfileListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentProfileListBinding bind(@NonNull View view) {
        int i10 = R.id.aminoIdRightChevron;
        NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.aminoIdRightChevron);
        if (nVThemeTintButton != null) {
            i10 = R.id.avatar_frame_error;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_frame_error);
            if (imageView != null) {
                i10 = R.id.avatar_frame_loading;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.avatar_frame_loading);
                if (spinningView != null) {
                    i10 = R.id.avatar_picker_container;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.avatar_picker_container);
                    if (frameLayout != null) {
                        i10 = R.id.background_picker;
                        BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
                        if (backgroundPickerView != null) {
                            i10 = R.id.community_logo_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_logo_layout);
                            if (linearLayout != null) {
                                i10 = R.id.content_layout;
                                NVThemeLinearLayout nVThemeLinearLayout = (NVThemeLinearLayout) ViewBindings.a(view, R.id.content_layout);
                                if (nVThemeLinearLayout != null) {
                                    i10 = R.id.edit_avatar_frame;
                                    TextView textView = (TextView) ViewBindings.a(view, R.id.edit_avatar_frame);
                                    if (textView != null) {
                                        i10 = R.id.edit_nickname;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.edit_nickname);
                                        if (textView2 != null) {
                                            i10 = R.id.iv_community_1;
                                            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.iv_community_1);
                                            if (thumbImageView != null) {
                                                i10 = R.id.iv_community_2;
                                                ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.iv_community_2);
                                                if (thumbImageView2 != null) {
                                                    i10 = R.id.iv_community_3;
                                                    ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.iv_community_3);
                                                    if (thumbImageView3 != null) {
                                                        i10 = R.id.iv_community_4;
                                                        ThumbImageView thumbImageView4 = (ThumbImageView) ViewBindings.a(view, R.id.iv_community_4);
                                                        if (thumbImageView4 != null) {
                                                            i10 = R.id.iv_community_5;
                                                            ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.iv_community_5);
                                                            if (thumbImageView5 != null) {
                                                                i10 = R.id.layout_comment_permission;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.layout_comment_permission);
                                                                if (linearLayout2 != null) {
                                                                    i10 = R.id.layout_edit_bio;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.layout_edit_bio);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.layout_edit_id;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.layout_edit_id);
                                                                        if (linearLayout4 != null) {
                                                                            i10 = R.id.layout_edit_username;
                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.layout_edit_username);
                                                                            if (linearLayout5 != null) {
                                                                                i10 = R.id.layout_linked_communities;
                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.layout_linked_communities);
                                                                                if (linearLayout6 != null) {
                                                                                    i10 = R.id.scroll_view;
                                                                                    NVScrollView nVScrollView = (NVScrollView) ViewBindings.a(view, R.id.scroll_view);
                                                                                    if (nVScrollView != null) {
                                                                                        i10 = R.id.status_view;
                                                                                        PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, R.id.status_view);
                                                                                        if (pageStatusView != null) {
                                                                                            i10 = R.id.tvAminoId;
                                                                                            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.tvAminoId);
                                                                                            if (nVThemeTextView != null) {
                                                                                                i10 = R.id.tvBio;
                                                                                                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.tvBio);
                                                                                                if (nVThemeTextView2 != null) {
                                                                                                    i10 = R.id.tv_comment_permission;
                                                                                                    NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, R.id.tv_comment_permission);
                                                                                                    if (nVThemeTextView3 != null) {
                                                                                                        i10 = R.id.user_avatar_layout;
                                                                                                        View viewA = ViewBindings.a(view, R.id.user_avatar_layout);
                                                                                                        if (viewA != null) {
                                                                                                            return new FragmentProfileListBinding((NVThemeFrameLayout) view, nVThemeTintButton, imageView, spinningView, frameLayout, backgroundPickerView, linearLayout, nVThemeLinearLayout, textView, textView2, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, thumbImageView5, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, nVScrollView, pageStatusView, nVThemeTextView, nVThemeTextView2, nVThemeTextView3, UserAvatarLayoutLargeBinding.bind(viewA));
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentProfileListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_profile_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
