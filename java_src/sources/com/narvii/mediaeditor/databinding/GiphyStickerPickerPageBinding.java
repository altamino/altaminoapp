package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.databinding.ErrorViewBinding;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes6.dex */
public final class GiphyStickerPickerPageBinding implements ViewBinding {

    @NonNull
    public final ErrorViewBinding errorView;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static GiphyStickerPickerPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GiphyStickerPickerPageBinding bind(@NonNull View view) {
        int i10 = R.id.error_view;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            ErrorViewBinding errorViewBindingBind = ErrorViewBinding.bind(viewA);
            int i11 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                i11 = R.id.viewpager;
                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i11);
                if (nVViewPager != null) {
                    return new GiphyStickerPickerPageBinding((FrameLayout) view, errorViewBindingBind, spinningView, nVViewPager);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static GiphyStickerPickerPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.giphy_sticker_picker_page, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GiphyStickerPickerPageBinding(@NonNull FrameLayout frameLayout, @NonNull ErrorViewBinding errorViewBinding, @NonNull SpinningView spinningView, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.errorView = errorViewBinding;
        this.progress = spinningView;
        this.viewpager = nVViewPager;
    }
}
