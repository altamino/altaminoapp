package com.narvii.chat.global;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.master.MasterHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class GlobalChatListAdapter extends NVPagedAdapter<ChatThread, CategoryThreadResponse> {

    @NotNull
    private final GlobalChatHelper chatLaunchHelper;

    @NotNull
    private final HashMap<String, Community> communityMap;

    @NotNull
    private final ConfigService configService;

    @NotNull
    private ContentLanguageService languageService;

    @NotNull
    private final HashMap<String, PlayList> playlistMap;

    @NotNull
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    @NotNull
    protected final GlobalChatHelper getChatLaunchHelper() {
        return this.chatLaunchHelper;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(@Nullable Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    @NotNull
    protected final ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<? extends CategoryThreadResponse> responseType() {
        return CategoryThreadResponse.class;
    }

    protected final void setLanguageService(@NotNull ContentLanguageService contentLanguageService) {
        t.j(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalChatListAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        Object service = ctx.getService("content_language");
        t.i(service, "getService(...)");
        this.languageService = (ContentLanguageService) service;
        this.communityMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.playlistMap = new HashMap<>();
        NVContext context = this.context;
        t.i(context, "context");
        this.chatLaunchHelper = new GlobalChatHelper(context);
        Object service2 = ctx.getService("config");
        t.i(service2, "getService(...)");
        this.configService = (ConfigService) service2;
        this.paginationType = 1;
    }

    private final void handleOtherCommunityChat(ChatThread chatThread, Community community) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (!packageUtils.isMasterInstalled()) {
            new MasterHelper(this).showDownloadMaterDialog(community != null ? community.link : null);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(chatThread.getDeepLink(packageUtils.getMasterScheme())));
            intent.setPackage(packageUtils.getMasterPackageName());
            intent.putExtra(ForwardActivity.CLEAR_TASK, true);
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("customFinishAnimOut", 0);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (obj instanceof ChatThread) {
            logClickEvent(obj, ActSemantic.checkDetail);
            ChatThread chatThread = (ChatThread) obj;
            this.chatLaunchHelper.launchChatThread(chatThread, this.communityMap.get(String.valueOf(chatThread.ndcId)));
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable CategoryThreadResponse categoryThreadResponse, int i10) {
        super.onPageResponse(apiRequest, categoryThreadResponse, i10);
        if (categoryThreadResponse != null) {
            Map<String, Community> map = categoryThreadResponse.communityInfoMapping;
            if (map != null) {
                t.g(map);
                this.communityMap.putAll(categoryThreadResponse.communityInfoMapping);
            }
            this.userInfoMap.putAll(categoryThreadResponse.getOnlineUserInfo());
            this.playlistMap.putAll(categoryThreadResponse.getPlayList());
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
        HangoutItem hangoutItem = (HangoutItem) createView(R.layout.chat_hangout_item, viewGroup, view);
        t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
        ChatThread chatThread = (ChatThread) obj;
        hangoutItem.setThread(chatThread, this.playlistMap.get(chatThread.id()));
        if (this.configService.getCommunityId() == 0 && chatThread.publishToGlobal == 1) {
            hangoutItem.setCommunityInfo(this.communityMap.get(String.valueOf(chatThread.ndcId)));
        }
        hangoutItem.setOnlineUserList(chatThread, this.userInfoMap.get(chatThread.id()));
        t.g(hangoutItem);
        return hangoutItem;
    }
}
