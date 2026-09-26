package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.CheckWindowChangeView;

/* JADX INFO: loaded from: classes9.dex */
public final class CheckWindowChangeLayoutBinding implements ViewBinding {

    @NonNull
    public final CheckWindowChangeView checkWindowChange;

    @NonNull
    private final CheckWindowChangeView rootView;

    @NonNull
    public static CheckWindowChangeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CheckWindowChangeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckWindowChangeLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        CheckWindowChangeView checkWindowChangeView = (CheckWindowChangeView) view;
        return new CheckWindowChangeLayoutBinding(checkWindowChangeView, checkWindowChangeView);
    }

    @NonNull
    public static CheckWindowChangeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_window_change_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckWindowChangeLayoutBinding(@NonNull CheckWindowChangeView checkWindowChangeView, @NonNull CheckWindowChangeView checkWindowChangeView2) {
        this.rootView = checkWindowChangeView;
        this.checkWindowChange = checkWindowChangeView2;
    }
}
