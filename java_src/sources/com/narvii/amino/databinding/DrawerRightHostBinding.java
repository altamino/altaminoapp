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
import com.narvii.drawer.DrawerRealtimeBlurView;
import com.narvii.drawer.DrawerRightHost;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes4.dex */
public final class DrawerRightHostBinding implements ViewBinding {

    @NonNull
    public final DrawerRealtimeBlurView blurBg;

    @NonNull
    public final NVListView list;

    @NonNull
    private final DrawerRightHost rootView;

    @NonNull
    public final LinearLayout search;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static DrawerRightHostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public DrawerRightHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerRightHostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_right_host, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerRightHostBinding(@NonNull DrawerRightHost drawerRightHost, @NonNull DrawerRealtimeBlurView drawerRealtimeBlurView, @NonNull NVListView nVListView, @NonNull LinearLayout linearLayout, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = drawerRightHost;
        this.blurBg = drawerRealtimeBlurView;
        this.list = nVListView;
        this.search = linearLayout;
        this.swipeRefresh = swipeRefreshLayout;
    }

    @NonNull
    public static DrawerRightHostBinding bind(@NonNull View view) {
        int i10 = R.id.blur_bg;
        DrawerRealtimeBlurView drawerRealtimeBlurView = (DrawerRealtimeBlurView) ViewBindings.a(view, R.id.blur_bg);
        if (drawerRealtimeBlurView != null) {
            i10 = android.R.id.list;
            NVListView nVListView = (NVListView) ViewBindings.a(view, android.R.id.list);
            if (nVListView != null) {
                i10 = R.id.search;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.search);
                if (linearLayout != null) {
                    i10 = R.id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
                    if (swipeRefreshLayout != null) {
                        return new DrawerRightHostBinding((DrawerRightHost) view, drawerRealtimeBlurView, nVListView, linearLayout, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
