package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemCellTopicGridBinding implements ViewBinding {

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemCellTopicGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellTopicGridBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemCellTopicGridBinding((FlexLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemCellTopicGridBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_topic_grid, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellTopicGridBinding(@NonNull FlexLayout flexLayout) {
        this.rootView = flexLayout;
    }
}
