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
import com.narvii.master.home.widgets.GlobalProfileFollowView;
import com.narvii.master.home.widgets.GlobalProfileHeaderView;
import com.narvii.master.home.widgets.ProfileLinkedCommuView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutGlobalProfileHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final TextView bio;

    @NonNull
    public final ImageView chatEntry;

    @NonNull
    public final LinearLayout editButton;

    @NonNull
    public final GlobalProfileFollowView followView;

    @NonNull
    public final AutoSizingTextView followersCount;

    @NonNull
    public final TextView followersCountUnitTv;

    @NonNull
    public final RadiusLayout followersWrapper;

    @NonNull
    public final AutoSizingTextView followingsCount;

    @NonNull
    public final FrameLayout followingsWrapper;

    @NonNull
    public final LinearLayout hintFrame;

    @NonNull
    public final TintButton hintIndicator;

    @NonNull
    public final TextView hintText;

    @NonNull
    public final ProfileLinkedCommuView linkedCommunities;

    @NonNull
    public final TextView membershipHint;

    @NonNull
    public final ImageView membershipIndicator;

    @NonNull
    public final LinearLayout membershipLayout;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final GlobalProfileHeaderView rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    private LayoutGlobalProfileHeaderBinding(@NonNull GlobalProfileHeaderView globalProfileHeaderView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull GlobalProfileFollowView globalProfileFollowView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView3, @NonNull RadiusLayout radiusLayout, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull TextView textView4, @NonNull ProfileLinkedCommuView profileLinkedCommuView, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout3, @NonNull NicknameView nicknameView, @NonNull UserAvatarLayout userAvatarLayout) {
        this.rootView = globalProfileHeaderView;
        this.aminoId = textView;
        this.bio = textView2;
        this.chatEntry = imageView;
        this.editButton = linearLayout;
        this.followView = globalProfileFollowView;
        this.followersCount = autoSizingTextView;
        this.followersCountUnitTv = textView3;
        this.followersWrapper = radiusLayout;
        this.followingsCount = autoSizingTextView2;
        this.followingsWrapper = frameLayout;
        this.hintFrame = linearLayout2;
        this.hintIndicator = tintButton;
        this.hintText = textView4;
        this.linkedCommunities = profileLinkedCommuView;
        this.membershipHint = textView5;
        this.membershipIndicator = imageView2;
        this.membershipLayout = linearLayout3;
        this.nickname = nicknameView;
        this.userAvatarLayout = userAvatarLayout;
    }

    @NonNull
    public static LayoutGlobalProfileHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public GlobalProfileHeaderView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutGlobalProfileHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.amino_id;
        TextView textView = (TextView) ViewBindings.a(view, R.id.amino_id);
        if (textView != null) {
            i10 = R.id.bio;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.bio);
            if (textView2 != null) {
                i10 = R.id.chat_entry;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.chat_entry);
                if (imageView != null) {
                    i10 = R.id.edit_button;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.edit_button);
                    if (linearLayout != null) {
                        i10 = R.id.follow_view;
                        GlobalProfileFollowView globalProfileFollowView = (GlobalProfileFollowView) ViewBindings.a(view, R.id.follow_view);
                        if (globalProfileFollowView != null) {
                            i10 = R.id.followers_count;
                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.followers_count);
                            if (autoSizingTextView != null) {
                                i10 = R.id.followers_count_unit_tv;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.followers_count_unit_tv);
                                if (textView3 != null) {
                                    i10 = R.id.followers_wrapper;
                                    RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, R.id.followers_wrapper);
                                    if (radiusLayout != null) {
                                        i10 = R.id.followings_count;
                                        AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.followings_count);
                                        if (autoSizingTextView2 != null) {
                                            i10 = R.id.followings_wrapper;
                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.followings_wrapper);
                                            if (frameLayout != null) {
                                                i10 = R.id.hint_frame;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.hint_frame);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.hint_indicator;
                                                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.hint_indicator);
                                                    if (tintButton != null) {
                                                        i10 = R.id.hint_text;
                                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.hint_text);
                                                        if (textView4 != null) {
                                                            i10 = R.id.linked_communities;
                                                            ProfileLinkedCommuView profileLinkedCommuView = (ProfileLinkedCommuView) ViewBindings.a(view, R.id.linked_communities);
                                                            if (profileLinkedCommuView != null) {
                                                                i10 = R.id.membership_hint;
                                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.membership_hint);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.membership_indicator;
                                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.membership_indicator);
                                                                    if (imageView2 != null) {
                                                                        i10 = R.id.membership_layout;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.membership_layout);
                                                                        if (linearLayout3 != null) {
                                                                            i10 = R.id.nickname;
                                                                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                                                            if (nicknameView != null) {
                                                                                i10 = R.id.user_avatar_layout;
                                                                                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.user_avatar_layout);
                                                                                if (userAvatarLayout != null) {
                                                                                    return new LayoutGlobalProfileHeaderBinding((GlobalProfileHeaderView) view, textView, textView2, imageView, linearLayout, globalProfileFollowView, autoSizingTextView, textView3, radiusLayout, autoSizingTextView2, frameLayout, linearLayout2, tintButton, textView4, profileLinkedCommuView, textView5, imageView2, linearLayout3, nicknameView, userAvatarLayout);
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
    public static LayoutGlobalProfileHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_global_profile_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
