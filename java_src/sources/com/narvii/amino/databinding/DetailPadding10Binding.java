package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class DetailPadding10Binding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public static DetailPadding10Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailPadding10Binding bind(@NonNull View view) {
        if (view != null) {
            return new DetailPadding10Binding(view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static DetailPadding10Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_padding10, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailPadding10Binding(@NonNull View view) {
        this.rootView = view;
    }
}
