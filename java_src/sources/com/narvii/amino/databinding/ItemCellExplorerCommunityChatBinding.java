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

/* JADX INFO: loaded from: classes4.dex */
public final class ItemCellExplorerCommunityChatBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView exploreChat;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemCellExplorerCommunityChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellExplorerCommunityChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_explorer_community_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellExplorerCommunityChatBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = flexLayout;
        this.exploreChat = autoSizingTextView;
    }

    @NonNull
    public static ItemCellExplorerCommunityChatBinding bind(@NonNull View view) {
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.explore_chat);
        if (autoSizingTextView != null) {
            return new ItemCellExplorerCommunityChatBinding((FlexLayout) view, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.explore_chat)));
    }
}
