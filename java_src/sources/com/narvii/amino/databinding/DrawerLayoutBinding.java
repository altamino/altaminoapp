package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.drawer.DrawerView;
import com.narvii.drawer.MyDrawerLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class DrawerLayoutBinding implements ViewBinding {

    @NonNull
    public final MyDrawerLayout drawerLayout;

    @NonNull
    public final DrawerView drawerLeftView;

    @NonNull
    public final DrawerView drawerRightView;

    @NonNull
    private final MyDrawerLayout rootView;

    @NonNull
    public static DrawerLayoutBinding bind(@NonNull View view) {
        MyDrawerLayout myDrawerLayout = (MyDrawerLayout) view;
        int i10 = R.id.drawer_left_view;
        DrawerView drawerView = (DrawerView) ViewBindings.a(view, R.id.drawer_left_view);
        if (drawerView != null) {
            i10 = R.id.drawer_right_view;
            DrawerView drawerView2 = (DrawerView) ViewBindings.a(view, R.id.drawer_right_view);
            if (drawerView2 != null) {
                return new DrawerLayoutBinding(myDrawerLayout, myDrawerLayout, drawerView, drawerView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DrawerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public MyDrawerLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerLayoutBinding(@NonNull MyDrawerLayout myDrawerLayout, @NonNull MyDrawerLayout myDrawerLayout2, @NonNull DrawerView drawerView, @NonNull DrawerView drawerView2) {
        this.rootView = myDrawerLayout;
        this.drawerLayout = myDrawerLayout2;
        this.drawerLeftView = drawerView;
        this.drawerRightView = drawerView2;
    }
}
