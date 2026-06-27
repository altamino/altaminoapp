package com.narvii.topic.adapter;

import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.master.home.discover.adapter.ModuleDivideColumnIPC;
import com.narvii.model.Community;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Log;
import com.narvii.util.text.TextUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MyCommunityListModuleAdapter.kt */
/* loaded from: classes3.dex */
public final class MyCommunityListModuleAdapter extends MyCommunityListAdapter implements ModuleItemCountHost, SerialRequestChild, SubRequestHost {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;
    private final SerialRequestHelper childHelper;
    private final ContentModule contentModule;
    private final ModuleDisplayConfig displayConfig;
    private boolean showList;
    private boolean startRefresh;

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public int communityLayoutId() {
        return R.layout.incubator_my_community_item;
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCommunityListModuleAdapter(NVContext context, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    /* compiled from: MyCommunityListModuleAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final boolean getStartRefresh() {
        return this.startRefresh;
    }

    public final void setStartRefresh(boolean z) {
        this.startRefresh = z;
    }

    public final boolean getShowList() {
        return this.showList;
    }

    public final void setShowList(boolean z) {
        this.showList = z;
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(Community.class, this.contentModule));
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void firstRefreshList() {
        if (isReadyToRequest()) {
            this.startRefresh = true;
            super.firstRefreshList();
        }
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void loadFailed() {
        if (this.startRefresh) {
            this.startRefresh = false;
            this.showList = true;
            super.loadFailed();
            this.childHelper.setRequestFinished(null);
        }
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void loadFinish() {
        if (this.startRefresh) {
            this.startRefresh = false;
            this.showList = true;
            super.loadFinish();
            this.childHelper.setRequestFinished(null);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.contentModule.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        this.startRefresh = true;
        super.refresh(i | 1, pageRequestCallback);
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Community getItem(int i) {
        Community item = super.getItem(i);
        if (item != null) {
            this.childHelper.setItemShown();
        }
        return item;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.showList) {
            return Math.min(super.getItemCount(), 6);
        }
        return 0;
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return super.getItemCount();
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
        return getItemCount();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
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
        return getItemCount();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getErrorMessage()) || this.childHelper.isItemShown();
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void onEnterCommunity(Community community) {
        Intrinsics.checkParameterIsNotNull(community, "community");
        logClickEvent(community, ActSemantic.aminoEnter);
    }
}
