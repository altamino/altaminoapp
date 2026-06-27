package com.narvii.topic.adapter;

import android.content.Intent;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: CommunityModuleHorizontalAdapter.kt */
/* loaded from: classes3.dex */
public final class CommunityModuleHorizontalAdapter extends RecyclerViewAdriftAdapter implements SerialRequestChild, SubRequestHost, NotificationListener, CommunityDataSourceCarrier {
    public static final Companion Companion = new Companion(null);
    private static final int FAKE_COMMUNITY_ID = -100;
    private static final int MORE_SIZE_LIMIT = 20;
    private static final int PAGE_SIZE = 25;
    private static final int TYPE_COMMUNITY = 0;
    private static final int TYPE_MORE = 1;
    private final SerialRequestHelper childHelper;
    private final ContentModule contentModule;
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;
    private final ModuleDisplayConfig displayConfig;
    private boolean hide;
    private final InnerAdapter innerAdapter;
    public DataSource innerDataSource;
    private RecyclerInListViewImpressionCollector<Community> ipc;

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityModuleHorizontalAdapter(NVContext context, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        final Class<Community> cls = Community.class;
        final int i = R.id.embed_recycler;
        this.ipc = new RecyclerInListViewImpressionCollector<Community>(cls, i) { // from class: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
                if (Intrinsics.areEqual(ActSemantic.listViewEnter.name(), builder.getLogEvent().actSemantic)) {
                    builder.extraParam("listViewEnterSource", ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                }
            }
        };
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter$dataSetChangeListener$1
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter$dataSetChangeListener$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommunityModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0.notifyDataSetChanged();
                        ((NVRecyclerViewBaseAdapter) CommunityModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter.dataSetChangeListener.1.1.1
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
        this.innerAdapter = new InnerAdapter(this, context);
        this.childHelper = new SerialRequestHelper(this, this);
    }

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final RecyclerInListViewImpressionCollector<Community> getIpc() {
        return this.ipc;
    }

    public final void setIpc(RecyclerInListViewImpressionCollector<Community> recyclerInListViewImpressionCollector) {
        Intrinsics.checkParameterIsNotNull(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    public final InnerAdapter getInnerAdapter() {
        return this.innerAdapter;
    }

    public final DataSource getInnerDataSource() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    public final void setInnerDataSource(DataSource dataSource) {
        Intrinsics.checkParameterIsNotNull(dataSource, "<set-?>");
        this.innerDataSource = dataSource;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.contentModule.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_embedded_recycler_view, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new CommunityViewHolder(this, cell);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        getItem(i);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i, pageRequestCallback);
        this.innerAdapter.refresh(i | 1, null);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        return this.innerAdapter.getErrorMessage();
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

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        DataSource dataSource;
        if (this.hide || (dataSource = this.innerDataSource) == null) {
            return 0;
        }
        if (dataSource != null) {
            return dataSource.getSize() > 0 ? 1 : 0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    /* renamed from: com.narvii.topic.adapter.CommunityModuleHorizontalAdapter$getItemCount$1, reason: invalid class name */
    final /* synthetic */ class AnonymousClass1 extends MutablePropertyReference0 {
        AnonymousClass1(CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter) {
            super(communityModuleHorizontalAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getName() {
            return "innerDataSource";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(CommunityModuleHorizontalAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return ((CommunityModuleHorizontalAdapter) this.receiver).getInnerDataSource();
        }

        public void set(Object obj) {
            ((CommunityModuleHorizontalAdapter) this.receiver).setInnerDataSource((DataSource) obj);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (Intrinsics.areEqual(notification != null ? notification.action : null, "delete")) {
            Object obj = notification.obj;
            if (obj instanceof ContentModule) {
                if (obj != null) {
                    if (Utils.isEqualsNotNull(Integer.valueOf(((ContentModule) obj).getTopicId()), Integer.valueOf(this.contentModule.getTopicId()))) {
                        this.hide = true;
                        int itemCount = getItemCount();
                        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.parentAdapter;
                        if (nVRecyclerViewBaseAdapter instanceof RecyclerViewMergeAdapter) {
                            notifyItemRangeRemoved(((RecyclerViewMergeAdapter) nVRecyclerViewBaseAdapter).getAdapterRealPos(this), itemCount);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule");
            }
        }
    }

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    public final class CommunityViewHolder extends BaseViewHolder {
        private final RecyclerView recyclerView;
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityViewHolder(CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = communityModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.embed_recycler)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            getRecyclerView().setItemAnimator(null);
            getRecyclerView().setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            getRecyclerView().setAdapter(communityModuleHorizontalAdapter.getInnerAdapter());
        }

        public RecyclerView getRecyclerView() {
            return this.recyclerView;
        }
    }

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    public final class InnerAdapter extends CommunityListAdapter {
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

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
        public InnerAdapter(CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = communityModuleHorizontalAdapter;
            addDataSetChangeListener(communityModuleHorizontalAdapter.dataSetChangeListener);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            super.refresh(i | 1, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(NVContext nVContext) {
            CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter = this.this$0;
            communityModuleHorizontalAdapter.setInnerDataSource(communityModuleHorizontalAdapter.new DataSource(nVContext));
            return this.this$0.getInnerDataSource();
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public void logItemClickEvent(Community item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            this.this$0.logClickEvent(item, ActSemantic.checkDetail);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public Community getItem(int i) {
            if (hasMore() && i == getItemCount() - 1) {
                Community community = new Community();
                community.id = CommunityModuleHorizontalAdapter.FAKE_COMMUNITY_ID;
                return community;
            }
            NVObject item = super.getItem(i);
            Intrinsics.checkExpressionValueIsNotNull(item, "super.getItem(pos)");
            return (Community) item;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (hasMore()) {
                return Math.min(20, this.this$0.getInnerDataSource().getSize()) + 1;
            }
            return super.getItemCount();
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected int getItemType(int i) {
            return (hasMore() && i == getItemCount() - 1) ? 1 : 0;
        }

        private final boolean hasMore() {
            return this.this$0.getInnerDataSource().getSize() > 20 || !TextUtils.isEmpty(this.this$0.getInnerDataSource().get_nextPageToken());
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (i == 1) {
                CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter = this.this$0;
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_community_module_more, parent, false);
                Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…dule_more, parent, false)");
                return new MoreViewHolder(communityModuleHorizontalAdapter, viewInflate);
            }
            return super.onCreateItemViewHolder(parent, i);
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof Community) && ((Community) obj).id == CommunityModuleHorizontalAdapter.FAKE_COMMUNITY_ID) {
                if (this.this$0.getContentModule().userRemovable && this.this$0.getContentModule().getTopicId() >= 0) {
                    Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, this.this$0.getContentModule().getTopicId());
                    this.context.startActivity(intent);
                } else {
                    String string = UUID.randomUUID().toString();
                    Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
                    String str = this.this$0.getInnerDataSource().get_nextPageToken();
                    PageStorage<T> pageStorage = this.this$0.getInnerDataSource().getPageStorage();
                    List dataList = pageStorage != 0 ? pageStorage.getDataList() : null;
                    if (!(dataList instanceof ArrayList)) {
                        dataList = null;
                    }
                    ArrayList arrayList = (ArrayList) dataList;
                    CommunityListFragment.Companion.addShareCommunityList(string, arrayList != null ? new ArrayList<>(arrayList) : new ArrayList<>(), str);
                    Intent intent2 = FragmentWrapperActivity.intent(CommunityListFragment.class);
                    intent2.putExtra("KEY_TITLE", this.this$0.getContentModule().displayName);
                    intent2.putExtra("KEY_PATH", this.this$0.getContentModule().dataUrl);
                    intent2.putExtra("KEY_DATA_SOURCE_ID", string);
                    intent2.putExtra("KEY_REPLACE", true);
                    intent2.putExtra("_module", JacksonUtils.writeAsString(this.this$0.getContentModule()));
                    startActivity(intent2);
                }
                this.this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
                return true;
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
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

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    private final class MoreViewHolder extends BaseViewHolder {
        final /* synthetic */ CommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MoreViewHolder(CommunityModuleHorizontalAdapter communityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = communityModuleHorizontalAdapter;
            itemView.setOnClickListener(communityModuleHorizontalAdapter.subviewClickListener);
        }
    }

    /* compiled from: CommunityModuleHorizontalAdapter.kt */
    public final class DataSource extends PageDataSource<Community, SearchCommunityListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        }

        public DataSource(NVContext nVContext) {
            super(nVContext, null, new PagingConfiguration(0, 25));
        }

        @Override // com.narvii.paging.source.PageDataSource
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
        protected Class<SearchCommunityListResponse> responseType() {
            return SearchCommunityListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            CommunityModuleHorizontalAdapter.this.getChildHelper().setRequestFinished(CommunityModuleHorizontalAdapter.this.getContentModule());
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        Object result = super.getItem(i);
        if (result != null) {
            this.childHelper.setItemShown();
        }
        Intrinsics.checkExpressionValueIsNotNull(result, "result");
        return result;
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

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return (dataSource != null ? Integer.valueOf(dataSource.getSize()) : null).intValue() > 0 ? 1 : 0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
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
        boolean zIsReadyToRequest = this.childHelper.isReadyToRequest();
        Log.d("SerialRequest", "check ready " + this.contentModule.dataUrl + ", result " + zIsReadyToRequest);
        return zIsReadyToRequest;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return (dataSource != null ? Integer.valueOf(dataSource.getSize()) : null).intValue() > 0 ? 1 : 0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getErrorMessage()) || this.childHelper.isItemShown();
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    public String getLastPageToken() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return dataSource.get_nextPageToken();
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    public ArrayList<Community> getCommunityList() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
            throw null;
        }
        PageStorage<T> pageStorage = dataSource.getPageStorage();
        List dataList = pageStorage != 0 ? pageStorage.getDataList() : null;
        if (!(dataList instanceof ArrayList)) {
            dataList = null;
        }
        return (ArrayList) dataList;
    }
}
