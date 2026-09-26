package com.narvii.topic;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import e8.l;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class TopicRelatedChatListFragment extends NVListFragment {

    public final class ChatListAdapter extends HangoutListAdapter {

        @NotNull
        private final l<Boolean, l0> showStoreBadgeCallback;
        final /* synthetic */ TopicRelatedChatListFragment this$0;

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatList";
        }

        @NotNull
        public final l<Boolean, l0> getShowStoreBadgeCallback() {
            return this.showStoreBadgeCallback;
        }

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            Object obj = null;
            if ((notification != null ? notification.obj : null) instanceof ChatThread) {
                Object obj2 = notification.obj;
                t.h(obj2, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                if (((ChatThread) obj2).type == 2 && notification.action == "new") {
                    Object obj3 = notification.obj;
                    t.h(obj3, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    int intParam = this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
                    List<StoryTopic> userAddedTopicList = ((ChatThread) obj3).userAddedTopicList;
                    t.i(userAddedTopicList, "userAddedTopicList");
                    for (Object obj4 : userAddedTopicList) {
                        if (((StoryTopic) obj4).topicId == intParam) {
                            obj = obj4;
                            break;
                        }
                    }
                    if (((StoryTopic) obj) != null) {
                        super.onNotification(notification);
                        return;
                    }
                    return;
                }
            }
            super.onNotification(notification);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public ChatListAdapter(@NotNull TopicRelatedChatListFragment topicRelatedChatListFragment, @NotNull NVContext ctx, l<? super Boolean, l0> showStoreBadgeCallback) {
            super(ctx);
            t.j(ctx, "ctx");
            t.j(showStoreBadgeCallback, "showStoreBadgeCallback");
            this.this$0 = topicRelatedChatListFragment;
            this.showStoreBadgeCallback = showStoreBadgeCallback;
            setDarkTheme(true);
            this.paginationType = 1;
        }

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            logClickEvent(obj, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
            ChatThread chatThread = (ChatThread) obj;
            intent.putExtra("id", chatThread.threadId);
            intent.putExtra("thread", JacksonUtils.writeAsString(obj));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            intent.putExtra("__communityId", chatThread.ndcId);
            Map<String, Community> map = this.communityMapping;
            if (map != null && map.containsKey(String.valueOf(chatThread.ndcId))) {
                intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(this.communityMapping.get(String.valueOf(chatThread.ndcId))));
            }
            intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, ((ConfigService) getService("config")).getCommunityId() == 0);
            Intent intent2 = new Intent("openHangout");
            intent2.putExtra("intent", intent);
            ensureLogin(intent2);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable ThreadListResponse threadListResponse, int i10) {
            super.onPageResponse(apiRequest, threadListResponse, i10);
            l<Boolean, l0> lVar = this.showStoreBadgeCallback;
            Boolean bool = threadListResponse != null ? threadListResponse.showStoreBadge : null;
            lVar.invoke(Boolean.valueOf(bool == null ? false : bool.booleanValue()));
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest apiRequestBuild = ApiRequest.builder().global().path("topic/" + this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/chat").build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "topic_related_chat_list";
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        ChatListAdapter chatListAdapter = new ChatListAdapter(this, this, new TopicRelatedChatListFragment$createAdapter$chatListAdapter$1(this));
        int iDpToPx = (int) Utils.dpToPx(getContext(), 15.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        divideColumnAdapter.setAdapter(chatListAdapter, 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setOverScrollMode(2);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.layout_topic_empty);
    }
}
