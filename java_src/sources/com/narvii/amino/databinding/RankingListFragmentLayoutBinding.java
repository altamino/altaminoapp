package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class RankingListFragmentLayoutBinding implements ViewBinding {

    @NonNull
    public final EmptyLeaderBoardBinding empty;

    @NonNull
    public final NVListView list;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static RankingListFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RankingListFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ranking_list_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RankingListFragmentLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull EmptyLeaderBoardBinding emptyLeaderBoardBinding, @NonNull NVListView nVListView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.empty = emptyLeaderBoardBinding;
        this.list = nVListView;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
    }

    @NonNull
    public static RankingListFragmentLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.empty;
        View viewA = ViewBindings.a(view, android.R.id.empty);
        if (viewA != null) {
            EmptyLeaderBoardBinding emptyLeaderBoardBindingBind = EmptyLeaderBoardBinding.bind(viewA);
            i10 = android.R.id.list;
            NVListView nVListView = (NVListView) ViewBindings.a(view, android.R.id.list);
            if (nVListView != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    return new RankingListFragmentLayoutBinding(frameLayout, emptyLeaderBoardBindingBind, nVListView, frameLayout, spinningView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
