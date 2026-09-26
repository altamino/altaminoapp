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
import com.narvii.list.refresh.SwipeRefreshLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutDetailStickerCollectionBinding implements ViewBinding {

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static LayoutDetailStickerCollectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutDetailStickerCollectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_detail_sticker_collection, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutDetailStickerCollectionBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayLayout overlayLayout, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = frameLayout;
        this.overlay = overlayLayout;
        this.swipeRefresh = swipeRefreshLayout;
    }

    @NonNull
    public static LayoutDetailStickerCollectionBinding bind(@NonNull View view) {
        int i10 = R.id.overlay;
        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
        if (overlayLayout != null) {
            i10 = R.id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
            if (swipeRefreshLayout != null) {
                return new LayoutDetailStickerCollectionBinding((FrameLayout) view, overlayLayout, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
