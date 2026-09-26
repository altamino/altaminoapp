package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.LiverHintBubble;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerFloatingOnlineBarBinding implements ViewBinding {

    @NonNull
    public final LiveLayerOnlineBar floatingOnlineBar;

    @NonNull
    public final LiverHintBubble liverLayerHint;

    @NonNull
    public final LinearLayout onlineBarContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerFloatingOnlineBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerFloatingOnlineBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_floating_online_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerFloatingOnlineBarBinding(@NonNull FrameLayout frameLayout, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull LiverHintBubble liverHintBubble, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.floatingOnlineBar = liveLayerOnlineBar;
        this.liverLayerHint = liverHintBubble;
        this.onlineBarContainer = linearLayout;
    }

    @NonNull
    public static LiveLayerFloatingOnlineBarBinding bind(@NonNull View view) {
        int i10 = R.id.floating_online_bar;
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.floating_online_bar);
        if (liveLayerOnlineBar != null) {
            i10 = R.id.liver_layer_hint;
            LiverHintBubble liverHintBubble = (LiverHintBubble) ViewBindings.a(view, R.id.liver_layer_hint);
            if (liverHintBubble != null) {
                i10 = R.id.online_bar_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.online_bar_container);
                if (linearLayout != null) {
                    return new LiveLayerFloatingOnlineBarBinding((FrameLayout) view, liveLayerOnlineBar, liverHintBubble, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
