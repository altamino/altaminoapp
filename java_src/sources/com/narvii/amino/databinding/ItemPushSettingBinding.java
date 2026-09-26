package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemPushSettingBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final NVThemeTextView communityName;

    @NonNull
    public final NVThemeTintButton gotoArrow;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public static ItemPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_push_setting, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPushSettingBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull ThumbImageView thumbImageView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTintButton nVThemeTintButton) {
        this.rootView = nVThemeRelativeLayout;
        this.communityIcon = thumbImageView;
        this.communityName = nVThemeTextView;
        this.gotoArrow = nVThemeTintButton;
    }

    @NonNull
    public static ItemPushSettingBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
        if (thumbImageView != null) {
            i10 = R.id.community_name;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.community_name);
            if (nVThemeTextView != null) {
                i10 = R.id.goto_arrow;
                NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.goto_arrow);
                if (nVThemeTintButton != null) {
                    return new ItemPushSettingBinding((NVThemeRelativeLayout) view, thumbImageView, nVThemeTextView, nVThemeTintButton);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
