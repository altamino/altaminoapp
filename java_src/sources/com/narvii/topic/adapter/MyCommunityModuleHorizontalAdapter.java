package com.narvii.topic.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.MasterHelper;
import com.narvii.master.home.discover.adapter.ModuleAdapterFactory;
import com.narvii.master.home.discover.adapter.ModuleLogUtils;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MyCommunityModuleHorizontalAdapter extends RecyclerViewAdriftAdapter implements SerialRequestChild, SubRequestHost {

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

    @Nullable
    private final ModuleDisplayConfig displayConfig;

    @NotNull
    private final InnerAdapter innerAdapter;

    @NotNull
    private RecyclerInListViewImpressionCollector<Community> ipc;
    private boolean showList;
    private boolean startRefresh;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class InnerAdapter extends MyCommunityListAdapter {
        final /* synthetic */ MyCommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(@NotNull MyCommunityModuleHorizontalAdapter myCommunityModuleHorizontalAdapter, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = myCommunityModuleHorizontalAdapter;
        }

        @Override // com.narvii.topic.adapter.MyCommunityListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (!this.this$0.getShowList()) {
                return 0;
            }
            if (getMyCommunityHelper().rawList().size() > 20) {
                return 21;
            }
            return super.getItemCount();
        }

        @Override // com.narvii.topic.adapter.MyCommunityListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            if (i10 != 1) {
                return super.onCreateViewHolder(parent, i10);
            }
            MyCommunityModuleHorizontalAdapter myCommunityModuleHorizontalAdapter = this.this$0;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_community_module_more, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new MoreViewHolder(myCommunityModuleHorizontalAdapter, viewInflate);
        }

        @Override // com.narvii.topic.adapter.MyCommunityListAdapter
        public void onEnterCommunity(@NotNull Community community) {
            kotlin.jvm.internal.t.j(community, "community");
            this.this$0.logClickEvent(community, ActSemantic.aminoEnter);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (getMyCommunityHelper().rawList().size() > 20 && i10 == getItemCount() - 1) {
                return 1;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class MoreViewHolder extends BaseViewHolder {
        final /* synthetic */ MyCommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MoreViewHolder(@NotNull final MyCommunityModuleHorizontalAdapter myCommunityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = myCommunityModuleHorizontalAdapter;
            itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.adapter.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MyCommunityModuleHorizontalAdapter.MoreViewHolder._init_$lambda$0(myCommunityModuleHorizontalAdapter, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(MyCommunityModuleHorizontalAdapter this$0, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
            NVContext nVContext = ((NVRecyclerViewBaseAdapter) this$0).context;
            kotlin.jvm.internal.t.i(nVContext, "access$getContext$p$s-1726681790(...)");
            this$0.jumpToMyCommunityPage(nVContext);
        }
    }

    public final class RecyclerViewHolder extends BaseViewHolder {

        @NotNull
        private final RecyclerView recyclerView;
        final /* synthetic */ MyCommunityModuleHorizontalAdapter this$0;

        @NotNull
        public RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecyclerViewHolder(@NotNull final MyCommunityModuleHorizontalAdapter myCommunityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = myCommunityModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            getRecyclerView().setItemAnimator(null);
            getRecyclerView().setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            getRecyclerView().setAdapter(myCommunityModuleHorizontalAdapter.getInnerAdapter());
            myCommunityModuleHorizontalAdapter.getInnerAdapter().addDataSetChangeListener(new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.topic.adapter.m
                @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
                public final void onDataSetChanged() {
                    MyCommunityModuleHorizontalAdapter.RecyclerViewHolder._init_$lambda$2(myCommunityModuleHorizontalAdapter);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void lambda$2$lambda$1$lambda$0(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
            kotlin.jvm.internal.t.j(obj, "obj");
            obj.onDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$2(final MyCommunityModuleHorizontalAdapter this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.n
                @Override // java.lang.Runnable
                public final void run() {
                    MyCommunityModuleHorizontalAdapter.RecyclerViewHolder.lambda$2$lambda$1(this$0);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void lambda$2$lambda$1(MyCommunityModuleHorizontalAdapter this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.notifyDataSetChanged();
            ((NVRecyclerViewBaseAdapter) this$0).dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.o
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    MyCommunityModuleHorizontalAdapter.RecyclerViewHolder.lambda$2$lambda$1$lambda$0((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj);
                }
            });
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

    public final boolean getShowList() {
        return this.showList;
    }

    public final boolean getStartRefresh() {
        return this.startRefresh;
    }

    public final void setIpc(@NotNull RecyclerInListViewImpressionCollector<Community> recyclerInListViewImpressionCollector) {
        kotlin.jvm.internal.t.j(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    public final void setShowList(boolean z6) {
        this.showList = z6;
    }

    public final void setStartRefresh(boolean z6) {
        this.startRefresh = z6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyCommunityModuleHorizontalAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        final Class<Community> cls = Community.class;
        this.ipc = new RecyclerInListViewImpressionCollector<Community>(cls) { // from class: com.narvii.topic.adapter.MyCommunityModuleHorizontalAdapter$ipc$1
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
        this.childHelper = new SerialRequestHelper(this, this);
        final InnerAdapter innerAdapter = new InnerAdapter(this, context);
        innerAdapter.setRefreshListener(new MyCommunityListAdapter.OnRefreshListener() { // from class: com.narvii.topic.adapter.MyCommunityModuleHorizontalAdapter$innerAdapter$1$1
            @Override // com.narvii.topic.adapter.MyCommunityListAdapter.OnRefreshListener
            public void onFailed() {
                if (this.this$0.getStartRefresh()) {
                    this.this$0.setStartRefresh(false);
                    this.this$0.setShowList(true);
                    innerAdapter.notifyDataSetChanged();
                    this.this$0.getChildHelper().setRequestFinished(null);
                }
            }

            @Override // com.narvii.topic.adapter.MyCommunityListAdapter.OnRefreshListener
            public void onFinish() {
                if (this.this$0.getStartRefresh()) {
                    this.this$0.setStartRefresh(false);
                    this.this$0.setShowList(true);
                    innerAdapter.notifyDataSetChanged();
                    this.this$0.getChildHelper().setRequestFinished(null);
                }
            }

            @Override // com.narvii.topic.adapter.MyCommunityListAdapter.OnRefreshListener
            public void onListChanged() {
                innerAdapter.notifyDataSetChanged();
            }
        });
        this.innerAdapter = innerAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void jumpToMyCommunityPage(NVContext nVContext) {
        new MasterHelper(nVContext).jumpToMyCommunityPage();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.innerAdapter.getItemCount() > 0 ? 1 : 0;
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

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        return this.innerAdapter.isEmpty();
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
        return new RecyclerViewHolder(this, viewInflate);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return this.innerAdapter.getItemCount() > 0 ? 1 : 0;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(@NotNull SerialRequestParent serialRequestParent) {
        kotlin.jvm.internal.t.j(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
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

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return !isEmpty();
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
        addImpressionCollector(this.ipc);
        if (!isReadyToRequest()) {
            return;
        }
        this.startRefresh = true;
        this.innerAdapter.onAttach();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        this.startRefresh = true;
        this.innerAdapter.refresh(i10 | 1, null);
    }
}
