package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes6.dex */
public final class HangoutListLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView filterText;

    @NonNull
    public final LinearLayout filterView;

    @NonNull
    public final NVThemeFrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static HangoutListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HangoutListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.hangout_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HangoutListLayoutBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull NVThemeFrameLayout nVThemeFrameLayout2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeFrameLayout;
        this.filterText = textView;
        this.filterView = linearLayout;
        this.listFrame = nVThemeFrameLayout2;
        this.progress = spinningView;
        this.videoOverlay = frameLayout;
    }

    @NonNull
    public static HangoutListLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.filter_text;
        TextView textView = (TextView) ViewBindings.a(view, R.id.filter_text);
        if (textView != null) {
            i10 = R.id.filter_view;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.filter_view);
            if (linearLayout != null) {
                NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) view;
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.video_overlay;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.video_overlay);
                    if (frameLayout != null) {
                        return new HangoutListLayoutBinding(nVThemeFrameLayout, textView, linearLayout, nVThemeFrameLayout, spinningView, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
