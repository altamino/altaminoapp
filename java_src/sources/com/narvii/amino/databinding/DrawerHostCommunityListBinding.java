package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes11.dex */
public final class DrawerHostCommunityListBinding implements ViewBinding {

    @NonNull
    public final NVListView communityList;

    @NonNull
    public final RelativeLayout communityListContainer;

    @NonNull
    public final LinearLayout drawerQuit;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final View stub2;

    @NonNull
    public static DrawerHostCommunityListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerHostCommunityListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_host_community_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerHostCommunityListBinding(@NonNull RelativeLayout relativeLayout, @NonNull NVListView nVListView, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2) {
        this.rootView = relativeLayout;
        this.communityList = nVListView;
        this.communityListContainer = relativeLayout2;
        this.drawerQuit = linearLayout;
        this.stub1 = view;
        this.stub2 = view2;
    }

    @NonNull
    public static DrawerHostCommunityListBinding bind(@NonNull View view) {
        int i10 = R.id.community_list;
        NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.community_list);
        if (nVListView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i10 = R.id.drawer_quit;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.drawer_quit);
            if (linearLayout != null) {
                i10 = R.id.stub1;
                View viewA = ViewBindings.a(view, R.id.stub1);
                if (viewA != null) {
                    i10 = R.id.stub2;
                    View viewA2 = ViewBindings.a(view, R.id.stub2);
                    if (viewA2 != null) {
                        return new DrawerHostCommunityListBinding(relativeLayout, nVListView, relativeLayout, linearLayout, viewA, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
