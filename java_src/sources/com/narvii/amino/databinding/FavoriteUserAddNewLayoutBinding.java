package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoriteUserAddNewLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout addFavoriteUser;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FavoriteUserAddNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FavoriteUserAddNewLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        LinearLayout linearLayout = (LinearLayout) view;
        return new FavoriteUserAddNewLayoutBinding(linearLayout, linearLayout);
    }

    @NonNull
    public static FavoriteUserAddNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.favorite_user_add_new_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FavoriteUserAddNewLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.addFavoriteUser = linearLayout2;
    }
}
