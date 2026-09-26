package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemAlertPushSettingBinding implements ViewBinding {

    @NonNull
    public final ImageView chevronRight;

    @NonNull
    public final NVThemeRelativeLayout pushSetting;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final NVThemeTextView title;

    @NonNull
    public static ItemAlertPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAlertPushSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_alert_push_setting, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAlertPushSettingBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull ImageView imageView, @NonNull NVThemeRelativeLayout nVThemeRelativeLayout2, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeRelativeLayout;
        this.chevronRight = imageView;
        this.pushSetting = nVThemeRelativeLayout2;
        this.title = nVThemeTextView;
    }

    @NonNull
    public static ItemAlertPushSettingBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.chevron_right);
        if (imageView != null) {
            NVThemeRelativeLayout nVThemeRelativeLayout = (NVThemeRelativeLayout) view;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.title);
            if (nVThemeTextView != null) {
                return new ItemAlertPushSettingBinding(nVThemeRelativeLayout, imageView, nVThemeRelativeLayout, nVThemeTextView);
            }
            i10 = R.id.title;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
