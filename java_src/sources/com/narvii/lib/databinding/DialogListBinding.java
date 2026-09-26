package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogListBinding implements ViewBinding {

    @NonNull
    public final NVListView list;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogListBinding bind(@NonNull View view) {
        int i10 = R.id.list;
        NVListView nVListView = (NVListView) ViewBindings.a(view, i10);
        if (nVListView != null) {
            return new DialogListBinding((FrameLayout) view, nVListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogListBinding(@NonNull FrameLayout frameLayout, @NonNull NVListView nVListView) {
        this.rootView = frameLayout;
        this.list = nVListView;
    }
}
