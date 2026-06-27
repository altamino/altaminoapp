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
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: MyThreadListAdapter.kt */
/* loaded from: classes2.dex */
public abstract class MyThreadListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> {
    public static final Companion Companion = new Companion(null);
    public static final int SEARCH_ACTION_CLICK = 1;
    public static final int SEARCH_ACTION_NONE = 0;
    private ChatHelper chatHelper;
    private ChatService chatService;
    private final NVContext ctx;

    public HashMap<String, Community> communityMap() {
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
        return list;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "MyChats";
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 3;
    }

    public String getSearchKey() {
        return "";
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isDarkNVTheme() {
        return true;
    }

    public boolean showHighLight() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyThreadListAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.chatHelper = new ChatHelper(context);
        Object service = this.ctx.getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"chat\")");
        this.chatService = (ChatService) service;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: MyThreadListAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final ChatService getChatService() {
        return this.chatService;
    }

    public final void setChatService(ChatService chatService) {
        Intrinsics.checkParameterIsNotNull(chatService, "<set-?>");
        this.chatService = chatService;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ThreadListResponse> responseType() {
        return ThreadListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
        }
        return ThreadListItem.getViewType(this.chatHelper, (ChatThread) obj);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        Community community;
        if (obj != null) {
            ChatThread chatThread = (ChatThread) obj;
            ThreadListItem threadListItemCreateThreadItem = createThreadItem(getItemType(chatThread), view, viewGroup);
            threadListItemCreateThreadItem.isDarkTheme = isDarkNVTheme();
            threadListItemCreateThreadItem.setChatThread(chatThread, this.chatService.getDraft(chatThread.threadId));
            View viewFindViewById = threadListItemCreateThreadItem.findViewById(R.id.chat_thread_unread);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "cell.findViewById<View>(R.id.chat_thread_unread)");
            viewFindViewById.setVisibility(4);
            View viewFindViewById2 = threadListItemCreateThreadItem.findViewById(R.id.datetime);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "cell.findViewById<TextView>(R.id.datetime)");
            ((TextView) viewFindViewById2).setVisibility(4);
            View viewFindViewById3 = threadListItemCreateThreadItem.findViewById(R.id.community_info);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setVisibility(chatThread.ndcId == 0 ? 8 : 0);
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
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter adapter, int i, Object item, View cell, View view) {
        Community community;
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        Intrinsics.checkParameterIsNotNull(item, "item");
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        if (item instanceof ChatThread) {
            logClickEvent(item, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
            ChatThread chatThread = (ChatThread) item;
            intent.putExtra("id", chatThread.threadId);
            intent.putExtra("thread", JacksonUtils.writeAsString(item));
            HashMap<String, Community> mapCommunityMap = communityMap();
            if (mapCommunityMap != null && (community = mapCommunityMap.get(String.valueOf(chatThread.ndcId))) != null) {
                intent.putExtra("__communityId", community.id);
            }
            startActivity(intent);
            return true;
        }
        return super.onItemClick(adapter, i, item, cell, view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i) {
        HashMap<String, Community> mapCommunityMap;
        super.onPageResponse(apiRequest, (ApiRequest) threadListResponse, i);
        if (threadListResponse == null || (mapCommunityMap = communityMap()) == null) {
            return;
        }
        mapCommunityMap.putAll(threadListResponse.communityInfoMapping);
    }

    public ThreadListItem createThreadItem(int i, View view, ViewGroup viewGroup) {
        if (i == 2) {
            View viewCreateView = createView(R.layout.chat_thread_hangout_global_search_item, viewGroup, view, "hangout");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.chat…, convertView, \"hangout\")");
            return (ThreadListItem) viewCreateView;
        }
        if (i == 0) {
            View viewCreateView2 = createView(R.layout.chat_thread_user_global_search_item, viewGroup, view, "plain");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView2, "createView(R.layout.chat…nt, convertView, \"plain\")");
            return (ThreadListItem) viewCreateView2;
        }
        View viewCreateView3 = createView(R.layout.chat_thread_group_global_search_item, viewGroup, view, "group");
        Intrinsics.checkExpressionValueIsNotNull(viewCreateView3, "createView(R.layout.chat…nt, convertView, \"group\")");
        return (ThreadListItem) viewCreateView3;
    }

    public static /* synthetic */ void highLightSearchKey$default(MyThreadListAdapter myThreadListAdapter, ThreadListItem threadListItem, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: highLightSearchKey");
        }
        if ((i & 4) != 0) {
            str2 = "#4A90E2";
        }
        myThreadListAdapter.highLightSearchKey(threadListItem, str, str2);
    }

    public void highLightSearchKey(ThreadListItem view, String searchKey, String highLightColor) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(searchKey, "searchKey");
        Intrinsics.checkParameterIsNotNull(highLightColor, "highLightColor");
        if ((searchKey.length() == 0) || !showHighLight()) {
            return;
        }
        TextView textView = view.title;
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.title");
        SpannableString spannableString = new SpannableString(textView.getText());
        TextView textView2 = view.title;
        Intrinsics.checkExpressionValueIsNotNull(textView2, "view.title");
        Iterator it = findAllMatches$default(this, textView2.getText().toString(), searchKey, 0, null, 12, null).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(highLightColor)), iIntValue, searchKey.length() + iIntValue, 18);
        }
        TextView textView3 = view.title;
        Intrinsics.checkExpressionValueIsNotNull(textView3, "view.title");
        textView3.setText(spannableString);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List findAllMatches$default(MyThreadListAdapter myThreadListAdapter, String str, String str2, int i, List list, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findAllMatches");
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            list = new ArrayList();
        }
        return myThreadListAdapter.findAllMatches(str, str2, i, list);
    }

    private final List<Integer> findAllMatches(String str, String str2, int i, List<Integer> list) {
        int iIndexOf = StringsKt__StringsKt.indexOf((CharSequence) str, str2, i, true);
        if (iIndexOf >= 0) {
            list.add(Integer.valueOf(iIndexOf));
            findAllMatches(str, str2, i + 1, list);
        }
        return list;
    }
}
