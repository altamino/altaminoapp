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

/* JADX INFO: loaded from: classes9.dex */
public final class PageOnlineBarBinding implements ViewBinding {

    @NonNull
    public final LiveLayerOnlineBar pageOnlineBar;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static PageOnlineBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PageOnlineBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.page_online_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PageOnlineBarBinding(@NonNull FrameLayout frameLayout, @NonNull LiveLayerOnlineBar liveLayerOnlineBar) {
        this.rootView = frameLayout;
        this.pageOnlineBar = liveLayerOnlineBar;
    }

    @NonNull
    public static PageOnlineBarBinding bind(@NonNull View view) {
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.page_online_bar);
        if (liveLayerOnlineBar != null) {
            return new PageOnlineBarBinding((FrameLayout) view, liveLayerOnlineBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.page_online_bar)));
    }
}
