package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class MenuItemOpsBinding implements ViewBinding {

    @NonNull
    public final ImageView menuOps;

    @NonNull
    private final ImageView rootView;

    @NonNull
    public static MenuItemOpsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MenuItemOpsBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ImageView imageView = (ImageView) view;
        return new MenuItemOpsBinding(imageView, imageView);
    }

    @NonNull
    public static MenuItemOpsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.menu_item_ops, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MenuItemOpsBinding(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = imageView;
        this.menuOps = imageView2;
    }
}
