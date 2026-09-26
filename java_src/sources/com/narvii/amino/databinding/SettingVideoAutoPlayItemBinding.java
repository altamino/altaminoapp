package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingVideoAutoPlayItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static SettingVideoAutoPlayItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SettingVideoAutoPlayItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_video_auto_play_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SettingVideoAutoPlayItemBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeFrameLayout;
        this.check = fontAwesomeView;
        this.text = nVThemeTextView;
    }

    @NonNull
    public static SettingVideoAutoPlayItemBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.check);
        if (fontAwesomeView != null) {
            i10 = R.id.text;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.text);
            if (nVThemeTextView != null) {
                return new SettingVideoAutoPlayItemBinding((NVThemeFrameLayout) view, fontAwesomeView, nVThemeTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
