package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemFanClubBinding implements ViewBinding {

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfoLayout;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView fakeStatusPlaceholder;

    @NonNull
    public final ImageView fanClubIcon;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView status;

    @NonNull
    public static ItemFanClubBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFanClubBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_fan_club, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFanClubBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull NicknameView nicknameView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.chevronRight = tintButton;
        this.communityIcon = communityIconView;
        this.communityInfoLayout = linearLayout2;
        this.communityName = textView;
        this.fakeStatusPlaceholder = textView2;
        this.fanClubIcon = imageView;
        this.nickname = nicknameView;
        this.status = textView3;
    }

    @NonNull
    public static ItemFanClubBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
        if (tintButton != null) {
            i10 = R.id.community_icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
            if (communityIconView != null) {
                i10 = R.id.community_info_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_info_layout);
                if (linearLayout != null) {
                    i10 = R.id.community_name;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                    if (textView != null) {
                        i10 = R.id.fake_status_placeholder;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.fake_status_placeholder);
                        if (textView2 != null) {
                            i10 = R.id.fan_club_icon;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.fan_club_icon);
                            if (imageView != null) {
                                i10 = R.id.nickname;
                                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                if (nicknameView != null) {
                                    i10 = R.id.status;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.status);
                                    if (textView3 != null) {
                                        return new ItemFanClubBinding((LinearLayout) view, tintButton, communityIconView, linearLayout, textView, textView2, imageView, nicknameView, textView3);
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
