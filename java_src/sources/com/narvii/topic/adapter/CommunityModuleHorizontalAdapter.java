package com.narvii.topic.adapter;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityListFragment;
import com.narvii.community.adapter.CommunityListAdapter;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.discover.adapter.ModuleAdapterFactory;
import com.narvii.master.home.discover.adapter.ModuleLogUtils;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.paging.storage.PageStorage;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.model.CommunityDataSourceCarrier;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class CommunityModuleHorizontalAdapter extends RecyclerViewAdriftAdapter implements SerialRequestChild, SubRequestHost, NotificationListener, CommunityDataSourceCarrier {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int FAKE_COMMUNITY_ID = -100;
    private static final int MORE_SIZE_LIMIT = 20;
    private static final int PAGE_SIZE = 25;
    private static final int TYPE_COMMUNITY = 0;
    private static final int TYPE_MORE = 1;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final ContentModule contentModule;

    @NotNull
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;

    @Nullable
    private final ModuleDisplayConfig displayConfig;
    private boolean hide;

    @NotNull
    private final InnerAdapter innerAdapter;
    public DataSource innerDataSource;

    @NotNull
    private RecyclerInListViewImpressionCollector<Community> ipc;

    public final class CommunityViewHolder extends BaseViewHolder {

        @NotNull
        private final RecyclerView recyclerView;
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

        @NotNull
        public RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityViewHolder(@NotNull CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = communityModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            getRecyclerView().setItemAnimator(null);
            getRecyclerView().setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            getRecyclerView().setAdapter(communityModuleHorizontalAdapter.getInnerAdapter());
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class DataSource extends PageDataSource<Community, SearchCommunityListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        public void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
        }

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<SearchCommunityListResponse> responseType() {
            return SearchCommunityListResponse.class;
        }

        public DataSource(NVContext nVContext) {
            super(nVContext, null, new PagingConfiguration(0, 25));
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            if (!CommunityModuleHorizontalAdapter.this.isReadyToRequest()) {
                return null;
            }
            if (TextUtils.isEmpty(CommunityModuleHorizontalAdapter.this.getContentModule().dataUrl)) {
                CommunityModuleHorizontalAdapter.this.getChildHelper().setRequestFinished(CommunityModuleHorizontalAdapter.this.getContentModule());
                return null;
            }
            ApiRequest.Builder requestFromModule = CommunityModuleHorizontalAdapter.this.getContentModule().getRequestFromModule();
            if (requestFromModule != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            CommunityModuleHorizontalAdapter.this.getChildHelper().setRequestFinished(CommunityModuleHorizontalAdapter.this.getContentModule());
        }
    }

    public final class InnerAdapter extends CommunityListAdapter {
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public boolean allowVisitorMode() {
            return true;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public int communityLayoutId() {
            return R.layout.item_community_simple_card_horizontal;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected boolean showPageLoadingStatus() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(@NotNull CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, NVContext context) {
            super(context);
            kotlin.jvm.internal.t.j(context, "context");
            this.this$0 = communityModuleHorizontalAdapter;
            addDataSetChangeListener(communityModuleHorizontalAdapter.dataSetChangeListener);
        }

        private final boolean hasMore() {
            return this.this$0.getInnerDataSource().getSize() > 20 || !TextUtils.isEmpty(this.this$0.getInnerDataSource().get_nextPageToken());
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(@Nullable NVContext nVContext) {
            CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter = this.this$0;
            communityModuleHorizontalAdapter.setInnerDataSource(communityModuleHorizontalAdapter.new DataSource(nVContext));
            return this.this$0.getInnerDataSource();
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public void logItemClickEvent(@NotNull Community item) {
            kotlin.jvm.internal.t.j(item, "item");
            this.this$0.logClickEvent(item, ActSemantic.checkDetail);
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            if (i10 != 1) {
                return super.onCreateItemViewHolder(parent, i10);
            }
            CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter = this.this$0;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_community_module_more, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new MoreViewHolder(communityModuleHorizontalAdapter, viewInflate);
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof Community) || ((Community) obj).id != -100) {
                return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
            }
            if (!this.this$0.getContentModule().userRemovable || this.this$0.getContentModule().getTopicId() < 0) {
                String string = UUID.randomUUID().toString();
                kotlin.jvm.internal.t.i(string, "toString(...)");
                String str = this.this$0.getInnerDataSource().get_nextPageToken();
                PageStorage<T> pageStorage = this.this$0.getInnerDataSource().getPageStorage();
                List dataList = pageStorage != 0 ? pageStorage.getDataList() : null;
                ArrayList arrayList = dataList instanceof ArrayList ? (ArrayList) dataList : null;
                CommunityListFragment.Companion.addShareCommunityList(string, arrayList != null ? new ArrayList<>(arrayList) : new ArrayList<>(), str);
                Intent intent = FragmentWrapperActivity.intent(CommunityListFragment.class);
                intent.putExtra("KEY_TITLE", this.this$0.getContentModule().displayName);
                intent.putExtra("KEY_PATH", this.this$0.getContentModule().dataUrl);
                intent.putExtra(CommunityListFragment.KEY_SHARE_DATA_SOURCE_ID, string);
                intent.putExtra(CommunityListFragment.KEY_REFRESH_REPLACE, true);
                intent.putExtra("_module", JacksonUtils.writeAsString(this.this$0.getContentModule()));
                safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent);
            } else {
                Intent intent2 = FragmentWrapperActivity.intent(TopicTabFragment.class);
                intent2.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, this.this$0.getContentModule().getTopicId());
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent2);
            }
            this.this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
            return true;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
            super.refresh(i10 | 1, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @NotNull
        public Community getItem(int i10) {
            if (hasMore() && i10 == getItemCount() - 1) {
                Community community = new Community();
                community.id = -100;
                return community;
            }
            NVObject item = super.getItem(i10);
            kotlin.jvm.internal.t.i(item, "getItem(...)");
            return (Community) item;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (hasMore()) {
                return Math.min(20, this.this$0.getInnerDataSource().getSize()) + 1;
            }
            return super.getItemCount();
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected int getItemType(int i10) {
            if (hasMore() && i10 == getItemCount() - 1) {
                return 1;
            }
            return 0;
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

    private final class MoreViewHolder extends BaseViewHolder {
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MoreViewHolder(@NotNull CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = communityModuleHorizontalAdapter;
            itemView.setOnClickListener(communityModuleHorizontalAdapter.subviewClickListener);
        }
    }

    @NotNull
    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @NotNull
    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    @Nullable
    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    @NotNull
    public final InnerAdapter getInnerAdapter() {
        return this.innerAdapter;
    }

    @NotNull
    public final RecyclerInListViewImpressionCollector<Community> getIpc() {
        return this.ipc;
    }

    public final void setInnerDataSource(@NotNull DataSource dataSource) {
        kotlin.jvm.internal.t.j(dataSource, "<set-?>");
        this.innerDataSource = dataSource;
    }

    public final void setIpc(@NotNull RecyclerInListViewImpressionCollector<Community> recyclerInListViewImpressionCollector) {
        kotlin.jvm.internal.t.j(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityModuleHorizontalAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        final Class<Community> cls = Community.class;
        this.ipc = new RecyclerInListViewImpressionCollector<Community>(cls) { // from class: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<Community> objectInfo) {
                kotlin.jvm.internal.t.j(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
                if (kotlin.jvm.internal.t.e("listViewEnter", builder.getLogEvent().actSemantic)) {
                    builder.extraParam("listViewEnterSource", ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                }
            }
        };
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.topic.adapter.b
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                CommunityModuleHorizontalAdapter.dataSetChangeListener$lambda$2(this.f2759a);
            }
        };
        this.innerAdapter = new InnerAdapter(this, context);
        this.childHelper = new SerialRequestHelper(this, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1$lambda$0(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
        kotlin.jvm.internal.t.j(obj, "obj");
        obj.onDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.contentModule.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public String getErrorMessage() {
        return this.innerAdapter.getErrorMessage();
    }

    @NotNull
    public final DataSource getInnerDataSource() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        kotlin.jvm.internal.t.B("innerDataSource");
        return null;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return (this.hide || this.innerDataSource == null || getInnerDataSource().getSize() <= 0) ? 0 : 1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        return this.innerAdapter.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return this.innerAdapter.isListShow();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.innerAdapter.isLoading();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        boolean zIsReadyToRequest = this.childHelper.isReadyToRequest();
        Log.d("SerialRequest", "check ready " + this.contentModule.dataUrl + ", result " + zIsReadyToRequest);
        return zIsReadyToRequest;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
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
        kotlin.jvm.internal.t.g(viewInflate);
        return new CommunityViewHolder(this, viewInflate);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (kotlin.jvm.internal.t.e(notification != null ? notification.action : null, "delete")) {
            Object obj = notification.obj;
            if (obj instanceof ContentModule) {
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule");
                if (Utils.isEqualsNotNull(Integer.valueOf(((ContentModule) obj).getTopicId()), Integer.valueOf(this.contentModule.getTopicId()))) {
                    this.hide = true;
                    int itemCount = getItemCount();
                    NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.parentAdapter;
                    if (nVRecyclerViewBaseAdapter instanceof RecyclerViewMergeAdapter) {
                        notifyItemRangeRemoved(((RecyclerViewMergeAdapter) nVRecyclerViewBaseAdapter).getAdapterRealPos(this), itemCount);
                    }
                }
            }
        }
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(@NotNull SerialRequestParent serialRequestParent) {
        kotlin.jvm.internal.t.j(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2(final CommunityModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.a
            @Override // java.lang.Runnable
            public final void run() {
                CommunityModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1(this.f2758a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1(CommunityModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataSetChanged();
        this$0.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                CommunityModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1$lambda$0((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj);
            }
        });
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource innerDataSource = getInnerDataSource();
        if (innerDataSource != null && innerDataSource.getSize() > 0) {
            return 1;
        }
        return 0;
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    @Nullable
    public ArrayList<Community> getCommunityList() {
        List dataList;
        PageStorage<T> pageStorage = getInnerDataSource().getPageStorage();
        if (pageStorage != 0) {
            dataList = pageStorage.getDataList();
        } else {
            dataList = null;
        }
        if (!(dataList instanceof ArrayList)) {
            return null;
        }
        return (ArrayList) dataList;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Object getItem(int i10) {
        Object item = super.getItem(i10);
        if (item != null) {
            this.childHelper.setItemShown();
        }
        kotlin.jvm.internal.t.g(item);
        return item;
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    @Nullable
    public String getLastPageToken() {
        return getInnerDataSource().get_nextPageToken();
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

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        this.innerAdapter.refresh(i10 | 1, null);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        super.resetList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource innerDataSource = getInnerDataSource();
        if (innerDataSource != null && innerDataSource.getSize() > 0) {
            return 1;
        }
        return 0;
    }
}
