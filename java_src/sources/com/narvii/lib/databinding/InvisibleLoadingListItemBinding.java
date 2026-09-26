package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class InvisibleLoadingListItemBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public static InvisibleLoadingListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InvisibleLoadingListItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new InvisibleLoadingListItemBinding(view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static InvisibleLoadingListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.invisible_loading_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InvisibleLoadingListItemBinding(@NonNull View view) {
        this.rootView = view;
    }
}
