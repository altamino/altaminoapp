package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicModuleHorizontalAdapter.kt */
/* loaded from: classes3.dex */
public final class TopicModuleHorizontalAdapter extends ModuleHorizontalBaseAdapter {
    public static final Companion Companion = new Companion(null);
    private static final int pageSize = 25;
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;
    private final InnerAdapter innerAdapter;
    private DataSource innerDataSource;
    private RecyclerInListViewImpressionCollector<StoryTopic> ipc;
    private final ObjectItemClickListener itemClickListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicModuleHorizontalAdapter(NVContext context, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter$dataSetChangeListener$1
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                Utils.post(new Runnable() { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter$dataSetChangeListener$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopicModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0.notifyDataSetChanged();
                        ((NVRecyclerViewBaseAdapter) TopicModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter.dataSetChangeListener.1.1.1
                            @Override // com.narvii.util.Callback
                            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
                                Intrinsics.checkParameterIsNotNull(obj, "obj");
                                obj.onDataSetChanged();
                            }
                        });
                    }
                });
            }
        };
        this.innerAdapter = new InnerAdapter(this, context, contentModule);
        setAdapter(this.innerAdapter);
        final Class<StoryTopic> cls = StoryTopic.class;
        final int i = R.id.embed_recycler;
        this.ipc = new RecyclerInListViewImpressionCollector<StoryTopic>(cls, i) { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<StoryTopic> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, contentModule);
                if (Intrinsics.areEqual(ActSemantic.listViewEnter.name(), builder.getLogEvent().actSemantic)) {
                    builder.extraParam("listViewEnterSource", ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                }
            }
        };
        this.itemClickListener = new ObjectItemClickListener() { // from class: com.narvii.master.home.discover.adapter.TopicModuleHorizontalAdapter$itemClickListener$1
            @Override // com.narvii.list.ObjectItemClickListener
            public final void onItemClick(NVObject nVObject) {
                if (nVObject != null) {
                    this.this$0.logClickEvent(nVObject, ActSemantic.checkDetail);
                } else {
                    this.this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
                }
            }
        };
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            return 0;
        }
        if (dataSource != null) {
            return dataSource.getSize() > 0 ? 1 : 0;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final RecyclerInListViewImpressionCollector<StoryTopic> getIpc() {
        return this.ipc;
    }

    public final void setIpc(RecyclerInListViewImpressionCollector<StoryTopic> recyclerInListViewImpressionCollector) {
        Intrinsics.checkParameterIsNotNull(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    public final ObjectItemClickListener getItemClickListener$Amino_bundle() {
        return this.itemClickListener;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = getContentModule().moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        this.innerAdapter.setItemClickListener(this.itemClickListener);
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_embedded_recycler_view, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…cler_view, parent, false)");
        return new TopicViewHolder(this, viewInflate);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        getItem(i);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
    }

    /* compiled from: TopicModuleHorizontalAdapter.kt */
    public final class TopicViewHolder extends BaseViewHolder {
        private final RecyclerView recyclerView;
        final /* synthetic */ TopicModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicViewHolder(TopicModuleHorizontalAdapter topicModuleHorizontalAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = topicModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.embed_recycler)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            this.recyclerView.setItemAnimator(null);
            this.recyclerView.setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            this.recyclerView.setAdapter(topicModuleHorizontalAdapter.innerAdapter);
            this.recyclerView.setNestedScrollingEnabled(false);
        }

        public final RecyclerView getRecyclerView() {
            return this.recyclerView;
        }
    }

    /* compiled from: TopicModuleHorizontalAdapter.kt */
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
        public InnerAdapter(TopicModuleHorizontalAdapter topicModuleHorizontalAdapter, NVContext context, ContentModule module) {
            super(context, module);
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(module, "module");
            this.this$0 = topicModuleHorizontalAdapter;
            addDataSetChangeListener(topicModuleHorizontalAdapter.dataSetChangeListener);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(NVContext nVContext) {
            TopicModuleHorizontalAdapter topicModuleHorizontalAdapter = this.this$0;
            topicModuleHorizontalAdapter.innerDataSource = topicModuleHorizontalAdapter.new DataSource(nVContext);
            DataSource dataSource = this.this$0.innerDataSource;
            if (dataSource != null) {
                return dataSource;
            }
            Intrinsics.throwNpe();
            throw null;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            super.refresh(i | 1, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceRefreshListener
        public void onRefreshFinishedBeforePageResponse(int i) {
            super.onRefreshFinishedBeforePageResponse(i);
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView != null) {
                recyclerView.scrollToPosition(0);
            }
        }
    }

    /* compiled from: TopicModuleHorizontalAdapter.kt */
    public final class DataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {
        public DataSource(NVContext nVContext) {
            super(nVContext, null, new PagingConfiguration(0, 25));
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (TopicModuleHorizontalAdapter.this.isReadyToRequest() && (requestFromModule = TopicModuleHorizontalAdapter.this.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            TopicModuleHorizontalAdapter.this.getChildHelper().setRequestFinished(TopicModuleHorizontalAdapter.this.getContentModule());
        }
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource dataSource = this.innerDataSource;
        return (dataSource != null ? dataSource.getSize() : 0) > 0 ? 1 : 0;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource dataSource = this.innerDataSource;
        return (dataSource != null ? dataSource.getSize() : 0) > 0 ? 1 : 0;
    }

    /* compiled from: TopicModuleHorizontalAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
