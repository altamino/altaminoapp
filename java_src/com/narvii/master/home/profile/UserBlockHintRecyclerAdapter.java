package com.narvii.master.home.profile;

import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.userblock.UserBlockService;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserBlockHintRecyclerAdapter.kt */
/* loaded from: classes3.dex */
public final class UserBlockHintRecyclerAdapter extends NVRecyclerViewBaseAdapter {
    private final boolean isUserBlock;
    private final String uid;
    private final UserBlockService userBlockService;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserBlockHintRecyclerAdapter(NVContext ctx, String str, boolean z) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.uid = str;
        this.isUserBlock = z;
        Object service = ctx.getService("block");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"block\")");
        this.userBlockService = (UserBlockService) service;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View v = LayoutInflater.from(getContext()).inflate(R.layout.user_block_hint_item, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(v, "v");
        return new BlockViewHolder(v);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.isUserBlock ? 1 : 0;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        View view = holder.itemView;
        TextView hint = (TextView) view.findViewById(R.id.unblock_hint_tv);
        Intrinsics.checkExpressionValueIsNotNull(hint, "hint");
        String str = this.uid;
        String string = "";
        if (str != null) {
            if (this.userBlockService.isInBlockedList(str)) {
                string = view.getResources().getString(R.string.you_are_blocking_this_user);
            } else if (this.userBlockService.isBlocked(this.uid)) {
                string = view.getResources().getString(R.string.you_are_blocked_by_this_user);
            }
        }
        hint.setText(string);
    }

    /* compiled from: UserBlockHintRecyclerAdapter.kt */
    private static final class BlockViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BlockViewHolder(View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
        }
    }
}
