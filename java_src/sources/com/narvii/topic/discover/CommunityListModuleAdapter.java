package com.narvii.topic.discover;

import com.narvii.amino.master.R;
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
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CommunityListModuleAdapter extends CommunityListAdapter implements ModuleItemCountHost, SerialRequestChild, SubRequestHost, NotificationListener, CommunityDataSourceCarrier {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;
    private int allItemCount;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final ContentModule contentModule;

    @Nullable
    private final ModuleDisplayConfig displayConfig;
    private boolean hide;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
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
            super(nVContext, null);
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
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
        public void onPageResponse(@NotNull ApiRequest req, @NotNull SearchCommunityListResponse resp, int i10) {
            t.j(req, "req");
            t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            CommunityListModuleAdapter.this.allItemCount = resp.allItemCount;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            CommunityListModuleAdapter.this.getChildHelper().setRequestFinished(CommunityListModuleAdapter.this.getContentModule());
        }
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
    }

    @Override // com.narvii.community.adapter.CommunityListAdapter
    public boolean allowVisitorMode() {
        return true;
    }

    @Override // com.narvii.community.adapter.CommunityListAdapter
    public int communityLayoutId() {
        return R.layout.item_community_simple_card;
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

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (t.e(notification != null ? notification.action : null, "delete")) {
            Object obj = notification.obj;
            if (obj instanceof ContentModule) {
                t.h(obj, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule");
                if (Utils.isEqualsNotNull(Integer.valueOf(((ContentModule) obj).getTopicId()), Integer.valueOf(this.contentModule.getTopicId()))) {
                    int itemCount = getItemCount();
                    this.hide = true;
                    NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.parentAdapter;
                    NVRecyclerViewBaseAdapter parentAdapter = nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.getParentAdapter() : null;
                    if (parentAdapter instanceof RecyclerViewMergeAdapter) {
                        notifyItemRangeRemoved(((RecyclerViewMergeAdapter) parentAdapter).getAdapterRealPos(this), itemCount);
                    }
                }
            }
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityListModuleAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        t.j(context, "context");
        t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public boolean autoLoadNextPage() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(@Nullable NVContext nVContext) {
        return new DataSource(nVContext);
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.community.adapter.CommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.contentModule.moduleType;
        t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    @Nullable
    public ArrayList<Community> getCommunityList() {
        PageStorage pageStorage = this.dataSource.getPageStorage();
        List dataList = pageStorage != null ? pageStorage.getDataList() : null;
        if (dataList instanceof ArrayList) {
            return (ArrayList) dataList;
        }
        return null;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.hide) {
            return 0;
        }
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? Math.min(super.getItemCount(), 6) : super.getItemCount();
    }

    @Override // com.narvii.topic.model.CommunityDataSourceCarrier
    @Nullable
    public String getLastPageToken() {
        PageOperationCallback pageOperationCallback = this.dataSource;
        if (!(pageOperationCallback instanceof PageDataSource)) {
            return null;
        }
        t.h(pageOperationCallback, "null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>");
        return ((PageDataSource) pageOperationCallback).get_nextPageToken();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? isSubRequestFinish() : isRequestEnd();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        Log.d("SerialRequest", "check ready " + this.contentModule.dataUrl);
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

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10 | 1, pageRequestCallback);
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
        t.j(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public Community getItem(int i10) {
        Community community = (Community) super.getItem(i10);
        if (community != null) {
            this.childHelper.setItemShown();
        }
        return community;
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
        addImpressionCollector(new ModuleDivideColumnIPC(Community.class, this.contentModule));
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
