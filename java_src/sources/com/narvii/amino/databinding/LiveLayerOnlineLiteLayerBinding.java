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
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class LiveLayerOnlineLiteLayerBinding implements ViewBinding {

    @NonNull
    public final View greenOval;

    @NonNull
    public final FrameLayout liteLayer;

    @NonNull
    public final AutoSizingTextView onlineCount;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerOnlineLiteLayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineLiteLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_lite_layer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineLiteLayerBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull FrameLayout frameLayout2, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = frameLayout;
        this.greenOval = view;
        this.liteLayer = frameLayout2;
        this.onlineCount = autoSizingTextView;
    }

    @NonNull
    public static LiveLayerOnlineLiteLayerBinding bind(@NonNull View view) {
        int i10 = R.id.green_oval;
        View viewA = ViewBindings.a(view, R.id.green_oval);
        if (viewA != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.online_count);
            if (autoSizingTextView != null) {
                return new LiveLayerOnlineLiteLayerBinding(frameLayout, viewA, frameLayout, autoSizingTextView);
            }
            i10 = R.id.online_count;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
