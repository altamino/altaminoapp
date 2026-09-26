package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentStoryListBaseBinding implements ViewBinding {

    @NonNull
    public final FrameLayout recycleFrame;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public final FrameLayout storyDetailFrame;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static FragmentStoryListBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentStoryListBaseBinding bind(@NonNull View view) {
        int i10 = R.id.recycle_frame;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.recycle_layout;
            NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, i10);
            if (nVRecyclerView != null) {
                i10 = R.id.status_view;
                PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, i10);
                if (pageStatusView != null) {
                    i10 = R.id.story_detail_frame;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout2 != null) {
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                        return new FragmentStoryListBaseBinding(swipeRefreshLayout, frameLayout, nVRecyclerView, pageStatusView, frameLayout2, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentStoryListBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_story_list_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentStoryListBaseBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull FrameLayout frameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView, @NonNull FrameLayout frameLayout2, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.recycleFrame = frameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
        this.storyDetailFrame = frameLayout2;
        this.swipeRefresh = swipeRefreshLayout2;
    }
}
