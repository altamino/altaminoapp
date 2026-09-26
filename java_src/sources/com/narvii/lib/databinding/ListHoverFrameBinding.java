package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.list.ListHoverFrame;

/* JADX INFO: loaded from: classes5.dex */
public final class ListHoverFrameBinding implements ViewBinding {

    @NonNull
    public final ListHoverFrame listHover;

    @NonNull
    private final ListHoverFrame rootView;

    @NonNull
    public static ListHoverFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ListHoverFrame getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListHoverFrameBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ListHoverFrame listHoverFrame = (ListHoverFrame) view;
        return new ListHoverFrameBinding(listHoverFrame, listHoverFrame);
    }

    @NonNull
    public static ListHoverFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_hover_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListHoverFrameBinding(@NonNull ListHoverFrame listHoverFrame, @NonNull ListHoverFrame listHoverFrame2) {
        this.rootView = listHoverFrame;
        this.listHover = listHoverFrame2;
    }
}
