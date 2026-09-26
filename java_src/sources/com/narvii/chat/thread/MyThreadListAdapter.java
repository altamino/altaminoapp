package com.narvii.chat.thread;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class MyThreadListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SEARCH_ACTION_CLICK = 1;
    public static final int SEARCH_ACTION_NONE = 0;

    @NotNull
    private ChatHelper chatHelper;

    @NotNull
    private ChatService chatService;

    @NotNull
    private final NVContext ctx;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final List<Integer> findAllMatches(String str, String str2, int i10, List<Integer> list) {
        int iY = u.Y(str, str2, i10, true);
        if (iY >= 0) {
            list.add(Integer.valueOf(iY));
            findAllMatches(str, str2, i10 + 1, list);
        }
        return list;
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public HashMap<String, Community> communityMap() {
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    @Nullable
    protected ApiRequest createRequest(boolean z6) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    @Nullable
    protected List<ChatThread> filterResponseList(@Nullable List<ChatThread> list, int i10) {
        return list;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        return "MyChats";
    }

    @NotNull
    public final ChatService getChatService() {
        return this.chatService;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 3;
    }

    @NotNull
    public String getSearchKey() {
        return "";
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isDarkNVTheme() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<? extends ThreadListResponse> responseType() {
        return ThreadListResponse.class;
    }

    public final void setChatService(@NotNull ChatService chatService) {
        t.j(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public boolean showHighLight() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyThreadListAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.chatHelper = new ChatHelper(context);
        Object service = ctx.getService("chat");
        t.i(service, "getService(...)");
        this.chatService = (ChatService) service;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List findAllMatches$default(MyThreadListAdapter myThreadListAdapter, String str, String str2, int i10, List list, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findAllMatches");
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        if ((i11 & 8) != 0) {
            list = new ArrayList();
        }
        return myThreadListAdapter.findAllMatches(str, str2, i10, list);
    }

    public static /* synthetic */ void highLightSearchKey$default(MyThreadListAdapter myThreadListAdapter, ThreadListItem threadListItem, String str, String str2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: highLightSearchKey");
        }
        if ((i10 & 4) != 0) {
            str2 = "#4A90E2";
        }
        myThreadListAdapter.highLightSearchKey(threadListItem, str, str2);
    }

    @NotNull
    public ThreadListItem createThreadItem(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        if (i10 == 0) {
            View viewCreateView = createView(R.layout.chat_thread_user_global_search_item, viewGroup, view, "plain");
            t.i(viewCreateView, "createView(...)");
            return (ThreadListItem) viewCreateView;
        }
        if (i10 != 2) {
            View viewCreateView2 = createView(R.layout.chat_thread_group_global_search_item, viewGroup, view, "group");
            t.i(viewCreateView2, "createView(...)");
            return (ThreadListItem) viewCreateView2;
        }
        View viewCreateView3 = createView(R.layout.chat_thread_hangout_global_search_item, viewGroup, view, "hangout");
        t.i(viewCreateView3, "createView(...)");
        return (ThreadListItem) viewCreateView3;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(@Nullable Object obj) {
        t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
        return ThreadListItem.getViewType(this.chatHelper, (ChatThread) obj);
    }

    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
        Community community;
        t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
        ChatThread chatThread = (ChatThread) obj;
        ThreadListItem threadListItemCreateThreadItem = createThreadItem(getItemType(chatThread), view, viewGroup);
        threadListItemCreateThreadItem.isDarkTheme = isDarkNVTheme();
        threadListItemCreateThreadItem.setChatThread(chatThread, this.chatService.getDraft(chatThread.threadId));
        threadListItemCreateThreadItem.findViewById(R.id.chat_thread_unread).setVisibility(4);
        ((TextView) threadListItemCreateThreadItem.findViewById(R.id.datetime)).setVisibility(4);
        View viewFindViewById = threadListItemCreateThreadItem.findViewById(R.id.community_info);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(chatThread.ndcId == 0 ? 8 : 0);
        }
        HashMap<String, Community> mapCommunityMap = communityMap();
        if (mapCommunityMap != null && (community = mapCommunityMap.get(String.valueOf(chatThread.ndcId))) != null) {
            NVImageView nVImageView = (NVImageView) threadListItemCreateThreadItem.findViewById(R.id.community_icon);
            if (nVImageView != null) {
                nVImageView.setImageUrl(community.icon);
            }
            TextView textView = (TextView) threadListItemCreateThreadItem.findViewById(R.id.community_name);
            if (textView != null) {
                textView.setText(community.name);
            }
        }
        highLightSearchKey$default(this, threadListItemCreateThreadItem, getSearchKey(), null, 4, null);
        return threadListItemCreateThreadItem;
    }

    public void highLightSearchKey(@NotNull ThreadListItem view, @NotNull String searchKey, @NotNull String highLightColor) {
        t.j(view, "view");
        t.j(searchKey, "searchKey");
        t.j(highLightColor, "highLightColor");
        if (searchKey.length() != 0 && showHighLight()) {
            SpannableString spannableString = new SpannableString(view.title.getText());
            Iterator it = findAllMatches$default(this, view.title.getText().toString(), searchKey, 0, null, 12, null).iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(highLightColor)), iIntValue, searchKey.length() + iIntValue, 18);
            }
            view.title.setText(spannableString);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(@NotNull ListAdapter adapter, int i10, @NotNull Object item, @NotNull View cell, @Nullable View view) {
        Community community;
        t.j(adapter, "adapter");
        t.j(item, "item");
        t.j(cell, "cell");
        if (!(item instanceof ChatThread)) {
            return super.onItemClick(adapter, i10, item, cell, view);
        }
        logClickEvent(item, ActSemantic.checkDetail);
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        ChatThread chatThread = (ChatThread) item;
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(item));
        HashMap<String, Community> mapCommunityMap = communityMap();
        if (mapCommunityMap != null && (community = mapCommunityMap.get(String.valueOf(chatThread.ndcId))) != null) {
            intent.putExtra("__communityId", community.id);
        }
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable ThreadListResponse threadListResponse, int i10) {
        HashMap<String, Community> mapCommunityMap;
        super.onPageResponse(apiRequest, threadListResponse, i10);
        if (threadListResponse == null || (mapCommunityMap = communityMap()) == null) {
            return;
        }
        mapCommunityMap.putAll(threadListResponse.communityInfoMapping);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
    }
}
