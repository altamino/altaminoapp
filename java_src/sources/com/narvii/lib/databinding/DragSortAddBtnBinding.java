package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class DragSortAddBtnBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView clickRemove;

    @NonNull
    private final FontAwesomeView rootView;

    @NonNull
    public static DragSortAddBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FontAwesomeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DragSortAddBtnBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FontAwesomeView fontAwesomeView = (FontAwesomeView) view;
        return new DragSortAddBtnBinding(fontAwesomeView, fontAwesomeView);
    }

    @NonNull
    public static DragSortAddBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drag_sort_add_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DragSortAddBtnBinding(@NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2) {
        this.rootView = fontAwesomeView;
        this.clickRemove = fontAwesomeView2;
    }
}
