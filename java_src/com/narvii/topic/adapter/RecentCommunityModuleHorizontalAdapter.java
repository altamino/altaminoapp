package com.narvii.topic.adapter;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.adapter.RecentCommunityAdapter;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecentCommunityModuleHorizontalAdapter.kt */
/* loaded from: classes3.dex */
public final class RecentCommunityModuleHorizontalAdapter extends RecyclerViewAdriftAdapter implements SerialRequestChild, SubRequestHost {
    public static final Companion Companion = new Companion(null);
    private static final int FAKE_COMMUNITY_ID = -100;
    private static final int MORE_SIZE_LIMIT = 20;
    private static final int PAGE_SIZE = 25;
    private static final int TYPE_COMMUNITY = 0;
    private static final int TYPE_MORE = 1;
    private final SerialRequestHelper childHelper;
    private final ContentModule contentModule;
    private final ModuleDisplayConfig displayConfig;
    private final InnerAdapter innerAdapter;
    private RecyclerInListViewImpressionCollector<Community> ipc;
    private boolean showList;
    private boolean startRefresh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentCommunityModuleHorizontalAdapter(NVContext context, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        final Class<Community> cls = Community.class;
        final int i = R.id.embed_recycler;
        this.ipc = new RecyclerInListViewImpressionCollector<Community>(cls, i) { // from class: com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
            }
        };
        this.childHelper = new SerialRequestHelper(this, this);
        final InnerAdapter innerAdapter = new InnerAdapter(this, context);
        innerAdapter.setRefreshListener(new RecentCommunityAdapter.OnRefreshListener() { // from class: com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1
            @Override // com.narvii.topic.adapter.RecentCommunityAdapter.OnRefreshListener
            public void onFinish() {
                if (this.getStartRefresh()) {
                    this.setStartRefresh(false);
                    this.setShowList(true);
                    innerAdapter.notifyDataSetChanged();
                    this.getChildHelper().setRequestFinished(this.getContentModule());
                }
            }
        });
        this.innerAdapter = innerAdapter;
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    /* compiled from: RecentCommunityModuleHorizontalAdapter.kt */
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

    public final boolean getStartRefresh() {
        return this.startRefresh;
    }

    public final void setStartRefresh(boolean z) {
        this.startRefresh = z;
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    public final boolean getShowList() {
        return this.showList;
    }

    public final void setShowList(boolean z) {
        this.showList = z;
    }

    public final InnerAdapter getInnerAdapter() {
        return this.innerAdapter;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() throws NumberFormatException {
        super.onAttach();
        addImpressionCollector(this.ipc);
        if (isReadyToRequest()) {
            this.startRefresh = true;
            this.innerAdapter.onAttach();
        }
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return !isEmpty() ? 1 : 0;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recent_community_recycler_view, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new RecyclerViewHolder(this, cell);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        getItem(i);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
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

    /* compiled from: RecentCommunityModuleHorizontalAdapter.kt */
    public final class RecyclerViewHolder extends BaseViewHolder {
        private final RecyclerView recyclerView;
        final /* synthetic */ RecentCommunityModuleHorizontalAdapter this$0;
        private final TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecyclerViewHolder(RecentCommunityModuleHorizontalAdapter recentCommunityModuleHorizontalAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = recentCommunityModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.embed_recycler)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.title)");
            this.title = (TextView) viewFindViewById2;
            getRecyclerView().setItemAnimator(null);
            getRecyclerView().setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            getRecyclerView().setAdapter(recentCommunityModuleHorizontalAdapter.getInnerAdapter());
            recentCommunityModuleHorizontalAdapter.getInnerAdapter().addDataSetChangeListener(new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter.RecyclerViewHolder.1
                @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
                public final void onDataSetChanged() {
                    Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter.RecyclerViewHolder.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            RecyclerViewHolder.this.this$0.notifyDataSetChanged();
                            ((NVRecyclerViewBaseAdapter) RecyclerViewHolder.this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter.RecyclerViewHolder.1.1.1
                                @Override // com.narvii.util.Callback
                                public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
                                    Intrinsics.checkParameterIsNotNull(obj, "obj");
                                    obj.onDataSetChanged();
                                }
                            });
                        }
                    });
                }
            });
            this.title.setText(recentCommunityModuleHorizontalAdapter.getContentModule().displayName);
        }

        public RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        public final TextView getTitle() {
            return this.title;
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) throws NumberFormatException {
        super.refresh(i, pageRequestCallback);
        this.startRefresh = true;
        this.innerAdapter.refresh(i | 1, null);
    }

    /* compiled from: RecentCommunityModuleHorizontalAdapter.kt */
    public final class InnerAdapter extends RecentCommunityAdapter {
        final /* synthetic */ RecentCommunityModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(RecentCommunityModuleHorizontalAdapter recentCommunityModuleHorizontalAdapter, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = recentCommunityModuleHorizontalAdapter;
        }

        @Override // com.narvii.topic.adapter.RecentCommunityAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.this$0.getShowList()) {
                return super.getItemCount();
            }
            return 0;
        }

        @Override // com.narvii.topic.adapter.RecentCommunityAdapter
        public void onPreOpenCommunity(Community community) {
            Intrinsics.checkParameterIsNotNull(community, "community");
            super.onPreOpenCommunity(community);
            this.this$0.logClickEvent(community, ActSemantic.aminoEnter);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.contentModule.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
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
        return !isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.innerAdapter.isLoading();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.innerAdapter.getItemCount() > 0 ? 1 : 0;
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
        return this.innerAdapter.getItemCount() > 0 ? 1 : 0;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getErrorMessage()) || this.childHelper.isItemShown();
    }
}
