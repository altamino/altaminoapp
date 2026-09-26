package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogRealtimeBlurLayoutBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blurBg;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogRealtimeBlurLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogRealtimeBlurLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.blur_bg;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, i10);
        if (realtimeBlurView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new DialogRealtimeBlurLayoutBinding(frameLayout, realtimeBlurView, frameLayout);
    }

    @NonNull
    public static DialogRealtimeBlurLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_realtime_blur_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogRealtimeBlurLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.blurBg = realtimeBlurView;
        this.root = frameLayout2;
    }
}
