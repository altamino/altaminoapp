package com.narvii.community.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.DataMetricalHelper;
import com.narvii.community.MasterCommunityLayoutHelper;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.community.widget.CommunityViewHolder;
import com.narvii.logging.ActSemantic;
import com.narvii.master.CommunityHelper;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CommunityListAdapter extends PagingRecyclerViewAdapter<Community, SearchCommunityListResponse> {
    private final int TYPE_NORMAL;
    private final int TYPE_UNLISTED;

    @NotNull
    private final MasterCommunityLayoutHelper communityLayoutHelper;

    public boolean allowVisitorMode() {
        return false;
    }

    public int communityLayoutId() {
        return R.layout.item_community_card_base;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        return "Community";
    }

    @NotNull
    public final MasterCommunityLayoutHelper getCommunityLayoutHelper() {
        return this.communityLayoutHelper;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    public final int getTYPE_NORMAL() {
        return this.TYPE_NORMAL;
    }

    public final int getTYPE_UNLISTED() {
        return this.TYPE_UNLISTED;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    protected boolean isDarkTheme() {
        return true;
    }

    public void logItemClickEvent(@NotNull Community item) {
        t.j(item, "item");
        logClickEvent(item, ActSemantic.checkDetail);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        t.j(holder, "holder");
        if (holder instanceof CommunityViewHolder) {
            ((CommunityViewHolder) holder).bindCommunity(getItem(i10));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
        t.j(parent, "parent");
        if (i10 == this.TYPE_UNLISTED) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.incubator_searched_community_item_unlist, parent, false);
            t.g(viewInflate);
            NVContext context = this.context;
            t.i(context, "context");
            return new CommunityViewHolder(viewInflate, context, isDarkTheme(), false, this.communityLayoutHelper, 8, null);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(communityLayoutId(), parent, false);
        t.g(viewInflate2);
        NVContext context2 = this.context;
        t.i(context2, "context");
        return new CommunityViewHolder(viewInflate2, context2, isDarkTheme(), false, this.communityLayoutHelper, 8, null);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (!(obj instanceof Community)) {
            return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
        }
        Community community = (Community) obj;
        Context context = getContext();
        t.i(context, "getContext(...)");
        DataMetricalHelper.sendCommunityClick(community, context);
        logItemClickEvent(community);
        CommunityHelper communityHelper = new CommunityHelper(this.context);
        if (allowVisitorMode()) {
            communityHelper.visitCommunity(community, view);
            return true;
        }
        communityHelper.communityDetail(community);
        return true;
    }

    public CommunityListAdapter(@Nullable NVContext nVContext) {
        super(nVContext);
        this.TYPE_UNLISTED = 1;
        t.g(nVContext);
        this.communityLayoutHelper = new MasterCommunityLayoutHelper(nVContext);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i10) {
        getItem(i10);
        return this.TYPE_NORMAL;
    }
}
