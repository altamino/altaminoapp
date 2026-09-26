package com.narvii.wallet.membership;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.source.DataSource;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class MembershipDataAdapter extends NVRecyclerViewAdapter<Privilege> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MembershipDataAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    @NotNull
    public DataSource<Privilege> createDataSource(@Nullable NVContext nVContext) {
        if (nVContext != null) {
            return new PrivilegeDataSource(nVContext);
        }
        throw new IllegalArgumentException("context is null");
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.dataSource.getSize();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        t.j(holder, "holder");
        if (holder instanceof PrivilegeViewHolder) {
            ((PrivilegeViewHolder) holder).bind(getItem(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        t.j(parent, "parent");
        return new PrivilegeViewHolder(createMembershipViewItem(parent));
    }

    private final View createMembershipViewItem(ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.membership_privileges_recycler_item, viewGroup, false);
        t.i(viewInflate, "inflate(...)");
        return viewInflate;
    }
}
