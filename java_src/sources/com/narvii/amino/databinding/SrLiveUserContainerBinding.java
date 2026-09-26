package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class SrLiveUserContainerBinding implements ViewBinding {

    @NonNull
    public final View gapView;

    @NonNull
    public final View gapView2;

    @NonNull
    public final SrRecyclerPresenterItemBinding hostView;

    @NonNull
    public final LinearLayout liveUserContainerRoot;

    @NonNull
    public final AutoSizingTextView liveUserCount;

    @NonNull
    public final LinearLayout liveUserCountContainer;

    @NonNull
    public final SRLiveUserRecyclerView liveUserRecycler;

    @NonNull
    public final LinearLayout liveUserRecyclerContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static SrLiveUserContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrLiveUserContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_live_user_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrLiveUserContainerBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, @NonNull SrRecyclerPresenterItemBinding srRecyclerPresenterItemBinding, @NonNull LinearLayout linearLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull LinearLayout linearLayout3, @NonNull SRLiveUserRecyclerView sRLiveUserRecyclerView, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.gapView = view;
        this.gapView2 = view2;
        this.hostView = srRecyclerPresenterItemBinding;
        this.liveUserContainerRoot = linearLayout2;
        this.liveUserCount = autoSizingTextView;
        this.liveUserCountContainer = linearLayout3;
        this.liveUserRecycler = sRLiveUserRecyclerView;
        this.liveUserRecyclerContainer = linearLayout4;
    }

    @NonNull
    public static SrLiveUserContainerBinding bind(@NonNull View view) {
        int i10 = R.id.gap_view;
        View viewA = ViewBindings.a(view, R.id.gap_view);
        if (viewA != null) {
            i10 = R.id.gap_view2;
            View viewA2 = ViewBindings.a(view, R.id.gap_view2);
            if (viewA2 != null) {
                i10 = R.id.host_view;
                View viewA3 = ViewBindings.a(view, R.id.host_view);
                if (viewA3 != null) {
                    SrRecyclerPresenterItemBinding srRecyclerPresenterItemBindingBind = SrRecyclerPresenterItemBinding.bind(viewA3);
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R.id.live_user_count;
                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.live_user_count);
                    if (autoSizingTextView != null) {
                        i10 = R.id.live_user_count_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.live_user_count_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.live_user_recycler;
                            SRLiveUserRecyclerView sRLiveUserRecyclerView = (SRLiveUserRecyclerView) ViewBindings.a(view, R.id.live_user_recycler);
                            if (sRLiveUserRecyclerView != null) {
                                i10 = R.id.live_user_recycler_container;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.live_user_recycler_container);
                                if (linearLayout3 != null) {
                                    return new SrLiveUserContainerBinding(linearLayout, viewA, viewA2, srRecyclerPresenterItemBindingBind, linearLayout, autoSizingTextView, linearLayout2, sRLiveUserRecyclerView, linearLayout3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
