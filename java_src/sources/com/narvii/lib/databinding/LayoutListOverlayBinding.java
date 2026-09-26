package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.NVListOverlay;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutListOverlayBinding implements ViewBinding {

    @NonNull
    private final NVListOverlay rootView;

    @NonNull
    public static LayoutListOverlayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVListOverlay getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutListOverlayBinding bind(@NonNull View view) {
        if (view != null) {
            return new LayoutListOverlayBinding((NVListOverlay) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LayoutListOverlayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_list_overlay, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutListOverlayBinding(@NonNull NVListOverlay nVListOverlay) {
        this.rootView = nVListOverlay;
    }
}
