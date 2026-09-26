package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public final class DrawerRightRecentBinding implements ViewBinding {

    @NonNull
    public final GridLayout grid;

    @NonNull
    private final GridLayout rootView;

    @NonNull
    public static DrawerRightRecentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public GridLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerRightRecentBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        GridLayout gridLayout = (GridLayout) view;
        return new DrawerRightRecentBinding(gridLayout, gridLayout);
    }

    @NonNull
    public static DrawerRightRecentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_right_recent, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerRightRecentBinding(@NonNull GridLayout gridLayout, @NonNull GridLayout gridLayout2) {
        this.rootView = gridLayout;
        this.grid = gridLayout2;
    }
}
