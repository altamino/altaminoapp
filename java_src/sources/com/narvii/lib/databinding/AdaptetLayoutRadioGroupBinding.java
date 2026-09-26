package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class AdaptetLayoutRadioGroupBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final NVThemeTextView subTitle;

    @NonNull
    public final NVThemeTextView title;

    @NonNull
    public static AdaptetLayoutRadioGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdaptetLayoutRadioGroupBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.subTitle;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
            if (nVThemeTextView != null) {
                i10 = R.id.title;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, i10);
                if (nVThemeTextView2 != null) {
                    return new AdaptetLayoutRadioGroupBinding((NVThemeLinearLayout) view, fontAwesomeView, nVThemeTextView, nVThemeTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AdaptetLayoutRadioGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.adaptet_layout_radio_group, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdaptetLayoutRadioGroupBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = nVThemeLinearLayout;
        this.check = fontAwesomeView;
        this.subTitle = nVThemeTextView;
        this.title = nVThemeTextView2;
    }
}
