package com.narvii.chat.global;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.master.MasterHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalChatListAdapter.kt */
/* loaded from: classes2.dex */
public abstract class GlobalChatListAdapter extends NVPagedAdapter<ChatThread, CategoryThreadResponse> {
    private final GlobalChatHelper chatLaunchHelper;
    private final HashMap<String, Community> communityMap;
    private final ConfigService configService;
    private ContentLanguageService languageService;
    private final HashMap<String, PlayList> playlistMap;
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalChatListAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService<ContentLa…vice>(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
        this.communityMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.playlistMap = new HashMap<>();
        NVContext context = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        this.chatLaunchHelper = new GlobalChatHelper(context);
        Object service2 = ctx.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"config\")");
        this.configService = (ConfigService) service2;
        this.paginationType = 1;
    }

    protected final ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    protected final void setLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    protected final GlobalChatHelper getChatLaunchHelper() {
        return this.chatLaunchHelper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends CategoryThreadResponse> responseType() {
        return CategoryThreadResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        HangoutItem cell = (HangoutItem) createView(R.layout.chat_hangout_item, viewGroup, view);
        if (obj != null) {
            ChatThread chatThread = (ChatThread) obj;
            cell.setThread(chatThread, this.playlistMap.get(chatThread.id()));
            if (this.configService.getCommunityId() == 0 && chatThread.publishToGlobal == 1) {
                cell.setCommunityInfo(this.communityMap.get(String.valueOf(chatThread.ndcId)));
            }
            cell.setOnlineUserList(chatThread, this.userInfoMap.get(chatThread.id()));
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return cell;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, CategoryThreadResponse categoryThreadResponse, int i) {
        super.onPageResponse(apiRequest, (ApiRequest) categoryThreadResponse, i);
        if (categoryThreadResponse != null) {
            Map<String, Community> map = categoryThreadResponse.communityInfoMapping;
            if (map != null) {
                this.communityMap.putAll(map);
            }
            this.userInfoMap.putAll(categoryThreadResponse.getOnlineUserInfo());
            this.playlistMap.putAll(categoryThreadResponse.getPlayList());
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof ChatThread) {
            logClickEvent(obj, ActSemantic.checkDetail);
            ChatThread chatThread = (ChatThread) obj;
            Community community = this.communityMap.get(String.valueOf(chatThread.ndcId));
            if (NVApplication.CLIENT_TYPE == 101 && new PackageUtils(getContext()).getCommunityIdFromPackageName() != chatThread.ndcId) {
                handleOtherCommunityChat(chatThread, community);
                return true;
            }
            this.chatLaunchHelper.launchChatThread(chatThread, community);
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    private final void handleOtherCommunityChat(ChatThread chatThread, Community community) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (packageUtils.isMasterInstalled()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(chatThread.getDeepLink(packageUtils.getMasterScheme())));
                intent.setPackage(packageUtils.getMasterPackageName());
                intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                intent.putExtra("customFinishAnimIn", 0);
                intent.putExtra("customFinishAnimOut", 0);
                startActivity(intent);
                return;
            } catch (Exception e) {
                Log.e(e.getMessage());
                return;
            }
        }
        new MasterHelper(this).showDownloadMaterDialog(community != null ? community.link : null);
    }
}
