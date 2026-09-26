package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.ProxyView;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveLayerProxyViewBinding implements ViewBinding {

    @NonNull
    public final ProxyView liveLayerProxyView;

    @NonNull
    private final ProxyView rootView;

    @NonNull
    public static LiveLayerProxyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ProxyView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerProxyViewBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ProxyView proxyView = (ProxyView) view;
        return new LiveLayerProxyViewBinding(proxyView, proxyView);
    }

    @NonNull
    public static LiveLayerProxyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_proxy_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerProxyViewBinding(@NonNull ProxyView proxyView, @NonNull ProxyView proxyView2) {
        this.rootView = proxyView;
        this.liveLayerProxyView = proxyView2;
    }
}
