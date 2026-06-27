package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.ad.AdsModuleItem;
import com.narvii.ad.AdsModuleListResponse;
import com.narvii.amino.mastes.R;
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
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: AdsModuleHorizontalAdapter.kt */
/* loaded from: classes3.dex */
public class AdsModuleHorizontalAdapter extends ModuleHorizontalBaseAdapter {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_VALUE = 30000;
    private static final String TAG = "AdsModuleHorizontalAdapter";
    private AdsModuleIndicator adsModuleIndicator;
    private int allItemCount;
    private final NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;
    private final InnerAdapter innerAdapter;
    private DataSource innerDataSource;
    private RecyclerView innerRecyclerView;
    private RecyclerInListViewImpressionCollector<AdsModuleItem> ipc;
    private OnPageResponseListener onPageResponseListener;

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public interface OnPageResponseListener {
        void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i);

        void onPageResponse(ApiRequest apiRequest, AdsModuleListResponse adsModuleListResponse, int i);
    }

    public int getItemLayout() {
        return R.layout.ads_module_item;
    }

    public static final /* synthetic */ DataSource access$getInnerDataSource$p(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter) {
        DataSource dataSource = adsModuleHorizontalAdapter.innerDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdsModuleHorizontalAdapter(NVContext context, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter$dataSetChangeListener$1
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public final void onDataSetChanged() {
                Utils.post(new Runnable() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter$dataSetChangeListener$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdsModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0.notifyDataSetChanged();
                        ((NVRecyclerViewBaseAdapter) AdsModuleHorizontalAdapter$dataSetChangeListener$1.this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.dataSetChangeListener.1.1.1
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
        final Class<AdsModuleItem> cls = AdsModuleItem.class;
        final int i = R.id.embed_recycler;
        this.ipc = new RecyclerInListViewImpressionCollector<AdsModuleItem>(cls, i) { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<AdsModuleItem> objectInfo) {
                AdsModuleItem adsModuleItem;
                AdsModuleItem adsModuleItem2;
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, contentModule);
                builder.extraParam("deepLink", (objectInfo == null || (adsModuleItem2 = (AdsModuleItem) objectInfo.object) == null) ? null : adsModuleItem2.deepLink);
                builder.extraParam("moduleStyle", contentModule.style);
                int i2 = (objectInfo == null || (adsModuleItem = (AdsModuleItem) objectInfo.object) == null) ? -1 : adsModuleItem.adCampaignId;
                if (i2 != -1) {
                    builder.extraParam("adsId", Integer.valueOf(i2));
                }
            }

            @Override // com.narvii.logging.Impression.ImpressionCollector
            protected String getObjectKey(ObjectInfo<AdsModuleItem> objectInfo) {
                AdsModuleItem adsModuleItem;
                String uniqueKey;
                return (objectInfo == null || (adsModuleItem = (AdsModuleItem) objectInfo.object) == null || (uniqueKey = adsModuleItem.getUniqueKey()) == null) ? "" : uniqueKey;
            }
        };
    }

    public final OnPageResponseListener getOnPageResponseListener() {
        return this.onPageResponseListener;
    }

    public final void setOnPageResponseListener(OnPageResponseListener onPageResponseListener) {
        this.onPageResponseListener = onPageResponseListener;
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    /* renamed from: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter$getItemCount$1, reason: invalid class name */
    final /* synthetic */ class AnonymousClass1 extends MutablePropertyReference0 {
        AnonymousClass1(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter) {
            super(adsModuleHorizontalAdapter);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getName() {
            return "innerDataSource";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(AdsModuleHorizontalAdapter.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getInnerDataSource()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return AdsModuleHorizontalAdapter.access$getInnerDataSource$p((AdsModuleHorizontalAdapter) this.receiver);
        }

        public void set(Object obj) {
            ((AdsModuleHorizontalAdapter) this.receiver).innerDataSource = (DataSource) obj;
        }
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
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    public final RecyclerInListViewImpressionCollector<AdsModuleItem> getIpc() {
        return this.ipc;
    }

    public final void setIpc(RecyclerInListViewImpressionCollector<AdsModuleItem> recyclerInListViewImpressionCollector) {
        Intrinsics.checkParameterIsNotNull(recyclerInListViewImpressionCollector, "<set-?>");
        this.ipc = recyclerInListViewImpressionCollector;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        this.innerAdapter.onAttach();
        addImpressionCollector(this.ipc);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = getContentModule().moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onDetach() {
        super.onDetach();
        RecyclerView recyclerView = this.innerRecyclerView;
        if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
            if (recyclerView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
            }
            ((AutoScrollHorizontalRecyclerView) recyclerView).setAutoScroll(false);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.ads_module_layout, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…le_layout, parent, false)");
        return new AdsViewHolder(this, viewInflate);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        getItem(i);
        LogUtils.recyclerShownInAdapter(holder.itemView, this.ipc);
        int i2 = this.allItemCount;
        AdsModuleIndicator adsModuleIndicator = this.adsModuleIndicator;
        if (adsModuleIndicator == null || i2 != adsModuleIndicator.getIndexCount()) {
            updateListAndIndicator();
        }
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public final class AdsViewHolder extends BaseViewHolder {
        private int currentSnapPos;
        private final RecyclerView recyclerView;
        private final PagerSnapHelper snapHelper;
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdsViewHolder(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, View itemView) throws IllegalStateException {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = adsModuleHorizontalAdapter;
            View viewFindViewById = itemView.findViewById(R.id.embed_recycler);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.embed_recycler)");
            this.recyclerView = (RecyclerView) viewFindViewById;
            this.snapHelper = new PagerSnapHelper();
            adsModuleHorizontalAdapter.innerRecyclerView = this.recyclerView;
            adsModuleHorizontalAdapter.adsModuleIndicator = (AdsModuleIndicator) itemView.findViewById(R.id.indicator_view);
            this.recyclerView.setItemAnimator(null);
            this.recyclerView.setLayoutManager(new LinearLayoutManager(itemView.getContext(), 0, false));
            this.recyclerView.setAdapter(adsModuleHorizontalAdapter.innerAdapter);
            this.recyclerView.setNestedScrollingEnabled(false);
            this.snapHelper.attachToRecyclerView(this.recyclerView);
            this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.AdsViewHolder.1
                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                }

                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                    if (i == 0) {
                        AdsViewHolder.this.maybeNotifySnapPositionChange(recyclerView);
                    }
                }
            });
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
                ((AutoScrollHorizontalRecyclerView) recyclerView).setPositionChangeListener(new AutoScrollHorizontalRecyclerView.IPositionChangeListener() { // from class: com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter.AdsViewHolder.2
                    @Override // com.narvii.widget.AutoScrollHorizontalRecyclerView.IPositionChangeListener
                    public final void onCurrPositionChanged(int i) {
                        AdsViewHolder.this.currentSnapPos = i;
                        AdsModuleIndicator adsModuleIndicator = AdsViewHolder.this.this$0.adsModuleIndicator;
                        if (adsModuleIndicator != null) {
                            adsModuleIndicator.setSelectedIndex(AdsViewHolder.this.currentSnapPos % AdsModuleHorizontalAdapter.access$getInnerDataSource$p(AdsViewHolder.this.this$0).getSize());
                        }
                    }
                });
            }
        }

        public final RecyclerView getRecyclerView() {
            return this.recyclerView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void maybeNotifySnapPositionChange(RecyclerView recyclerView) {
            int snapPosition = getSnapPosition(this.snapHelper, recyclerView);
            if (snapPosition == -1) {
                return;
            }
            if (this.currentSnapPos != snapPosition) {
                this.currentSnapPos = snapPosition;
                AdsModuleIndicator adsModuleIndicator = this.this$0.adsModuleIndicator;
                if (adsModuleIndicator != null) {
                    adsModuleIndicator.setSelectedIndex(this.currentSnapPos % AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getSize());
                }
            }
        }

        private final int getSnapPosition(SnapHelper snapHelper, RecyclerView recyclerView) {
            View viewFindSnapView;
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null || (viewFindSnapView = snapHelper.findSnapView(layoutManager)) == null) {
                return -1;
            }
            Intrinsics.checkExpressionValueIsNotNull(viewFindSnapView, "findSnapView(layoutManag… RecyclerView.NO_POSITION");
            return layoutManager.getPosition(viewFindSnapView);
        }
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public final class InnerAdapter extends PagingRecyclerViewAdapter<AdsModuleItem, AdsModuleListResponse> {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected boolean showPageLoadingStatus() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerAdapter(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, NVContext context, ContentModule module) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(module, "module");
            this.this$0 = adsModuleHorizontalAdapter;
            addDataSetChangeListener(adsModuleHorizontalAdapter.dataSetChangeListener);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter = this.this$0;
            NVContext context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            View viewInflate = LayoutInflater.from(context.getContext()).inflate(this.this$0.getItemLayout(), parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…mLayout(), parent, false)");
            return new InnerViewHolder(adsModuleHorizontalAdapter, viewInflate);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof InnerViewHolder) {
                View view = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
                NVImageView nVImageView = (NVImageView) view.findViewById(com.narvii.amino.R.id.ads_image);
                AdsModuleItem item = getItem(i);
                nVImageView.setImageUrl(item != null ? item.imageUrl : null);
                LogUtils.setAttachedObject(holder.itemView, getItem(i));
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<AdsModuleItem, AdsModuleListResponse> createPageDataSource(NVContext nVContext) {
            PagingConfiguration pagingConfiguration = new PagingConfiguration(25, 3, 0);
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter = this.this$0;
            adsModuleHorizontalAdapter.innerDataSource = new DataSource(adsModuleHorizontalAdapter, nVContext, pagingConfiguration);
            return AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getSize() > 1 ? AdsModuleHorizontalAdapter.MAX_VALUE : AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getSize();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public AdsModuleItem getItem(int i) {
            if (AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getSize() > 0) {
                return (AdsModuleItem) AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getItem(i % AdsModuleHorizontalAdapter.access$getInnerDataSource$p(this.this$0).getSize());
            }
            return null;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof AdsModuleItem) {
                AdsModuleItem adsModuleItem = (AdsModuleItem) obj;
                String str = adsModuleItem.deepLink;
                Intrinsics.checkExpressionValueIsNotNull(str, "item.deepLink");
                if (str.length() > 0) {
                    this.this$0.logClickEvent(obj, ActSemantic.checkDetail);
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(adsModuleItem.deepLink)));
                    return true;
                }
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public final class InnerViewHolder extends BaseViewHolder {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerViewHolder(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = adsModuleHorizontalAdapter;
            itemView.setOnClickListener(adsModuleHorizontalAdapter.subviewClickListener);
        }
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public final class DataSource extends PageDataSource<AdsModuleItem, AdsModuleListResponse> {
        final /* synthetic */ AdsModuleHorizontalAdapter this$0;

        @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
        public boolean loadNextPage(PageRequestCallback pageRequestCallback) {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataSource(AdsModuleHorizontalAdapter adsModuleHorizontalAdapter, NVContext nVContext, PagingConfiguration pagingConfiguration) {
            super(nVContext, null, pagingConfiguration);
            Intrinsics.checkParameterIsNotNull(pagingConfiguration, "pagingConfiguration");
            this.this$0 = adsModuleHorizontalAdapter;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule;
            if (this.this$0.isReadyToRequest() && (requestFromModule = this.this$0.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<AdsModuleListResponse> responseType() {
            return AdsModuleListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, AdsModuleListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            List<AdsModuleItem> list = resp.itemList;
            if (list == null || list.size() <= 1) {
                this.this$0.allItemCount = 0;
            } else {
                this.this$0.allItemCount = resp.itemList.size();
            }
            this.this$0.updateListAndIndicator();
            OnPageResponseListener onPageResponseListener = this.this$0.getOnPageResponseListener();
            if (onPageResponseListener != null) {
                onPageResponseListener.onPageResponse(req, resp, i);
            }
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            super.onFailResponse(apiRequest, str, apiResponse, i);
            OnPageResponseListener onPageResponseListener = this.this$0.getOnPageResponseListener();
            if (onPageResponseListener != null) {
                onPageResponseListener.onFailResponse(apiRequest, str, apiResponse, i);
            }
        }
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return dataSource.getSize() > 0 ? 1 : 0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        DataSource dataSource = this.innerDataSource;
        if (dataSource != null) {
            return dataSource.getSize() > 0 ? 1 : 0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateListAndIndicator() {
        int i = this.allItemCount;
        if (i > 1) {
            AdsModuleIndicator adsModuleIndicator = this.adsModuleIndicator;
            if (adsModuleIndicator != null) {
                adsModuleIndicator.setIndexCount(i);
                adsModuleIndicator.setVisibility(0);
            }
            RecyclerView recyclerView = this.innerRecyclerView;
            if (recyclerView instanceof AutoScrollHorizontalRecyclerView) {
                if (recyclerView == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
                }
                ((AutoScrollHorizontalRecyclerView) recyclerView).setAutoScroll(false);
            }
            RecyclerView recyclerView2 = this.innerRecyclerView;
            if (recyclerView2 != null) {
                int i2 = this.allItemCount;
                recyclerView2.scrollToPosition(((MAX_VALUE / i2) * i2) / 2);
            }
            RecyclerView recyclerView3 = this.innerRecyclerView;
            if (recyclerView3 instanceof AutoScrollHorizontalRecyclerView) {
                if (recyclerView3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView");
                }
                ((AutoScrollHorizontalRecyclerView) recyclerView3).setAutoScroll(true);
                return;
            }
            return;
        }
        AdsModuleIndicator adsModuleIndicator2 = this.adsModuleIndicator;
        if (adsModuleIndicator2 != null) {
            adsModuleIndicator2.setVisibility(8);
        }
    }

    /* compiled from: AdsModuleHorizontalAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
