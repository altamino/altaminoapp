package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.narvii.ad.AdsModuleItem;
import com.narvii.ad.AdsModuleListResponse;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.widgets.AdsModuleIndicator;
import com.narvii.model.api.ApiResponse;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.AutoScrollHorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class AdsModuleHorizontalAdapter extends ModuleHorizontalBaseAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_VALUE = 30000;

    @NotNull
    private static final String TAG = "AdsModuleHorizontalAdapter";

    @Nullable
    private AdsModuleIndicator adsModuleIndicator;
    private int allItemCount;

    @NotNull
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;

    @NotNull
    private final InnerAdapter innerAdapter;
    private DataSource innerDataSource;

    @Nullable
    private RecyclerView innerRecyclerView;

    @NotNull
    private RecyclerInListViewImpressionCollector<AdsModuleItem> ipc;

    @Nullable
    private OnPageResponseListener onPageResponseListener;

    public final class AdsViewHolder extends BaseViewHolder {
        private int currentSnapPos;

        @NotNull
        private final RecyclerView recyclerView;

        @NotNull
        private final PagerSnapHelper snapHelper;
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        @NotNull
        public final RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdsViewHolder(@NotNull final AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = adsModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            RecyclerView recyclerView = (RecyclerView) viewFindViewById;
            this.recyclerView = recyclerView;
            PagerSnapHelper pagerSnapHelper = new PagerSnapHelper();
            this.snapHelper = pagerSnapHelper;
            adsModuleHorizontalAdapter.innerRecyclerView = recyclerView;
            adsModuleHorizontalAdapter.adsModuleIndicator = (AdsModuleIndicator) itemView.findViewById(R.id.indicator_view);
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            recyclerView.setAdapter(adsModuleHorizontalAdapter.innerAdapter);
            recyclerView.setNestedScrollingEnabled(false);
            pagerSnapHelper.b(recyclerView);
            recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.AdsViewHolder.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(@NotNull RecyclerView recyclerView2, int i10, int i11) {
                    kotlin.jvm.internal.t.j(recyclerView2, "recyclerView");
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(@NotNull RecyclerView recyclerView2, int i10) {
                    kotlin.jvm.internal.t.j(recyclerView2, "recyclerView");
                    if (i10 == 0) {
                        AdsViewHolder.this.maybeNotifySnapPositionChange(recyclerView2);
                    }
                }
            });
            if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
                ((AutoScrollHorizontalRecyclerView) recyclerView).setPositionChangeListener(new AutoScrollHorizontalRecyclerView.IPositionChangeListener() { // from class: com.narvii.master.home.discover.adapter.d
                    @Override // com.narvii.widget.AutoScrollHorizontalRecyclerView.IPositionChangeListener
                    public final void onCurrPositionChanged(int i10) {
                        AdsModuleHorizontalAdapter.AdsViewHolder._init_$lambda$0(this.f2312a, adsModuleHorizontalAdapter, i10);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(AdsViewHolder this$0, AdsModuleHorizontalAdapter this$1, int i10) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            kotlin.jvm.internal.t.j(this$1, "this$1");
            this$0.currentSnapPos = i10;
            AdsModuleIndicator adsModuleIndicator = this$1.adsModuleIndicator;
            if (adsModuleIndicator == null) {
                return;
            }
            int i11 = this$0.currentSnapPos;
            DataSource dataSource = this$1.innerDataSource;
            if (dataSource == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
                dataSource = null;
            }
            adsModuleIndicator.setSelectedIndex(i11 % dataSource.getSize());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void maybeNotifySnapPositionChange(RecyclerView recyclerView) {
            int snapPosition = getSnapPosition(this.snapHelper, recyclerView);
            if (snapPosition == -1 || this.currentSnapPos == snapPosition) {
                return;
            }
            this.currentSnapPos = snapPosition;
            AdsModuleIndicator adsModuleIndicator = this.this$0.adsModuleIndicator;
            if (adsModuleIndicator == null) {
                return;
            }
            int i10 = this.currentSnapPos;
            DataSource dataSource = this.this$0.innerDataSource;
            if (dataSource == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
                dataSource = null;
            }
            adsModuleIndicator.setSelectedIndex(i10 % dataSource.getSize());
        }

        private final int getSnapPosition(SnapHelper snapHelper, RecyclerView recyclerView) {
            View viewH;
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null || (viewH = snapHelper.h(layoutManager)) == null) {
                return -1;
            }
            return layoutManager.getPosition(viewH);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class DataSource extends PageDataSource<AdsModuleItem, AdsModuleListResponse> {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
        public boolean loadNextPage(@Nullable PageRequestCallback pageRequestCallback) {
            return false;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<AdsModuleListResponse> responseType() {
            return AdsModuleListResponse.class;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataSource(@Nullable AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, @NotNull NVContext nVContext, PagingConfiguration pagingConfiguration) {
            super(nVContext, null, pagingConfiguration);
            kotlin.jvm.internal.t.j(pagingConfiguration, "pagingConfiguration");
            this.this$0 = adsModuleHorizontalAdapter;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (this.this$0.isReadyToRequest() && (requestFromModule = this.this$0.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(@NotNull ApiRequest req, @NotNull AdsModuleListResponse resp, int i10) {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            List<AdsModuleItem> list = resp.itemList;
            if (list == null || list.size() <= 1) {
                this.this$0.allItemCount = 0;
            } else {
                this.this$0.allItemCount = resp.itemList.size();
            }
            this.this$0.updateListAndIndicator();
            OnPageResponseListener onPageResponseListener = this.this$0.getOnPageResponseListener();
            if (onPageResponseListener != null) {
                onPageResponseListener.onPageResponse(req, resp, i10);
            }
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            OnPageResponseListener onPageResponseListener = this.this$0.getOnPageResponseListener();
            if (onPageResponseListener != null) {
                onPageResponseListener.onFailResponse(apiRequest, str, apiResponse, i10);
            }
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
        }
    }

    public final class InnerAdapter extends PagingRecyclerViewAdapter<AdsModuleItem, AdsModuleListResponse> {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected boolean showPageLoadingStatus() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(@NotNull AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, @NotNull NVContext context, ContentModule module) {
            super(context);
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(module, "module");
            this.this$0 = adsModuleHorizontalAdapter;
            addDataSetChangeListener(adsModuleHorizontalAdapter.dataSetChangeListener);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<AdsModuleItem, AdsModuleListResponse> createPageDataSource(@Nullable NVContext nVContext) {
            PagingConfiguration pagingConfiguration = new PagingConfiguration(25, 3, 0);
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter = this.this$0;
            adsModuleHorizontalAdapter.innerDataSource = new DataSource(adsModuleHorizontalAdapter, nVContext, pagingConfiguration);
            DataSource dataSource = this.this$0.innerDataSource;
            if (dataSource != null) {
                return dataSource;
            }
            kotlin.jvm.internal.t.B("innerDataSource");
            return null;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            DataSource dataSource = this.this$0.innerDataSource;
            DataSource dataSource2 = null;
            if (dataSource == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
                dataSource = null;
            }
            if (dataSource.getSize() > 1) {
                return AdsModuleHorizontalAdapter.MAX_VALUE;
            }
            DataSource dataSource3 = this.this$0.innerDataSource;
            if (dataSource3 == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
            } else {
                dataSource2 = dataSource3;
            }
            return dataSource2.getSize();
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof InnerViewHolder) {
                NVImageView nVImageView = (NVImageView) holder.itemView.findViewById(R.id.ads_image);
                AdsModuleItem item = getItem(i10);
                nVImageView.setImageUrl(item != null ? item.imageUrl : null);
                LogUtils.setAttachedObject(holder.itemView, getItem(i10));
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter = this.this$0;
            View viewInflate = LayoutInflater.from(this.context.getContext()).inflate(this.this$0.getItemLayout(), parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new InnerViewHolder(adsModuleHorizontalAdapter, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (obj instanceof AdsModuleItem) {
                AdsModuleItem adsModuleItem = (AdsModuleItem) obj;
                String deepLink = adsModuleItem.deepLink;
                kotlin.jvm.internal.t.i(deepLink, "deepLink");
                if (deepLink.length() > 0) {
                    this.this$0.logClickEvent(obj, ActSemantic.checkDetail);
                    safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, new Intent("android.intent.action.VIEW", Uri.parse(adsModuleItem.deepLink)));
                    return true;
                }
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @Nullable
        public AdsModuleItem getItem(int i10) {
            DataSource dataSource = this.this$0.innerDataSource;
            DataSource dataSource2 = null;
            if (dataSource == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
                dataSource = null;
            }
            if (dataSource.getSize() <= 0) {
                return null;
            }
            DataSource dataSource3 = this.this$0.innerDataSource;
            if (dataSource3 == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
                dataSource3 = null;
            }
            DataSource dataSource4 = this.this$0.innerDataSource;
            if (dataSource4 == null) {
                kotlin.jvm.internal.t.B("innerDataSource");
            } else {
                dataSource2 = dataSource4;
            }
            return (AdsModuleItem) dataSource3.getItem(i10 % dataSource2.getSize());
        }
    }

    public final class InnerViewHolder extends BaseViewHolder {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerViewHolder(@NotNull AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = adsModuleHorizontalAdapter;
            itemView.setOnClickListener(adsModuleHorizontalAdapter.subviewClickListener);
        }
    }

    public interface OnPageResponseListener {
        void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10);

        void onPageResponse(@NotNull ApiRequest apiRequest, @NotNull AdsModuleListResponse adsModuleListResponse, int i10);
    }

    @NotNull
    public final RecyclerInListViewImpressionCollector<AdsModuleItem> getIpc() {
        return this.ipc;
    }

    public int getItemLayout() {
        return R.layout.ads_module_item;
    }

    @Nullable
    public final OnPageResponseListener getOnPageResponseListener() {
        return this.onPageResponseListener;
    }

    public final void setIpc(@NotNull RecyclerInListViewImpressionCollector<AdsModuleItem> recyclerInListViewImpressionCollector) {
        kotlin.jvm.internal.t.j(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    public final void setOnPageResponseListener(@Nullable OnPageResponseListener onPageResponseListener) {
        this.onPageResponseListener = onPageResponseListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdsModuleHorizontalAdapter(@NotNull NVContext context, @NotNull final ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.master.home.discover.adapter.b
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                AdsModuleHorizontalAdapter.dataSetChangeListener$lambda$2(this.f2310a);
            }
        };
        InnerAdapter innerAdapter = new InnerAdapter(this, context, contentModule);
        this.innerAdapter = innerAdapter;
        setAdapter(innerAdapter);
        final Class<AdsModuleItem> cls = AdsModuleItem.class;
        this.ipc = new RecyclerInListViewImpressionCollector<AdsModuleItem>(cls) { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<AdsModuleItem> objectInfo) {
                AdsModuleItem adsModuleItem;
                AdsModuleItem adsModuleItem2;
                kotlin.jvm.internal.t.j(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, contentModule);
                builder.extraParam("deepLink", (objectInfo == null || (adsModuleItem2 = (AdsModuleItem) objectInfo.object) == null) ? null : adsModuleItem2.deepLink);
                builder.extraParam("moduleStyle", contentModule.style);
                int i10 = (objectInfo == null || (adsModuleItem = (AdsModuleItem) objectInfo.object) == null) ? -1 : adsModuleItem.adCampaignId;
                if (i10 != -1) {
                    builder.extraParam("adsId", Integer.valueOf(i10));
                }
            }

            @Override // com.narvii.logging.Impression.ImpressionCollector
            @NotNull
            protected String getObjectKey(@Nullable ObjectInfo<AdsModuleItem> objectInfo) {
                AdsModuleItem adsModuleItem;
                String uniqueKey = (objectInfo == null || (adsModuleItem = (AdsModuleItem) objectInfo.object) == null) ? null : adsModuleItem.getUniqueKey();
                return uniqueKey == null ? "" : uniqueKey;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2(final AdsModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Utils.post(new Runnable() { // from class: com.narvii.master.home.discover.adapter.c
            @Override // java.lang.Runnable
            public final void run() {
                AdsModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1(this.f2311a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1(AdsModuleHorizontalAdapter this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.notifyDataSetChanged();
        this$0.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.master.home.discover.adapter.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                AdsModuleHorizontalAdapter.dataSetChangeListener$lambda$2$lambda$1$lambda$0((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dataSetChangeListener$lambda$2$lambda$1$lambda$0(NVRecyclerViewBaseAdapter.DataSetChangeListener obj) {
        kotlin.jvm.internal.t.j(obj, "obj");
        obj.onDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateListAndIndicator() {
        int i10 = this.allItemCount;
        if (i10 <= 1) {
            AdsModuleIndicator adsModuleIndicator = this.adsModuleIndicator;
            if (adsModuleIndicator != null) {
                adsModuleIndicator.setVisibility(8);
                return;
            }
            return;
        }
        AdsModuleIndicator adsModuleIndicator2 = this.adsModuleIndicator;
        if (adsModuleIndicator2 != null) {
            adsModuleIndicator2.setIndexCount(i10);
            adsModuleIndicator2.setVisibility(0);
        }
        RecyclerView recyclerView = this.innerRecyclerView;
        if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
            kotlin.jvm.internal.t.h(recyclerView, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
            ((AutoScrollHorizontalRecyclerView) recyclerView).setAutoScroll(false);
        }
        RecyclerView recyclerView2 = this.innerRecyclerView;
        if (recyclerView2 != null) {
            int i11 = this.allItemCount;
            recyclerView2.scrollToPosition(((MAX_VALUE / i11) * i11) / 2);
        }
        RecyclerView recyclerView3 = this.innerRecyclerView;
        if (recyclerView3 instanceof AutoScrollHorizontalRecyclerView) {
            kotlin.jvm.internal.t.h(recyclerView3, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
            ((AutoScrollHorizontalRecyclerView) recyclerView3).setAutoScroll(true);
        }
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            kotlin.jvm.internal.t.B("innerDataSource");
            dataSource = null;
        }
        return dataSource.getSize() > 0 ? 1 : 0;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            return 0;
        }
        if (dataSource == null) {
            kotlin.jvm.internal.t.B("innerDataSource");
            dataSource = null;
        }
        return dataSource.getSize() > 0 ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        getItem(i10);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
        AdsModuleIndicator adsModuleIndicator = this.adsModuleIndicator;
        if (adsModuleIndicator == null || this.allItemCount != adsModuleIndicator.getIndexCount()) {
            updateListAndIndicator();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.ads_module_layout, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new AdsViewHolder(this, viewInflate);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource == null) {
            kotlin.jvm.internal.t.B("innerDataSource");
            dataSource = null;
        }
        return dataSource.getSize() > 0 ? 1 : 0;
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
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onDetach() {
        super.onDetach();
        RecyclerView recyclerView = this.innerRecyclerView;
        if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
            kotlin.jvm.internal.t.h(recyclerView, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
            ((AutoScrollHorizontalRecyclerView) recyclerView).setAutoScroll(false);
        }
    }
}
