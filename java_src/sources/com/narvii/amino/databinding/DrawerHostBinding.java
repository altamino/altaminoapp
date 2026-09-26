package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.drawer.DrawerHost;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawerHostBinding implements ViewBinding {

    @NonNull
    private final DrawerHost rootView;

    @NonNull
    public static DrawerHostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public DrawerHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerHostBinding bind(@NonNull View view) {
        if (view != null) {
            return new DrawerHostBinding((DrawerHost) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static DrawerHostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_host, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerHostBinding(@NonNull DrawerHost drawerHost) {
        this.rootView = drawerHost;
    }
}
