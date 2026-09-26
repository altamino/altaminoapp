package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class HeadlineTabEditFragmentLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortListView list;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static HeadlineTabEditFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HeadlineTabEditFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.headline_tab_edit_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HeadlineTabEditFragmentLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull DragSortListView dragSortListView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.list = dragSortListView;
        this.masterBackground = frameLayout2;
        this.progress = spinningView;
    }

    @NonNull
    public static HeadlineTabEditFragmentLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.list;
        DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
        if (dragSortListView != null) {
            i10 = R.id.master_background;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
            if (frameLayout != null) {
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    return new HeadlineTabEditFragmentLayoutBinding((FrameLayout) view, dragSortListView, frameLayout, spinningView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
