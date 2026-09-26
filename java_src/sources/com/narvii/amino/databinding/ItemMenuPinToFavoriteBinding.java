package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemMenuPinToFavoriteBinding implements ViewBinding {

    @NonNull
    private final NVImageView rootView;

    @NonNull
    public static ItemMenuPinToFavoriteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMenuPinToFavoriteBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemMenuPinToFavoriteBinding((NVImageView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemMenuPinToFavoriteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_menu_pin_to_favorite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMenuPinToFavoriteBinding(@NonNull NVImageView nVImageView) {
        this.rootView = nVImageView;
    }
}
