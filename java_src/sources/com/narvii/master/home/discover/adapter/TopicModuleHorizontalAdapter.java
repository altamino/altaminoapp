package com.narvii.master.home.discover.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.NVObject;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class TopicModuleHorizontalAdapter extends ModuleHorizontalBaseAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int pageSize = 25;

    @NotNull
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;

    @NotNull
    private final InnerAdapter innerAdapter;

    @Nullable
    private DataSource innerDataSource;

    @NotNull
    private RecyclerInListViewImpressionCollector<StoryTopic> ipc;

    @NotNull
    private final ObjectItemClickListener itemClickListener;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class DataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        public DataSource(NVContext nVContext) {
            super(nVContext, null, new PagingConfiguration(0, 25));
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (TopicModuleHorizontalAdapter.this.isReadyToRequest() && (requestFromModule = TopicModuleHorizontalAdapter.this.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            TopicModuleHorizontalAdapter.this.getChildHelper().setRequestFinished(TopicModuleHorizontalAdapter.this.getContentModule());
        }
    }

    public final class InnerAdapter extends GeneralTopicCardAdapter {
        final /* synthetic */ TopicModuleHorizontalAdapter this$0;

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected boolean showPageLoadingStatus() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(@NotNull TopicModuleHorizontalAdapter topicModuleHorizontalAdapter, @NotNull NVContext context, ContentModule module) {
            super(context, module);
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(module, "module");
            this.this$0 = topicModuleHorizontalAdapter;
            addDataSetChangeListener(topicModuleHorizontalAdapter.dataSetChangeListener);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(@Nullable NVContext nVContext) {
            TopicModuleHorizontalAdapter topicModuleHorizontalAdapter = this.this$0;
            topicModuleHorizontalAdapter.innerDataSource = topicModuleHorizontalAdapter.new DataSource(nVContext);
            DataSource dataSource = this.this$0.innerDataSource;
            kotlin.jvm.internal.t.g(dataSource);
            return dataSource;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
            super.refresh(i10 | 1, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceRefreshListener
        public void onRefreshFinishedBeforePageResponse(int i10) {
            super.onRefreshFinishedBeforePageResponse(i10);
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView != null) {
                recyclerView.scrollToPosition(0);
            }
        }
    }

    public final class TopicViewHolder extends BaseViewHolder {

        @NotNull
        private final RecyclerView recyclerView;
        final /* synthetic */ TopicModuleHorizontalAdapter this$0;

        @NotNull
        public final RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicViewHolder(@NotNull TopicModuleHorizontalAdapter topicModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = topicModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            RecyclerView recyclerView = (RecyclerView) viewFindViewById;
            this.recyclerView = recyclerView;
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            recyclerView.setAdapter(topicModuleHorizontalAdapter.innerAdapter);
            recyclerView.setNestedScrollingEnabled(false);
        }
    }

    @NotNull
    public final RecyclerInListViewImpressionCollector<StoryTopic> getIpc() {
        return this.ipc;
    }

    @NotNull
    public final ObjectItemClickListener getItemClickListener$Amino_bundle() {
        return this.itemClickListener;
    }

    public final void setIpc(@NotNull RecyclerInListViewImpressionCollector<StoryTopic> recyclerInListViewImpressionCollector) {
        kotlin.jvm.internal.t.j(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicModuleHorizontalAdapter(@NotNull NVContext context, @NotNull final ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.master.home.discover.adapter.p
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                TopicModuleHorizontalAdapter.dataSetChangeListener$lambda$2(this.f2336a);
            }
        };
        InnerAdapter innerAdapter = new InnerAdapter(this, context, contentModule);
        this.innerAdapter = innerAdapter;
        setAdapter(innerAdapter);
        final Class<StoryTopic> cls = StoryTopic.class;
        this.ipc = new RecyclerInListViewImpressionCollector<StoryTopic>(cls) { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<StoryTopic> objectInfo) {
                kotlin.jvm.internal.t.j(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, contentModule);
                if (kotlin.jvm.internal.t.e("listViewEnter", builder.getLogEvent().actSemantic)) {
                    builder.extraParam("listViewEnterSource", ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                }
            }
        };
        this.itemClickListener = new ObjectItemClickListener() { // from class: com.narvii.master.home.discover.adapter.q
            @Override // com.narvii.list.ObjectItemClickListener
            public final void onItemClick(NVObject nVObject) {
                TopicModuleHorizontalAdapter.itemClickListener$lambda$3(this.f2337a, nVObject);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2(final TopicModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Utils.post(new Runnable() { // from class: com.narvii.master.home.discover.adapter.r
            @Override // java.lang.Runnable
            public final void run() {
                TopicModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1(this.f2338a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1(TopicModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataSetChanged();
        this$0.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.master.home.discover.adapter.s
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                TopicModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1$lambda$0((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1$lambda$0(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
        kotlin.jvm.internal.t.j(obj, "obj");
        obj.onDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void itemClickListener$lambda$3(TopicModuleHorizontalAdapter this$0, NVObject nVObject) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (nVObject != null) {
            this$0.logClickEvent(nVObject, ActSemantic.checkDetail);
        } else {
            this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
        }
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource dataSource = this.innerDataSource;
        return (dataSource == null || dataSource.getSize() <= 0) ? 0 : 1;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(dataSource);
        return dataSource.getSize() > 0 ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        getItem(i10);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_embedded_recycler_view, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new TopicViewHolder(this, viewInflate);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource dataSource = this.innerDataSource;
        return (dataSource == null || dataSource.getSize() <= 0) ? 0 : 1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = getContentModule().moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        this.innerAdapter.setItemClickListener(this.itemClickListener);
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }
}
