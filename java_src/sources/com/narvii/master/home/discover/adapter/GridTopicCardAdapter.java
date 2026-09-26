package com.narvii.master.home.discover.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class GridTopicCardAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> implements ModuleItemCountHost, SerialRequestChild, SubRequestHost {
    private int allItemCount;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final ContentModule module;

    private final class DataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        public DataSource(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (GridTopicCardAdapter.this.childHelper.isReadyToRequest() && (requestFromModule = GridTopicCardAdapter.this.getModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(@NotNull ApiRequest req, @NotNull StoryTopicListResponse resp, int i10) {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            GridTopicCardAdapter.this.allItemCount = resp.allItemCount;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            GridTopicCardAdapter.this.childHelper.setRequestFinished(GridTopicCardAdapter.this.getModule());
        }
    }

    private final class FeaturedTopicViewHolder extends BaseViewHolder {

        @NotNull
        private final GeneralTopicCard generalTopicCard;
        final /* synthetic */ GridTopicCardAdapter this$0;

        @NotNull
        public final GeneralTopicCard getGeneralTopicCard() {
            return this.generalTopicCard;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FeaturedTopicViewHolder(@NotNull GridTopicCardAdapter gridTopicCardAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = gridTopicCardAdapter;
            View viewFindViewById = itemView.findViewById(R.id.story_topic_card_view);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            GeneralTopicCard generalTopicCard = (GeneralTopicCard) viewFindViewById;
            this.generalTopicCard = generalTopicCard;
            generalTopicCard.setOnClickListener(gridTopicCardAdapter.subviewClickListener);
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public boolean autoLoadNextPage() {
        return false;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public int getMaxSize() {
        return 6;
    }

    @NotNull
    public final ContentModule getModule() {
        return this.module;
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
    public GridTopicCardAdapter(@NotNull NVContext ctx, @NotNull ContentModule module) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(@Nullable NVContext nVContext) {
        return new DataSource(nVContext);
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.module.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        Log.d("SerialRequest", "check ready " + this.module.dataUrl);
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof FeaturedTopicViewHolder) {
            ((FeaturedTopicViewHolder) holder).getGeneralTopicCard().setTopic(getItem(i10));
            tagCellForLog(holder.itemView, getItem(i10));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_grid, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new FeaturedTopicViewHolder(this, viewInflate);
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
    public void setSerialRequestParent(@NotNull SerialRequestParent serialRequestParent) {
        kotlin.jvm.internal.t.j(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public StoryTopic getItem(int i10) {
        StoryTopic storyTopic = (StoryTopic) super.getItem(i10);
        if (storyTopic != null) {
            this.childHelper.setItemShown();
        }
        return storyTopic;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (getErrorMessage() != null) {
            return 0;
        }
        return Math.min(super.getItemCount(), getMaxSize());
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        if (TextUtils.isEmpty(getErrorMessage()) && !this.childHelper.isItemShown()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(StoryTopic.class, this.module));
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        StoryTopic item = getItem(i10);
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
            kotlin.jvm.internal.t.h(context, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            if (!((NVActivity) context).isGlobalInteractionScope()) {
                intent.putExtra("__communityId", 0);
            }
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, true);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
        return true;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
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
}
