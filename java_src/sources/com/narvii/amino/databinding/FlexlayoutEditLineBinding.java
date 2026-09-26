package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FlexlayoutEditLineBinding implements ViewBinding {

    @NonNull
    public final View editStatusLine;

    @NonNull
    private final View rootView;

    @NonNull
    public static FlexlayoutEditLineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlexlayoutEditLineBinding bind(@NonNull View view) {
        if (view != null) {
            return new FlexlayoutEditLineBinding(view, view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static FlexlayoutEditLineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flexlayout_edit_line, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlexlayoutEditLineBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.editStatusLine = view2;
    }
}
