package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.recycleview.NVHorizontalRecycleView;

/* JADX INFO: loaded from: classes11.dex */
public final class HorizontalRecycleviewLayoutBinding implements ViewBinding {

    @NonNull
    public final ViewStub empty;

    @NonNull
    public final ViewStub moreProgress;

    @NonNull
    public final ViewStub progress;

    @NonNull
    public final NVHorizontalRecycleView recycleList;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static HorizontalRecycleviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HorizontalRecycleviewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.empty;
        ViewStub viewStub = (ViewStub) ViewBindings.a(view, i10);
        if (viewStub != null) {
            i10 = R.id.more_progress;
            ViewStub viewStub2 = (ViewStub) ViewBindings.a(view, i10);
            if (viewStub2 != null) {
                i10 = android.R.id.progress;
                ViewStub viewStub3 = (ViewStub) ViewBindings.a(view, android.R.id.progress);
                if (viewStub3 != null) {
                    i10 = R.id.recycle_list;
                    NVHorizontalRecycleView nVHorizontalRecycleView = (NVHorizontalRecycleView) ViewBindings.a(view, i10);
                    if (nVHorizontalRecycleView != null) {
                        return new HorizontalRecycleviewLayoutBinding((RelativeLayout) view, viewStub, viewStub2, viewStub3, nVHorizontalRecycleView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static HorizontalRecycleviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.horizontal_recycleview_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HorizontalRecycleviewLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull ViewStub viewStub, @NonNull ViewStub viewStub2, @NonNull ViewStub viewStub3, @NonNull NVHorizontalRecycleView nVHorizontalRecycleView) {
        this.rootView = relativeLayout;
        this.empty = viewStub;
        this.moreProgress = viewStub2;
        this.progress = viewStub3;
        this.recycleList = nVHorizontalRecycleView;
    }
}
