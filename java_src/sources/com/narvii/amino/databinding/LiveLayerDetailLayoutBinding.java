package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerDetailLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayLayout overlayLayout) {
        this.rootView = frameLayout;
        this.overlay = overlayLayout;
    }

    @NonNull
    public static LiveLayerDetailLayoutBinding bind(@NonNull View view) {
        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
        if (overlayLayout != null) {
            return new LiveLayerDetailLayoutBinding((FrameLayout) view, overlayLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.overlay)));
    }
}
