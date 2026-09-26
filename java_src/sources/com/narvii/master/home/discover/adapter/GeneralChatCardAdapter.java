package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class GeneralChatCardAdapter extends PagingRecyclerViewAdapter<ChatThread, ThreadListResponse> implements NotificationListener, ModuleItemCountHost {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_CHAT_SIZE = 4;
    private int allItemCount;

    @NotNull
    private final HashMap<String, Community> communityMapping;

    @NotNull
    private final ConfigService configService;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private final ModuleDisplayConfig displayConfig;

    @NotNull
    private final ContentModule module;

    @NotNull
    private final HashMap<String, PlayList> playListMap;

    @NotNull
    private String source;

    @NotNull
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class DataSource extends PageDataSource<ChatThread, ThreadListResponse> {
        final /* synthetic */ GeneralChatCardAdapter this$0;

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataSource(@NotNull GeneralChatCardAdapter generalChatCardAdapter, @NotNull NVContext nvContext, PagingConfiguration pagingConfiguration) {
            super(nvContext, null, pagingConfiguration);
            kotlin.jvm.internal.t.j(nvContext, "nvContext");
            kotlin.jvm.internal.t.j(pagingConfiguration, "pagingConfiguration");
            this.this$0 = generalChatCardAdapter;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder requestFromModule = this.this$0.getModule().getRequestFromModule();
            if (requestFromModule != null) {
                return requestFromModule.build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(@NotNull ApiRequest req, @NotNull ThreadListResponse resp, int i10) {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            this.this$0.allItemCount = resp.allItemCount;
            List<ChatThread> list = resp.threadList;
            if (list != null && resp.playlistInThreadList != null) {
                for (ChatThread chatThread : list) {
                    PlayList playList = resp.playlistInThreadList.get(chatThread.threadId);
                    if (playList != null) {
                        HashMap map = this.this$0.playListMap;
                        String threadId = chatThread.threadId;
                        kotlin.jvm.internal.t.i(threadId, "threadId");
                        map.put(threadId, playList);
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

    public final class ViewHolder extends BaseViewHolder {
        private final HangoutItem hantoutItem;
        final /* synthetic */ GeneralChatCardAdapter this$0;

        public final HangoutItem getHantoutItem() {
            return this.hantoutItem;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull GeneralChatCardAdapter generalChatCardAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = generalChatCardAdapter;
            this.hantoutItem = (HangoutItem) itemView.findViewById(R.id.chat_item);
        }

        public final void bindViewHolder(@Nullable ChatThread chatThread) {
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

    public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return this.allItemCount;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    @NotNull
    public final ContentModule getModule() {
        return this.module;
    }

    @NotNull
    public final String getSource() {
        return this.source;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
    }

    public boolean restrictSize() {
        return true;
    }

    public final void setSource(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<set-?>");
        this.source = str;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralChatCardAdapter(@NotNull NVContext ctx, @NotNull ContentModule module, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.displayConfig = moduleDisplayConfig;
        this.source = "Public chat";
        this.playListMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.communityMapping = new HashMap<>();
        Object service = getService("config");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.configService = (ConfigService) service;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    public PageDataSource<ChatThread, ThreadListResponse> createPageDataSource(@Nullable NVContext nVContext) {
        PagingConfiguration pagingConfiguration = new PagingConfiguration(25, 3, 0);
        kotlin.jvm.internal.t.g(nVContext);
        return new DataSource(this, nVContext, pagingConfiguration);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.module.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).bindViewHolder(getItem(i10));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.chat_hangout_item, parent, false);
        kotlin.jvm.internal.t.g(viewInflate);
        return new ViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (!(obj instanceof ChatThread)) {
            return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
        }
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
            return true;
        }
        logClickEvent(obj, ActSemantic.checkDetail);
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        ChatThread chatThread = (ChatThread) obj;
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(obj));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        intent.putExtra("__communityId", chatThread.ndcId);
        Intent intent2 = new Intent("openHangout");
        intent2.putExtra("intent", intent);
        ensureLogin(intent2, null);
        return true;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10 | 1, pageRequestCallback);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (restrictSize()) {
            return Math.min(super.getItemCount(), 4);
        }
        return super.getItemCount();
    }
}
