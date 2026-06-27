package com.narvii.master.home.discover.adapter;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.topic.widgets.GeneralTopicCard;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GridTopicCardAdapter.kt */
/* loaded from: classes3.dex */
public class GridTopicCardAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> implements ModuleItemCountHost, SerialRequestChild, SubRequestHost {
    private int allItemCount;
    private final SerialRequestHelper childHelper;
    private final NVContext ctx;
    private final ContentModule module;

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public boolean autoLoadNextPage() {
        return false;
    }

    public int getMaxSize() {
        return 6;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    protected boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridTopicCardAdapter(NVContext ctx, ContentModule module) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final ContentModule getModule() {
        return this.module;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_grid, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…opic_grid, parent, false)");
        return new FeaturedTopicViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof FeaturedTopicViewHolder) {
            ((FeaturedTopicViewHolder) holder).getGeneralTopicCard().setTopic(getItem(i));
            tagCellForLog(holder.itemView, getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(NVContext nVContext) {
        return new DataSource(nVContext);
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.module.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "module.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(StoryTopic.class, this.module));
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (getErrorMessage() != null) {
            return 0;
        }
        return Math.min(super.getItemCount(), getMaxSize());
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i, pageRequestCallback);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        StoryTopic item = getItem(i);
        if (item == null) {
            return false;
        }
        Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
        intent.putExtra("topic", JacksonUtils.writeAsString(item));
        if (item.topicId == 0) {
            Log.e("topic0problem : StoryTopicView open with error: " + item);
            return false;
        }
        logClickEvent(item, ActSemantic.checkDetail);
        if (getContext() instanceof NVActivity) {
            Context context = getContext();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            if (!((NVActivity) context).isGlobalInteractionScope()) {
                intent.putExtra("__communityId", 0);
            }
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, true);
        getContext().startActivity(intent);
        return true;
    }

    /* compiled from: GridTopicCardAdapter.kt */
    private final class DataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {
        public DataSource(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (GridTopicCardAdapter.this.childHelper.isReadyToRequest() && (requestFromModule = GridTopicCardAdapter.this.getModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, StoryTopicListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            GridTopicCardAdapter.this.allItemCount = resp.allItemCount;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            GridTopicCardAdapter.this.childHelper.setRequestFinished(GridTopicCardAdapter.this.getModule());
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public StoryTopic getItem(int i) {
        StoryTopic storyTopic = (StoryTopic) super.getItem(i);
        if (storyTopic != null) {
            this.childHelper.setItemShown();
        }
        return storyTopic;
    }

    /* compiled from: GridTopicCardAdapter.kt */
    private final class FeaturedTopicViewHolder extends BaseViewHolder {
        private final GeneralTopicCard generalTopicCard;
        final /* synthetic */ GridTopicCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FeaturedTopicViewHolder(GridTopicCardAdapter gridTopicCardAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = gridTopicCardAdapter;
            GeneralTopicCard generalTopicCard = (GeneralTopicCard) itemView.findViewById(com.narvii.amino.R.id.story_topic_card_view);
            Intrinsics.checkExpressionValueIsNotNull(generalTopicCard, "itemView.story_topic_card_view");
            this.generalTopicCard = generalTopicCard;
            this.generalTopicCard.setOnClickListener(gridTopicCardAdapter.subviewClickListener);
        }

        public final GeneralTopicCard getGeneralTopicCard() {
            return this.generalTopicCard;
        }
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        super.resetList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(SerialRequestParent serialRequestParent) {
        Intrinsics.checkParameterIsNotNull(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        Log.d("SerialRequest", "check ready " + this.module.dataUrl);
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getErrorMessage()) || this.childHelper.isItemShown();
    }
}
