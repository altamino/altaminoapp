package com.narvii.topic.discover;

import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.adapter.CommunityListAdapter;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.master.home.discover.adapter.ModuleDivideColumnIPC;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.paging.storage.PageStorage;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.CommunityDataSourceCarrier;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityListModuleAdapter.kt */
/* loaded from: classes3.dex */
public final class CommunityListModuleAdapter extends CommunityListAdapter implements ModuleItemCountHost, SerialRequestChild, SubRequestHost, NotificationListener, CommunityDataSourceCarrier {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;
    private int allItemCount;
    private final SerialRequestHelper childHelper;
    private final ContentModule contentModule;
    private final ModuleDisplayConfig displayConfig;
    private boolean hide;

    @Override // com.narvii.community.adapter.CommunityListAdapter
    public boolean allowVisitorMode() {
        return true;
    }

    @Override // com.narvii.community.adapter.CommunityListAdapter
    public int communityLayoutId() {
        return R.layout.item_community_simple_card;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        return false;
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityListModuleAdapter(NVContext context, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    /* compiled from: CommunityListModuleAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(NVContext nVContext) {
        return new DataSource(nVContext);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(Community.class, this.contentModule));
    }

    @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.contentModule.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i | 1, pageRequestCallback);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (Intrinsics.areEqual(notification != null ? notification.action : null, "delete")) {
            Object obj = notification.obj;
            if (obj instanceof ContentModule) {
                if (obj != null) {
                    if (Utils.isEqualsNotNull(Integer.valueOf(((ContentModule) obj).getTopicId()), Integer.valueOf(this.contentModule.getTopicId()))) {
                        int itemCount = getItemCount();
                        this.hide = true;
                        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.parentAdapter;
                        NVRecyclerViewBaseAdapter parentAdapter = nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.getParentAdapter() : null;
                        if (parentAdapter instanceof RecyclerViewMergeAdapter) {
                            notifyItemRangeRemoved(((RecyclerViewMergeAdapter) parentAdapter).getAdapterRealPos(this), itemCount);
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

    /* compiled from: CommunityListModuleAdapter.kt */
    public final class DataSource extends PageDataSource<Community, SearchCommunityListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        }

        public DataSource(NVContext nVContext) {
            super(nVContext, null);
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            if (!CommunityListModuleAdapter.this.isReadyToRequest()) {
                return null;
            }
            if (TextUtils.isEmpty(CommunityListModuleAdapter.this.getContentModule().dataUrl)) {
                CommunityListModuleAdapter.this.getChildHelper().setRequestFinished(CommunityListModuleAdapter.this.getContentModule());
                return null;
            }
            ApiRequest.Builder requestFromModule = CommunityListModuleAdapter.this.getContentModule().getRequestFromModule();
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
        public void onPageResponse(ApiRequest req, SearchCommunityListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            CommunityListModuleAdapter.this.allItemCount = resp.allItemCount;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            CommunityListModuleAdapter.this.getChildHelper().setRequestFinished(CommunityListModuleAdapter.this.getContentModule());
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Community getItem(int i) {
        Community community = (Community) super.getItem(i);
        if (community != null) {
            this.childHelper.setItemShown();
        }
        return community;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.hide) {
            return 0;
        }
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad) {
            return super.getItemCount();
        }
        return Math.min(super.getItemCount(), 6);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public boolean autoLoadNextPage() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad;
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
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
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? isSubRequestFinish() : isRequestEnd();
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
        Log.d("SerialRequest", "check ready " + this.contentModule.dataUrl);
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

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    public String getLastPageToken() {
        PageOperationCallback pageOperationCallback = this.dataSource;
        if (!(pageOperationCallback instanceof PageDataSource)) {
            return null;
        }
        if (pageOperationCallback != null) {
            return ((PageDataSource) pageOperationCallback).get_nextPageToken();
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>");
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    public ArrayList<Community> getCommunityList() {
        PageStorage pageStorage = this.dataSource.getPageStorage();
        List dataList = pageStorage != null ? pageStorage.getDataList() : null;
        if (!(dataList instanceof ArrayList)) {
            dataList = null;
        }
        return (ArrayList) dataList;
    }
}
