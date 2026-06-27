package com.narvii.community.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.MasterCommunityLayoutHelper;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.community.widget.CommunityViewHolder;
import com.narvii.logging.ActSemantic;
import com.narvii.master.CommunityHelper;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityListAdapter.kt */
/* loaded from: classes2.dex */
public abstract class CommunityListAdapter extends PagingRecyclerViewAdapter<Community, SearchCommunityListResponse> {
    private final int TYPE_NORMAL;
    private final int TYPE_UNLISTED;
    private final MasterCommunityLayoutHelper communityLayoutHelper;

    public boolean allowVisitorMode() {
        return false;
    }

    public int communityLayoutId() {
        return R.layout.item_community_card_base;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "Community";
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    protected boolean isDarkTheme() {
        return true;
    }

    public CommunityListAdapter(NVContext nVContext) {
        super(nVContext);
        this.TYPE_UNLISTED = 1;
        if (nVContext != null) {
            this.communityLayoutHelper = new MasterCommunityLayoutHelper(nVContext);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    public final int getTYPE_NORMAL() {
        return this.TYPE_NORMAL;
    }

    public final int getTYPE_UNLISTED() {
        return this.TYPE_UNLISTED;
    }

    public final MasterCommunityLayoutHelper getCommunityLayoutHelper() {
        return this.communityLayoutHelper;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i) {
        getItem(i);
        return this.TYPE_NORMAL;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        if (i == this.TYPE_UNLISTED) {
            View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.incubator_searched_community_item_unlist, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            NVContext context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            return new CommunityViewHolder(cell, context, isDarkTheme(), false, this.communityLayoutHelper, 8, null);
        }
        View cell2 = LayoutInflater.from(parent.getContext()).inflate(communityLayoutId(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell2, "cell");
        NVContext context2 = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        return new CommunityViewHolder(cell2, context2, isDarkTheme(), false, this.communityLayoutHelper, 8, null);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof CommunityViewHolder) {
            ((CommunityViewHolder) holder).bindCommunity(getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Community) {
            Community community = (Community) obj;
            logItemClickEvent(community);
            CommunityHelper communityHelper = new CommunityHelper(this.context);
            if (allowVisitorMode()) {
                communityHelper.visitCommunity(community, view);
                return true;
            }
            communityHelper.communityDetail(community);
            return true;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    public void logItemClickEvent(Community item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        logClickEvent(item, ActSemantic.checkDetail);
    }
}
