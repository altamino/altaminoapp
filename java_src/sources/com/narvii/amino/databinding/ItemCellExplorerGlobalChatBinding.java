package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemCellExplorerGlobalChatBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView moreAminos;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemCellExplorerGlobalChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellExplorerGlobalChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_explorer_global_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellExplorerGlobalChatBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = flexLayout;
        this.moreAminos = autoSizingTextView;
    }

    @NonNull
    public static ItemCellExplorerGlobalChatBinding bind(@NonNull View view) {
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.more_aminos);
        if (autoSizingTextView != null) {
            return new ItemCellExplorerGlobalChatBinding((FlexLayout) view, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.more_aminos)));
    }
}
