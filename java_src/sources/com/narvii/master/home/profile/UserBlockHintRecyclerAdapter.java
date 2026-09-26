package com.narvii.master.home.profile;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.userblock.UserBlockService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class UserBlockHintRecyclerAdapter extends NVRecyclerViewBaseAdapter {
    private final boolean isUserBlock;

    @Nullable
    private final String uid;

    @NotNull
    private final UserBlockService userBlockService;

    private static final class BlockViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BlockViewHolder(@NotNull View view) {
            super(view);
            kotlin.jvm.internal.t.j(view, "view");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.isUserBlock ? 1 : 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserBlockHintRecyclerAdapter(@NotNull NVContext ctx, @Nullable String str, boolean z6) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.uid = str;
        this.isUserBlock = z6;
        Object service = ctx.getService("block");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.userBlockService = (UserBlockService) service;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        View view = holder.itemView;
        TextView textView = (TextView) view.findViewById(R.id.unblock_hint_tv);
        String str = this.uid;
        String string = "";
        if (str != null) {
            if (this.userBlockService.isInBlockedList(str)) {
                string = view.getResources().getString(R.string.you_are_blocking_this_user);
            } else if (this.userBlockService.isBlocked(this.uid)) {
                string = view.getResources().getString(R.string.you_are_blocked_by_this_user);
            }
        }
        textView.setText(string);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.user_block_hint_item, parent, false);
        kotlin.jvm.internal.t.g(viewInflate);
        return new BlockViewHolder(viewInflate);
    }
}
