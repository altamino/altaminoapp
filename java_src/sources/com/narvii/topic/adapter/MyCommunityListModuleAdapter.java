package com.narvii.topic.adapter;

import com.narvii.amino.master.R;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class MyCommunityListModuleAdapter extends MyCommunityListAdapter implements ModuleItemCountHost, SerialRequestChild, SubRequestHost {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final ContentModule contentModule;

    @Nullable
    private final ModuleDisplayConfig displayConfig;
    private boolean showList;
    private boolean startRefresh;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public int communityLayoutId() {
        return R.layout.incubator_my_community_item;
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

    public final boolean getShowList() {
        return this.showList;
    }

    public final boolean getStartRefresh() {
        return this.startRefresh;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        this.startRefresh = true;
        super.refresh(i10 | 1, pageRequestCallback);
    }

    public final void setShowList(boolean z6) {
        this.showList = z6;
    }

    public final void setStartRefresh(boolean z6) {
        this.startRefresh = z6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCommunityListModuleAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.contentModule.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Community getItem(int i10) {
        Community item = super.getItem(i10);
        if (item != null) {
            this.childHelper.setItemShown();
        }
        return item;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.showList) {
            return Math.min(super.getItemCount(), 6);
        }
        return 0;
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

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void onEnterCommunity(@NotNull Community community) {
        kotlin.jvm.internal.t.j(community, "community");
        logClickEvent(community, ActSemantic.aminoEnter);
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

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return super.getItemCount();
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter
    public void firstRefreshList() {
        if (!isReadyToRequest()) {
            return;
        }
        this.startRefresh = true;
        super.firstRefreshList();
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
    public boolean isVisibleToUser() {
        if (TextUtils.isEmpty(getErrorMessage()) && !this.childHelper.isItemShown()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.topic.adapter.MyCommunityListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(Community.class, this.contentModule));
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
        return getItemCount();
    }
}
