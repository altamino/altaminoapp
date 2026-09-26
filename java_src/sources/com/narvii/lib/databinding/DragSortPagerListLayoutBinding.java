package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class DragSortPagerListLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortListView list;

    @NonNull
    public final NVThemeFrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public static DragSortPagerListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DragSortPagerListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drag_sort_pager_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DragSortPagerListLayoutBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull DragSortListView dragSortListView, @NonNull NVThemeFrameLayout nVThemeFrameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = nVThemeFrameLayout;
        this.list = dragSortListView;
        this.listFrame = nVThemeFrameLayout2;
        this.progress = spinningView;
    }

    @NonNull
    public static DragSortPagerListLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.list;
        DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
        if (dragSortListView != null) {
            NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) view;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                return new DragSortPagerListLayoutBinding(nVThemeFrameLayout, dragSortListView, nVThemeFrameLayout, spinningView);
            }
            i10 = 16908301;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
