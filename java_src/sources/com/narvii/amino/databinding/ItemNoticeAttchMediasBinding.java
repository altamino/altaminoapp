package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemNoticeAttchMediasBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView attachMediaRecycleView;

    @NonNull
    public final View refObjMargin;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout strikeObjContainer;

    @NonNull
    public static ItemNoticeAttchMediasBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeAttchMediasBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_attch_medias, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeAttchMediasBinding(@NonNull LinearLayout linearLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull View view, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.attachMediaRecycleView = horizontalRecyclerView;
        this.refObjMargin = view;
        this.strikeObjContainer = linearLayout2;
    }

    @NonNull
    public static ItemNoticeAttchMediasBinding bind(@NonNull View view) {
        int i10 = R.id.attach_media_recycleView;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.attach_media_recycleView);
        if (horizontalRecyclerView != null) {
            i10 = R.id.ref_obj_margin;
            View viewA = ViewBindings.a(view, R.id.ref_obj_margin);
            if (viewA != null) {
                i10 = R.id.strike_obj_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.strike_obj_container);
                if (linearLayout != null) {
                    return new ItemNoticeAttchMediasBinding((LinearLayout) view, horizontalRecyclerView, viewA, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
