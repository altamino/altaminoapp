package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class DrawerCategoryHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView drawerCategoryHeader;

    @NonNull
    private final TextView rootView;

    @NonNull
    public static DrawerCategoryHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerCategoryHeaderBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new DrawerCategoryHeaderBinding(textView, textView);
    }

    @NonNull
    public static DrawerCategoryHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_category_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerCategoryHeaderBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.drawerCategoryHeader = textView2;
    }
}
