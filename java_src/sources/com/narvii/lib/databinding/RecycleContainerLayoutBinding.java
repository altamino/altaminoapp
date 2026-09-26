package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.recycleview.NVRichRecycleView;

/* JADX INFO: loaded from: classes10.dex */
public final class RecycleContainerLayoutBinding implements ViewBinding {

    @NonNull
    public final NVRichRecycleView recycleLayout;

    @NonNull
    private final NVRichRecycleView rootView;

    @NonNull
    public static RecycleContainerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVRichRecycleView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecycleContainerLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVRichRecycleView nVRichRecycleView = (NVRichRecycleView) view;
        return new RecycleContainerLayoutBinding(nVRichRecycleView, nVRichRecycleView);
    }

    @NonNull
    public static RecycleContainerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recycle_container_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecycleContainerLayoutBinding(@NonNull NVRichRecycleView nVRichRecycleView, @NonNull NVRichRecycleView nVRichRecycleView2) {
        this.rootView = nVRichRecycleView;
        this.recycleLayout = nVRichRecycleView2;
    }
}
