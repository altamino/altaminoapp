package com.narvii.topic.adapter;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.discover.adapter.ModuleLogUtils;
import com.narvii.master.search.GlobalPostListResponse;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.adapter.PostListAdapter;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: PostListAdapter.kt */
/* loaded from: classes3.dex */
public final class PostListAdapter extends NVRecyclerViewBaseAdapter implements NotificationListener, ModuleItemCountHost, SerialRequestChild, SubRequestHost {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostListAdapter.class), "inflater", "getInflater()Landroid/view/LayoutInflater;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostListAdapter.class), "proxyAdapter", "getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostListAdapter.class), "languageService", "getLanguageService()Lcom/narvii/language/ContentLanguageService;"))};
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SIZE = 6;
    private final SerialRequestHelper childHelper;
    private final ContentModule contentModule;
    private final ModuleDisplayConfig displayConfig;
    private final Lazy inflater$delegate;
    private final Lazy languageService$delegate;
    private final Lazy proxyAdapter$delegate;

    public final LayoutInflater getInflater() {
        Lazy lazy = this.inflater$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (LayoutInflater) lazy.getValue();
    }

    public final ContentLanguageService getLanguageService() {
        Lazy lazy = this.languageService$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ContentLanguageService) lazy.getValue();
    }

    public final PostSectionAdapter getProxyAdapter() {
        Lazy lazy = this.proxyAdapter$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (PostSectionAdapter) lazy.getValue();
    }

    public final boolean showPageSataus() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostListAdapter(final NVContext ctx, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.inflater$delegate = LazyKt__LazyJVMKt.lazy(new Function0<LayoutInflater>() { // from class: com.narvii.topic.adapter.PostListAdapter$inflater$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LayoutInflater invoke() {
                return LayoutInflater.from(ctx.getContext());
            }
        });
        this.proxyAdapter$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PostSectionAdapter>() { // from class: com.narvii.topic.adapter.PostListAdapter$proxyAdapter$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PostListAdapter.PostSectionAdapter invoke() {
                return new PostListAdapter.PostSectionAdapter(this.this$0, ctx);
            }
        });
        this.languageService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ContentLanguageService>() { // from class: com.narvii.topic.adapter.PostListAdapter$languageService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ContentLanguageService invoke() {
                return (ContentLanguageService) this.this$0.getService("content_language");
            }
        });
        this.childHelper = new SerialRequestHelper(this, this);
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    /* compiled from: PostListAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        if (isReadyToRequest()) {
            getProxyAdapter().onAttach();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i, pageRequestCallback);
        getProxyAdapter().refresh(i | 512, null);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        return new PostViewHolder(this, getView(parent, i));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? Math.min(getProxyAdapter().getCount(), 6) : getProxyAdapter().getCount();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof PostViewHolder) {
            ((PostViewHolder) holder).bindData(i);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return getProxyAdapter().isListShown();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        Object result = getProxyAdapter().getItem(i);
        if (result != null) {
            this.childHelper.setItemShown();
        }
        Intrinsics.checkExpressionValueIsNotNull(result, "result");
        return result;
    }

    public final int getItemType(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        return getProxyAdapter().getItemType(obj);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return getProxyAdapter().getItemViewType(i);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getViewTypeCount() {
        return getProxyAdapter().getViewTypeCount();
    }

    public final View getView(ViewGroup parent, int i) {
        View cell;
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        if (i != 0) {
            if (i == 1) {
                getProxyAdapter().loadNextPage(true);
                cell = getProxyAdapter().createLoadingItem(parent, null);
                cell.setVisibility(showPageSataus() ? 0 : 8);
                Intrinsics.checkExpressionValueIsNotNull(cell, "proxyAdapter.createLoadi…ew.GONE\n                }");
            } else if (i == 2) {
                cell = getProxyAdapter().createLoadMoreItem(parent, null);
                cell.setVisibility(showPageSataus() ? 0 : 8);
                Intrinsics.checkExpressionValueIsNotNull(cell, "proxyAdapter.createLoadM…ew.GONE\n                }");
            } else if (i == 3) {
                cell = getProxyAdapter().createListEndItem(parent, null, getProxyAdapter().rawList() == null ? 0 : getProxyAdapter().rawList().size());
                cell.setVisibility(showPageSataus() ? 0 : 8);
                Intrinsics.checkExpressionValueIsNotNull(cell, "proxyAdapter.createListE…ew.GONE\n                }");
            } else if (i == 4) {
                cell = getProxyAdapter().createErrorItem(parent, null, getProxyAdapter()._errorMsg);
                cell.setVisibility(showPageSataus() ? 0 : 8);
                Intrinsics.checkExpressionValueIsNotNull(cell, "proxyAdapter.createError…ew.GONE\n                }");
            } else {
                View viewInflate = getInflater().inflate(R.layout.layout_topic_post_list_module_wrapper, parent, false);
                if (viewInflate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
                }
                ViewGroup viewGroup = (ViewGroup) viewInflate;
                getInflater().inflate(getProxyAdapter().getLayout(i - 5), (ViewGroup) viewGroup.findViewById(R.id.item_content), true);
                return viewGroup;
            }
        } else {
            cell = getProxyAdapter().createView(android.R.layout.simple_list_item_1, parent, null);
            if (NVApplication.DEBUG) {
                View viewFindViewById = cell.findViewById(android.R.id.text1);
                if (viewFindViewById == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
                }
                ((TextView) viewFindViewById).setText("getItem() returns null");
            }
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        }
        return cell;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        return getProxyAdapter().onItemClick(getProxyAdapter(), i, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        return getProxyAdapter().onLongClick(getProxyAdapter(), i, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onLoginResult(boolean z, Intent intent) {
        getProxyAdapter().onLoginResult(z, intent);
    }

    /* compiled from: PostListAdapter.kt */
    public final class PostViewHolder extends RecyclerView.ViewHolder {
        private final FrameLayout itemContentView;
        final /* synthetic */ PostListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostViewHolder(PostListAdapter postListAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = postListAdapter;
            this.itemContentView = (FrameLayout) itemView.findViewById(R.id.item_content);
        }

        public final FrameLayout getItemContentView() {
            return this.itemContentView;
        }

        public final void bindData(int i) {
            this.this$0.getProxyAdapter().getView(i, this.itemView, null);
            this.itemView.setOnClickListener(this.this$0.getProxyAdapter().subviewClickListener);
            this.itemView.setOnLongClickListener(this.this$0.getProxyAdapter().subviewLongClickListener);
        }
    }

    /* compiled from: PostListAdapter.kt */
    public final class PostSectionAdapter extends HeadLinesListAdapter {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostSectionAdapter.class), "deviceService", "getDeviceService()Lcom/narvii/util/deviceid/DeviceIDService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(PostSectionAdapter.class), "deviceId", "getDeviceId()Ljava/lang/String;"))};
        private final Lazy deviceId$delegate;
        private final Lazy deviceService$delegate;
        final /* synthetic */ PostListAdapter this$0;

        public final String getDeviceId() {
            Lazy lazy = this.deviceId$delegate;
            KProperty kProperty = $$delegatedProperties[1];
            return (String) lazy.getValue();
        }

        public final DeviceIDService getDeviceService() {
            Lazy lazy = this.deviceService$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (DeviceIDService) lazy.getValue();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean isHeadline() {
            return false;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean showPromote() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostSectionAdapter(PostListAdapter postListAdapter, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = postListAdapter;
            this.deviceService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<DeviceIDService>() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$deviceService$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DeviceIDService invoke() {
                    return (DeviceIDService) this.this$0.getService("deviceid");
                }
            });
            this.deviceId$delegate = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$deviceId$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    DeviceIDService deviceService = this.this$0.getDeviceService();
                    Intrinsics.checkExpressionValueIsNotNull(deviceService, "deviceService");
                    return deviceService.getDeviceId();
                }
            });
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder requestFromModule;
            if (this.this$0.isReadyToRequest() && (requestFromModule = this.this$0.getContentModule().getRequestFromModule()) != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View v, boolean z) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            return this.this$0.onSubviewClick(v, z);
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected void completeLogBuilder(LogEvent.Builder builder, ObjectInfo<?> objectInfo) {
            Intrinsics.checkParameterIsNotNull(builder, "builder");
            super.completeLogBuilder(builder, objectInfo);
            ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter
        public void onLoginResult(boolean z, Intent intent) {
            super.onLoginResult(z, intent);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            String str = this.this$0.getContentModule().moduleType;
            Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
            return str;
        }

        @Override // com.narvii.list.NVAdapter
        public void ensureLogin(Intent intent, String str) {
            this.this$0.ensureLogin(intent, str);
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.headline_feed_options) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                Object service = getService("affiliations");
                Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"affiliations\")");
                AffiliationsService affiliationsService = (AffiliationsService) service;
                if (obj != null) {
                    affiliationsService.contains(((Feed) obj).ndcId);
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$onItemClick$1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (this.this$0.shouldShowDownloadMasterDialog(((Feed) obj).ndcId)) {
                                return;
                            }
                            new FlagReportOptionDialog.Builder(((NVAdapter) this.this$0).context).nvObject((NVObject) obj).build().show();
                        }
                    });
                    actionSheetDialog.show();
                    return true;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Feed");
            }
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                if (blog.type == 9 && ((view2 != null && view2.getId() == R.id.image) || (view2 == null && blog.ndcId == 0))) {
                    Feed feed = (Feed) obj;
                    new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view2, new StoryListFragment.IntentBuilder(feed).showCommentBar(true).source(StoryApi.GLOBAL_SEARCH_PLAYER).initFeedCommunity(getCommunityInfo(blog.getPublishNdcId())).forceVideoAutoPlay(true).build());
                    logFeedClickEvent(feed);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            super.resetList();
            this.this$0.getChildHelper().resetSerialRequestChild();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetEmptyList() {
            super.resetEmptyList();
            this.this$0.getChildHelper().resetSerialRequestChild();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
        public Class<? extends HeadlineListResponse> responseType() {
            return GlobalPostListResponse.class;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.this$0.notifyDataSetChanged();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, HeadlineListResponse headlineListResponse, int i) {
            super.onPageResponse(apiRequest, headlineListResponse, i);
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
            ((NVRecyclerViewBaseAdapter) this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$onPageResponse$1
                @Override // com.narvii.util.Callback
                public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                    dataSetChangeListener.onDataSetChanged();
                }
            });
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            super.onFailResponse(apiRequest, str, apiResponse, i);
            this.this$0.getChildHelper().setRequestFinished(this.this$0.getContentModule());
            ((NVRecyclerViewBaseAdapter) this.this$0).dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.PostListAdapter$PostSectionAdapter$onFailResponse$1
                @Override // com.narvii.util.Callback
                public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                    dataSetChangeListener.onDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return this.this$0.getDisplayConfig() != null && this.this$0.getDisplayConfig().isPagingLoad;
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (getProxyAdapter().rawList() != null) {
            getProxyAdapter().onNotification(notification);
        }
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return getItemCount();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(SerialRequestParent serialRequestParent) {
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getProxyAdapter().errorMessage()) || this.childHelper.isItemShown();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return getItemCount();
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
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? isSubRequestFinish() : getProxyAdapter().isEnd();
    }
}
