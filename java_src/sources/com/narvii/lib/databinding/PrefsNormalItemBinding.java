package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class PrefsNormalItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    public final NVThemeTextView desc;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final LinearLayout mainLayout;

    @NonNull
    public final ImageView rightIcon;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public final NVThemeTextView text2;

    @NonNull
    public static PrefsNormalItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsNormalItemBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, i10);
        if (nVThemeTintButton != null) {
            i10 = R.id.desc;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
            if (nVThemeTextView != null) {
                i10 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.main_layout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R.id.right_icon;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                        if (imageView2 != null) {
                            i10 = R.id.text;
                            NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, i10);
                            if (nVThemeTextView2 != null) {
                                i10 = R.id.text2;
                                NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, i10);
                                if (nVThemeTextView3 != null) {
                                    return new PrefsNormalItemBinding((NVThemeLinearLayout) view, nVThemeTintButton, nVThemeTextView, imageView, linearLayout, imageView2, nVThemeTextView2, nVThemeTextView3);
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
    public static PrefsNormalItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_normal_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsNormalItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull NVThemeTextView nVThemeTextView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NVThemeTextView nVThemeTextView3) {
        this.rootView = nVThemeLinearLayout;
        this.chevronRight = nVThemeTintButton;
        this.desc = nVThemeTextView;
        this.icon = imageView;
        this.mainLayout = linearLayout;
        this.rightIcon = imageView2;
        this.text = nVThemeTextView2;
        this.text2 = nVThemeTextView3;
    }
}
