package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemProfileBinding implements ViewBinding {

    @NonNull
    public final LinearLayout communityContainer;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final NVThemeTextView communityName;

    @NonNull
    public final NVThemeTextView edit;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static ItemProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemProfileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_profile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemProfileBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NicknameView nicknameView) {
        this.rootView = nVThemeLinearLayout;
        this.communityContainer = linearLayout;
        this.communityIcon = communityIconView;
        this.communityName = nVThemeTextView;
        this.edit = nVThemeTextView2;
        this.nickname = nicknameView;
    }

    @NonNull
    public static ItemProfileBinding bind(@NonNull View view) {
        int i10 = R.id.community_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_container);
        if (linearLayout != null) {
            i10 = R.id.community_icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
            if (communityIconView != null) {
                i10 = R.id.community_name;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.community_name);
                if (nVThemeTextView != null) {
                    i10 = R.id.edit;
                    NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.edit);
                    if (nVThemeTextView2 != null) {
                        i10 = R.id.nickname;
                        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                        if (nicknameView != null) {
                            return new ItemProfileBinding((NVThemeLinearLayout) view, linearLayout, communityIconView, nVThemeTextView, nVThemeTextView2, nicknameView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
