package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class PaidOutListDividerBinding implements ViewBinding {

    @NonNull
    public final View listDivider;

    @NonNull
    private final View rootView;

    @NonNull
    public static PaidOutListDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PaidOutListDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new PaidOutListDividerBinding(view, view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static PaidOutListDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.paid_out_list_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PaidOutListDividerBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.listDivider = view2;
    }
}
