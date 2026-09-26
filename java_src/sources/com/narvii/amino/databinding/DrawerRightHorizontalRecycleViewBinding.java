package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class DrawerRightHorizontalRecycleViewBinding implements ViewBinding {

    @NonNull
    public final TextView error;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final HorizontalRecyclerView recycleList;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DrawerRightHorizontalRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerRightHorizontalRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_right_horizontal_recycle_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerRightHorizontalRecycleViewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull SpinningView spinningView, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.rootView = frameLayout;
        this.error = textView;
        this.progress = spinningView;
        this.recycleList = horizontalRecyclerView;
    }

    @NonNull
    public static DrawerRightHorizontalRecycleViewBinding bind(@NonNull View view) {
        int i10 = R.id.error;
        TextView textView = (TextView) ViewBindings.a(view, R.id.error);
        if (textView != null) {
            i10 = R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
            if (spinningView != null) {
                i10 = R.id.recycle_list;
                HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.recycle_list);
                if (horizontalRecyclerView != null) {
                    return new DrawerRightHorizontalRecycleViewBinding((FrameLayout) view, textView, spinningView, horizontalRecyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
