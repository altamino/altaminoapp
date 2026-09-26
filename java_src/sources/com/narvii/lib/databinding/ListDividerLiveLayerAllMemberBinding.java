package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
public final class ListDividerLiveLayerAllMemberBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ListDividerLiveLayerAllMemberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListDividerLiveLayerAllMemberBinding bind(@NonNull View view) {
        if (view != null) {
            return new ListDividerLiveLayerAllMemberBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ListDividerLiveLayerAllMemberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_divider_live_layer_all_member, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListDividerLiveLayerAllMemberBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
