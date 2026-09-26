package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.cofetti.CofettiView;

/* JADX INFO: loaded from: classes11.dex */
public final class CofettiViewBinding implements ViewBinding {

    @NonNull
    public final CofettiView cofetti;

    @NonNull
    private final CofettiView rootView;

    @NonNull
    public static CofettiViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CofettiView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CofettiViewBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        CofettiView cofettiView = (CofettiView) view;
        return new CofettiViewBinding(cofettiView, cofettiView);
    }

    @NonNull
    public static CofettiViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.cofetti_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CofettiViewBinding(@NonNull CofettiView cofettiView, @NonNull CofettiView cofettiView2) {
        this.rootView = cofettiView;
        this.cofetti = cofettiView2;
    }
}
