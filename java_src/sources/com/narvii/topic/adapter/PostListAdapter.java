package com.narvii.topic.adapter;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.discover.adapter.ModuleLogUtils;
import com.narvii.master.search.GlobalPostListResponse;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class PostListAdapter extends NVRecyclerViewBaseAdapter implements NotificationListener, ModuleItemCountHost, SerialRequestChild, SubRequestHost {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final ContentModule contentModule;

    @Nullable
    private final ModuleDisplayConfig displayConfig;

    @NotNull
    private final w7.m inflater$delegate;

    @NotNull
    private final w7.m languageService$delegate;

    @NotNull
    private final w7.m proxyAdapter$delegate;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class PostSectionAdapter extends HeadLinesListAdapter {
        final /* synthetic */ PostListAdapter this$0;

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean isHeadline() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<? extends HeadlineListResponse> responseType() {
            return GlobalPostListResponse.class;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean showPromote() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostSectionAdapter(@NotNull PostListAdapter postListAdapter, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = postListAdapter;
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return this.this$0.getDisplayConfig() != null && this.this$0.getDisplayConfig().isPagingLoad;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected void completeLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<?> objectInfo) {
            kotlin.jvm.internal.t.j(builder, "builder");
            super.completeLogBuilder(builder, objectInfo);
            ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder requestFromModule;
            if (this.this$0.isReadyToRequest() && (requestFromModule = this.this$0.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter
        public void ensureLogin(@Nullable Intent intent, @Nullable String str) {
            this.this$0.ensureLogin(intent, str);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            String moduleType = this.this$0.getContentModule().moduleType;
            kotlin.jvm.internal.t.i(moduleType, "moduleType");
            return moduleType;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable final Object obj, @Nullable View view, @Nullable View view2) {
            if (view2 == null || view2.getId() != R.id.headline_feed_options) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            Object service = getService("affiliations");
            kotlin.jvm.internal.t.i(service, "getService(...)");
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type com.narvii.model.Feed");
            ((AffiliationsService) service).contains(((Feed) obj).ndcId);
            actionSheetDialog.addItem(R.string.flag_for_review, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.topic.adapter.r
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    PostListAdapter.PostSectionAdapter.onItemClick$lambda$0(this.f2768a, obj, dialogInterface, i11);
                }
            });
            actionSheetDialog.show();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable HeadlineListResponse headlineListResponse, int i10) {
            super.onPageResponse(apiRequest, headlineListResponse, i10);
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
            ((NVRecyclerViewBaseAdapter) this.this$0).dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.q
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void notifyDataSetChanged$lambda$1(PostListAdapter this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onItemClick$lambda$0(PostSectionAdapter this$0, Object obj, DialogInterface dialogInterface, int i10) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            if (this$0.shouldShowDownloadMasterDialog(((Feed) obj).ndcId)) {
                return;
            }
            new FlagReportOptionDialog.Builder(this$0.context).nvObject((NVObject) obj).build().show();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            final PostListAdapter postListAdapter = this.this$0;
            Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.s
                @Override // java.lang.Runnable
                public final void run() {
                    PostListAdapter.PostSectionAdapter.notifyDataSetChanged$lambda$1(postListAdapter);
                }
            });
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
        protected void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
            ((NVRecyclerViewBaseAdapter) this.this$0).dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.topic.adapter.p
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
                }
            });
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter
        public void onLoginResult(boolean z6, @Nullable Intent intent) {
            super.onLoginResult(z6, intent);
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(@NotNull View v5, boolean z6) {
            kotlin.jvm.internal.t.j(v5, "v");
            return this.this$0.onSubviewClick(v5, z6);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetEmptyList() {
            super.resetEmptyList();
            this.this$0.getChildHelper().resetSerialRequestChild();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            super.resetList();
            this.this$0.getChildHelper().resetSerialRequestChild();
        }
    }

    public final class PostViewHolder extends RecyclerView.ViewHolder {

        @Nullable
        private final FrameLayout itemContentView;
        final /* synthetic */ PostListAdapter this$0;

        @Nullable
        public final FrameLayout getItemContentView() {
            return this.itemContentView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostViewHolder(@NotNull PostListAdapter postListAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = postListAdapter;
            this.itemContentView = (FrameLayout) itemView.findViewById(R.id.item_content);
        }

        public final void bindData(int i10) {
            this.this$0.getProxyAdapter().getView(i10, this.itemView, null);
            this.itemView.setOnClickListener(this.this$0.getProxyAdapter().subviewClickListener);
            this.itemView.setOnLongClickListener(this.this$0.getProxyAdapter().subviewLongClickListener);
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

    public final boolean showPageSataus() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostListAdapter(@NotNull NVContext ctx, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.inflater$delegate = w7.o.a(new PostListAdapter$inflater$2(ctx));
        this.proxyAdapter$delegate = w7.o.a(new PostListAdapter$proxyAdapter$2(this, ctx));
        this.languageService$delegate = w7.o.a(new PostListAdapter$languageService$2(this));
        this.childHelper = new SerialRequestHelper(this, this);
    }

    @NotNull
    public final LayoutInflater getInflater() {
        Object value = this.inflater$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (LayoutInflater) value;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? Math.min(getProxyAdapter().getCount(), 6) : getProxyAdapter().getCount();
    }

    public final int getItemType(@NotNull Object obj) {
        kotlin.jvm.internal.t.j(obj, "obj");
        return getProxyAdapter().getItemType(obj);
    }

    @NotNull
    public final ContentLanguageService getLanguageService() {
        Object value = this.languageService$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (ContentLanguageService) value;
    }

    @NotNull
    public final PostSectionAdapter getProxyAdapter() {
        return (PostSectionAdapter) this.proxyAdapter$delegate.getValue();
    }

    @NotNull
    public final View getView(@NotNull ViewGroup parent, int i10) {
        View viewCreateView;
        kotlin.jvm.internal.t.j(parent, "parent");
        if (i10 != 0) {
            if (i10 == 1) {
                getProxyAdapter().loadNextPage(true);
                viewCreateView = getProxyAdapter().createLoadingItem(parent, null);
                viewCreateView.setVisibility(showPageSataus() ? 0 : 8);
                kotlin.jvm.internal.t.g(viewCreateView);
            } else if (i10 == 2) {
                viewCreateView = getProxyAdapter().createLoadMoreItem(parent, null);
                viewCreateView.setVisibility(showPageSataus() ? 0 : 8);
                kotlin.jvm.internal.t.g(viewCreateView);
            } else if (i10 == 3) {
                viewCreateView = getProxyAdapter().createListEndItem(parent, null, getProxyAdapter().rawList() == null ? 0 : getProxyAdapter().rawList().size());
                viewCreateView.setVisibility(showPageSataus() ? 0 : 8);
                kotlin.jvm.internal.t.g(viewCreateView);
            } else {
                if (i10 != 4) {
                    View viewInflate = getInflater().inflate(R.layout.layout_topic_post_list_module_wrapper, parent, false);
                    kotlin.jvm.internal.t.h(viewInflate, "null cannot be cast to non-null type android.view.ViewGroup");
                    ViewGroup viewGroup = (ViewGroup) viewInflate;
                    getInflater().inflate(getProxyAdapter().getLayout(i10 - 5), (ViewGroup) viewGroup.findViewById(R.id.item_content), true);
                    return viewGroup;
                }
                viewCreateView = getProxyAdapter().createErrorItem(parent, null, getProxyAdapter()._errorMsg);
                viewCreateView.setVisibility(showPageSataus() ? 0 : 8);
                kotlin.jvm.internal.t.g(viewCreateView);
            }
        } else {
            viewCreateView = getProxyAdapter().createView(android.R.layout.simple_list_item_1, parent, null);
            if (NVApplication.DEBUG) {
                View viewFindViewById = viewCreateView.findViewById(android.R.id.text1);
                kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) viewFindViewById).setText("getItem() returns null");
            }
            kotlin.jvm.internal.t.g(viewCreateView);
        }
        return viewCreateView;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? isSubRequestFinish() : getProxyAdapter().isEnd();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof PostViewHolder) {
            ((PostViewHolder) holder).bindData(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        return new PostViewHolder(this, getView(parent, i10));
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(@Nullable SerialRequestParent serialRequestParent) {
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return getItemCount();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return getItemCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Object getItem(int i10) {
        Object item = getProxyAdapter().getItem(i10);
        if (item != null) {
            this.childHelper.setItemShown();
        }
        kotlin.jvm.internal.t.g(item);
        return item;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return getProxyAdapter().getItemViewType(i10);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getViewTypeCount() {
        return getProxyAdapter().getViewTypeCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return getProxyAdapter().isListShown();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        if (TextUtils.isEmpty(getProxyAdapter().errorMessage()) && !this.childHelper.isItemShown()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        if (!isReadyToRequest()) {
            return;
        }
        getProxyAdapter().onAttach();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        return getProxyAdapter().onItemClick(getProxyAdapter(), i10, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onLoginResult(boolean z6, @Nullable Intent intent) {
        getProxyAdapter().onLoginResult(z6, intent);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        return getProxyAdapter().onLongClick(getProxyAdapter(), i10, obj, view, view2);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (getProxyAdapter().rawList() != null) {
            getProxyAdapter().onNotification(notification);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        getProxyAdapter().refresh(i10 | 512, null);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return getItemCount();
    }
}
