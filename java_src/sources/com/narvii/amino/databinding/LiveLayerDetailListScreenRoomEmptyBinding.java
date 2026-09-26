package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class LiveLayerDetailListScreenRoomEmptyBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerDetailListScreenRoomEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailListScreenRoomEmptyBinding bind(@NonNull View view) {
        if (view != null) {
            return new LiveLayerDetailListScreenRoomEmptyBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LiveLayerDetailListScreenRoomEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_list_screen_room_empty, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailListScreenRoomEmptyBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
