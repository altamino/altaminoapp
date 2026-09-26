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

/* JADX INFO: loaded from: classes8.dex */
public final class ComponentRecentChatListBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView recentChatBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ComponentRecentChatListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentRecentChatListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_recent_chat_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentRecentChatListBinding(@NonNull LinearLayout linearLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.rootView = linearLayout;
        this.recentChatBar = horizontalRecyclerView;
    }

    @NonNull
    public static ComponentRecentChatListBinding bind(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.recent_chat_bar);
        if (horizontalRecyclerView != null) {
            return new ComponentRecentChatListBinding((LinearLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recent_chat_bar)));
    }
}
