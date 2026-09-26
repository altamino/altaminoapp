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
import com.narvii.livelayer.LiveLayerOnlineBar;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerDetailItemBarBinding implements ViewBinding {

    @NonNull
    public final LiveLayerOnlineBar onlineBar;

    @NonNull
    public final FrameLayout onlineBarLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerDetailItemBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailItemBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_item_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailItemBarBinding(@NonNull FrameLayout frameLayout, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.onlineBar = liveLayerOnlineBar;
        this.onlineBarLayout = frameLayout2;
    }

    @NonNull
    public static LiveLayerDetailItemBarBinding bind(@NonNull View view) {
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.online_bar);
        if (liveLayerOnlineBar != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new LiveLayerDetailItemBarBinding(frameLayout, liveLayerOnlineBar, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.online_bar)));
    }
}
