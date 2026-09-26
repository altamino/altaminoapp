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

/* JADX INFO: loaded from: classes8.dex */
public final class MasterBottomBarBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final IncubatorTabItemLayoutBinding tabChat;

    @NonNull
    public final IncubatorTabItemLayoutBinding tabCommunity;

    @NonNull
    public final IncubatorTabItemLayoutBinding tabDiscover;

    @NonNull
    public final IncubatorTabItemLayoutBinding tabStore;

    @NonNull
    public static MasterBottomBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MasterBottomBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.master_bottom_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MasterBottomBarBinding(@NonNull LinearLayout linearLayout, @NonNull IncubatorTabItemLayoutBinding incubatorTabItemLayoutBinding, @NonNull IncubatorTabItemLayoutBinding incubatorTabItemLayoutBinding2, @NonNull IncubatorTabItemLayoutBinding incubatorTabItemLayoutBinding3, @NonNull IncubatorTabItemLayoutBinding incubatorTabItemLayoutBinding4) {
        this.rootView = linearLayout;
        this.tabChat = incubatorTabItemLayoutBinding;
        this.tabCommunity = incubatorTabItemLayoutBinding2;
        this.tabDiscover = incubatorTabItemLayoutBinding3;
        this.tabStore = incubatorTabItemLayoutBinding4;
    }

    @NonNull
    public static MasterBottomBarBinding bind(@NonNull View view) {
        int i10 = R.id.tab_chat;
        View viewA = ViewBindings.a(view, R.id.tab_chat);
        if (viewA != null) {
            IncubatorTabItemLayoutBinding incubatorTabItemLayoutBindingBind = IncubatorTabItemLayoutBinding.bind(viewA);
            i10 = R.id.tab_community;
            View viewA2 = ViewBindings.a(view, R.id.tab_community);
            if (viewA2 != null) {
                IncubatorTabItemLayoutBinding incubatorTabItemLayoutBindingBind2 = IncubatorTabItemLayoutBinding.bind(viewA2);
                i10 = R.id.tab_discover;
                View viewA3 = ViewBindings.a(view, R.id.tab_discover);
                if (viewA3 != null) {
                    IncubatorTabItemLayoutBinding incubatorTabItemLayoutBindingBind3 = IncubatorTabItemLayoutBinding.bind(viewA3);
                    i10 = R.id.tab_store;
                    View viewA4 = ViewBindings.a(view, R.id.tab_store);
                    if (viewA4 != null) {
                        return new MasterBottomBarBinding((LinearLayout) view, incubatorTabItemLayoutBindingBind, incubatorTabItemLayoutBindingBind2, incubatorTabItemLayoutBindingBind3, IncubatorTabItemLayoutBinding.bind(viewA4));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
