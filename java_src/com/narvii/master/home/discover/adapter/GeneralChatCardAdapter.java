package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GeneralChatCardAdapter.kt */
/* loaded from: classes3.dex */
public class GeneralChatCardAdapter extends PagingRecyclerViewAdapter<ChatThread, ThreadListResponse> implements NotificationListener, ModuleItemCountHost {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_CHAT_SIZE = 4;
    private int allItemCount;
    private final HashMap<String, Community> communityMapping;
    private final ConfigService configService;
    private final NVContext ctx;
    private final ModuleDisplayConfig displayConfig;
    private final ContentModule module;
    private final HashMap<String, PlayList> playListMap;
    private String source;
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
    }

    public boolean restrictSize() {
        return true;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        return false;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    public final ContentModule getModule() {
        return this.module;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralChatCardAdapter(NVContext ctx, ContentModule module, ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.displayConfig = moduleDisplayConfig;
        this.source = "Public chat";
        this.playListMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.communityMapping = new HashMap<>();
        Object service = getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"config\")");
        this.configService = (ConfigService) service;
    }

    public final String getSource() {
        return this.source;
    }

    public final void setSource(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.source = str;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.chat_hangout_item, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new ViewHolder(this, cell);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).bindViewHolder(getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    public PageDataSource<ChatThread, ThreadListResponse> createPageDataSource(NVContext nVContext) {
        PagingConfiguration pagingConfiguration = new PagingConfiguration(25, 3, 0);
        if (nVContext != null) {
            return new DataSource(this, nVContext, pagingConfiguration);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return restrictSize() ? Math.min(super.getItemCount(), 4) : super.getItemCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof ChatThread) {
            if (!((AccountService) this.context.getService("account")).hasAccount()) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
                return true;
            }
            logClickEvent(obj, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
            ChatThread chatThread = (ChatThread) obj;
            intent.putExtra("id", chatThread.threadId);
            intent.putExtra("thread", JacksonUtils.writeAsString(obj));
            intent.putExtra("Source", this.source);
            intent.putExtra("__communityId", chatThread.ndcId);
            Intent intent2 = new Intent("openHangout");
            intent2.putExtra("intent", intent);
            ensureLogin(intent2, null);
            return true;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    /* compiled from: GeneralChatCardAdapter.kt */
    public final class DataSource extends PageDataSource<ChatThread, ThreadListResponse> {
        final /* synthetic */ GeneralChatCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataSource(GeneralChatCardAdapter generalChatCardAdapter, NVContext nvContext, PagingConfiguration pagingConfiguration) {
            super(nvContext, null, pagingConfiguration);
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            Intrinsics.checkParameterIsNotNull(pagingConfiguration, "pagingConfiguration");
            this.this$0 = generalChatCardAdapter;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule = this.this$0.getModule().getRequestFromModule();
            if (requestFromModule != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, ThreadListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            this.this$0.allItemCount = resp.allItemCount;
            List<ChatThread> list = resp.threadList;
            if (list != null && resp.playlistInThreadList != null) {
                for (ChatThread chatThread : list) {
                    PlayList playList = resp.playlistInThreadList.get(chatThread.threadId);
                    if (playList != null) {
                        HashMap map = this.this$0.playListMap;
                        String str = chatThread.threadId;
                        Intrinsics.checkExpressionValueIsNotNull(str, "chat.threadId");
                        map.put(str, playList);
                    } else {
                        this.this$0.playListMap.remove(chatThread.threadId);
                    }
                }
            }
            if (resp.userInfoInThread != null) {
                this.this$0.userInfoMap.putAll(resp.userInfoInThread);
            }
            if (resp.communityInfoMapping != null) {
                this.this$0.communityMapping.putAll(resp.communityInfoMapping);
            }
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.module.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "module.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i | 1, pageRequestCallback);
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
    }

    /* compiled from: GeneralChatCardAdapter.kt */
    public final class ViewHolder extends BaseViewHolder {
        private final HangoutItem hantoutItem;
        final /* synthetic */ GeneralChatCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(GeneralChatCardAdapter generalChatCardAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = generalChatCardAdapter;
            this.hantoutItem = (HangoutItem) itemView.findViewById(R.id.chat_item);
        }

        public final HangoutItem getHantoutItem() {
            return this.hantoutItem;
        }

        public final void bindViewHolder(ChatThread chatThread) {
            if (chatThread == null) {
                return;
            }
            this.hantoutItem.setThread(chatThread, this.this$0.playListMap != null ? (PlayList) this.this$0.playListMap.get(chatThread.threadId) : null);
            if (this.this$0.userInfoMap != null && !this.this$0.userInfoMap.isEmpty()) {
                this.hantoutItem.setOnlineUserList(chatThread, (OnlineUserInfoInfo) this.this$0.userInfoMap.get(chatThread.id()));
            }
            if (this.this$0.configService.getCommunityId() == 0 && chatThread.publishToGlobal == 1) {
                this.hantoutItem.setCommunityInfo((Community) this.this$0.communityMapping.get(String.valueOf(chatThread.ndcId)));
            }
        }
    }

    /* compiled from: GeneralChatCardAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
