package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class BioDividerBinding implements ViewBinding {

    @NonNull
    public final View bottomDivider;

    @NonNull
    private final View rootView;

    @NonNull
    public static BioDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BioDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new BioDividerBinding(view, view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static BioDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bio_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BioDividerBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.bottomDivider = view2;
    }
}
