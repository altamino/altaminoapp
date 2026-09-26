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
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentAggregationTopicBinding implements ViewBinding {

    @NonNull
    public final FrameLayout bookMarkContainer;

    @NonNull
    public final View interestIndicator;

    @NonNull
    public final NVRecyclerView interestMainList;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SearchLayoutBinding search;

    @NonNull
    public final FrameLayout topicFrame;

    @NonNull
    public static FragmentAggregationTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAggregationTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aggregation_topic, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAggregationTopicBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull NVRecyclerView nVRecyclerView, @NonNull FrameLayout frameLayout3, @NonNull SearchLayoutBinding searchLayoutBinding, @NonNull FrameLayout frameLayout4) {
        this.rootView = frameLayout;
        this.bookMarkContainer = frameLayout2;
        this.interestIndicator = view;
        this.interestMainList = nVRecyclerView;
        this.masterBackground = frameLayout3;
        this.search = searchLayoutBinding;
        this.topicFrame = frameLayout4;
    }

    @NonNull
    public static FragmentAggregationTopicBinding bind(@NonNull View view) {
        int i10 = R.id.book_mark_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.book_mark_container);
        if (frameLayout != null) {
            i10 = R.id.interest_indicator;
            View viewA = ViewBindings.a(view, R.id.interest_indicator);
            if (viewA != null) {
                i10 = R.id.interest_main_list;
                NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.interest_main_list);
                if (nVRecyclerView != null) {
                    i10 = R.id.master_background;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                    if (frameLayout2 != null) {
                        i10 = R.id.search;
                        View viewA2 = ViewBindings.a(view, R.id.search);
                        if (viewA2 != null) {
                            SearchLayoutBinding searchLayoutBindingBind = SearchLayoutBinding.bind(viewA2);
                            i10 = R.id.topic_frame;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.topic_frame);
                            if (frameLayout3 != null) {
                                return new FragmentAggregationTopicBinding((FrameLayout) view, frameLayout, viewA, nVRecyclerView, frameLayout2, searchLayoutBindingBind, frameLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
