package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentAggrefationBaseBinding implements ViewBinding {

    @NonNull
    public final NVListView communityList;

    @NonNull
    public final FrameLayout contentFrame;

    @NonNull
    public final LinearLayout leftNavContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentAggrefationBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAggrefationBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aggrefation_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAggrefationBaseBinding(@NonNull LinearLayout linearLayout, @NonNull NVListView nVListView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.communityList = nVListView;
        this.contentFrame = frameLayout;
        this.leftNavContainer = linearLayout2;
    }

    @NonNull
    public static FragmentAggrefationBaseBinding bind(@NonNull View view) {
        int i10 = R.id.community_list;
        NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.community_list);
        if (nVListView != null) {
            i10 = R.id.content_frame;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.content_frame);
            if (frameLayout != null) {
                i10 = R.id.left_nav_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.left_nav_container);
                if (linearLayout != null) {
                    return new FragmentAggrefationBaseBinding((LinearLayout) view, nVListView, frameLayout, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
