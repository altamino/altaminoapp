package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.ITopicNotInterestedHost;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Utils;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryCardTitleAdapter.kt */
/* loaded from: classes3.dex */
public final class StoryCardTitleAdapter extends TopicTitleAdapter {
    private final ContentModule module;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryCardTitleAdapter(NVContext ctx, ContentModule module, ModuleDisplayConfig moduleDisplayConfig, Integer num) {
        super(ctx, module, moduleDisplayConfig, num);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.module = module;
    }

    public /* synthetic */ StoryCardTitleAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, contentModule, moduleDisplayConfig, (i & 8) != 0 ? null : num);
    }

    public final ContentModule getModule() {
        return this.module;
    }

    @Override // com.narvii.master.home.discover.adapter.TopicTitleAdapter, android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        RecyclerView.ViewHolder viewHolderOnCreateViewHolder = super.onCreateViewHolder(parent, i);
        View view = viewHolderOnCreateViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = Utils.dpToPxInt(getContext(), 1.0f);
        View view2 = viewHolderOnCreateViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "holder.itemView");
        view2.setLayoutParams(marginLayoutParams);
        return viewHolderOnCreateViewHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.master.home.discover.adapter.TopicTitleAdapter, com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        String str = this.module.displayName;
        if (str == null || str.length() == 0) {
            return 0;
        }
        ModuleDisplayConfig moduleDisplayConfig = getModuleDisplayConfig();
        if (moduleDisplayConfig != null && moduleDisplayConfig.showNoStoriesYet) {
            ModuleDisplayConfig moduleDisplayConfig2 = getModuleDisplayConfig();
            if (!(moduleDisplayConfig2 != null ? Boolean.valueOf(moduleDisplayConfig2.isPagingLoad) : null).booleanValue() && (getHost() instanceof SubRequestHost)) {
                if (getHost() instanceof ITopicNotInterestedHost) {
                    NVRecyclerViewBaseAdapter host = getHost();
                    if (host == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost");
                    }
                    if (((ITopicNotInterestedHost) host).notInterested()) {
                        return 0;
                    }
                }
                NVRecyclerViewBaseAdapter host2 = getHost();
                if (host2 != null) {
                    return ((SubRequestHost) host2).isEnd() ? 1 : 0;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
            }
        }
        return super.getItemCount();
    }
}
