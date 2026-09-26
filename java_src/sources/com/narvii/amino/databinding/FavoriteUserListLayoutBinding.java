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

/* JADX INFO: loaded from: classes3.dex */
public final class FavoriteUserListLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortListView list;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FavoriteUserListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FavoriteUserListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.favorite_user_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FavoriteUserListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull DragSortListView dragSortListView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.list = dragSortListView;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
    }

    @NonNull
    public static FavoriteUserListLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.list;
        DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
        if (dragSortListView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                return new FavoriteUserListLayoutBinding(frameLayout, dragSortListView, frameLayout, spinningView);
            }
            i10 = 16908301;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
