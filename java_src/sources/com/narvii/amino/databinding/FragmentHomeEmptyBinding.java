package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentHomeEmptyBinding implements ViewBinding {

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final ImageView emptyIcon;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final NVThemeTextView emptyText;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentHomeEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentHomeEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_home_empty, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentHomeEmptyBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.empty = linearLayout;
        this.emptyIcon = imageView;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = nVThemeTextView;
        this.progress = spinningView;
    }

    @NonNull
    public static FragmentHomeEmptyBinding bind(@NonNull View view) {
        int i10 = android.R.id.empty;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, android.R.id.empty);
        if (linearLayout != null) {
            i10 = R.id.empty_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.empty_icon);
            if (imageView != null) {
                i10 = R.id.empty_retry;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
                if (fontAwesomeView != null) {
                    i10 = R.id.empty_text;
                    NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.empty_text);
                    if (nVThemeTextView != null) {
                        i10 = android.R.id.progress;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                        if (spinningView != null) {
                            return new FragmentHomeEmptyBinding((FrameLayout) view, linearLayout, imageView, fontAwesomeView, nVThemeTextView, spinningView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
