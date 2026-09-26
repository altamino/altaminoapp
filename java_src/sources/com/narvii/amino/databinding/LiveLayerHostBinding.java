package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerHost;

/* JADX INFO: loaded from: classes5.dex */
public final class LiveLayerHostBinding implements ViewBinding {

    @NonNull
    private final LiveLayerHost rootView;

    @NonNull
    public static LiveLayerHostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerHostBinding bind(@NonNull View view) {
        if (view != null) {
            return new LiveLayerHostBinding((LiveLayerHost) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LiveLayerHostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_host, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerHostBinding(@NonNull LiveLayerHost liveLayerHost) {
        this.rootView = liveLayerHost;
    }
}
