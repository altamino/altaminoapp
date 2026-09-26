package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes3.dex */
public final class ListViewAminoBinding implements ViewBinding {

    @NonNull
    public final NVListView list;

    @NonNull
    private final NVListView rootView;

    @NonNull
    public static ListViewAminoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVListView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListViewAminoBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVListView nVListView = (NVListView) view;
        return new ListViewAminoBinding(nVListView, nVListView);
    }

    @NonNull
    public static ListViewAminoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_view_amino, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListViewAminoBinding(@NonNull NVListView nVListView, @NonNull NVListView nVListView2) {
        this.rootView = nVListView;
        this.list = nVListView2;
    }
}
