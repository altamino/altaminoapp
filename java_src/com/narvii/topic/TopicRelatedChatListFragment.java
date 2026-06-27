package com.narvii.topic;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.chat.rtc.RtcService;
import com.narvii.config.ConfigService;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicRelatedChatListFragment.kt */
/* loaded from: classes3.dex */
public final class TopicRelatedChatListFragment extends NVListFragment {
    private HashMap _$_findViewCache;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopicChats";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setOverScrollMode(2);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ChatListAdapter chatListAdapter = new ChatListAdapter(this, this);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 15.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        divideColumnAdapter.setAdapter(chatListAdapter, 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.layout_topic_empty);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* compiled from: TopicRelatedChatListFragment.kt */
    public final class ChatListAdapter extends HangoutListAdapter {
        final /* synthetic */ TopicRelatedChatListFragment this$0;

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatListAdapter(TopicRelatedChatListFragment topicRelatedChatListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = topicRelatedChatListFragment;
            setDarkTheme(true);
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = ApiRequest.builder().global().path("topic/" + this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/chat").build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = null;
            if ((notification != null ? notification.obj : null) instanceof ChatThread) {
                Object obj2 = notification.obj;
                if (obj2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                if (((ChatThread) obj2).type == 2 && notification.action == "new") {
                    if (obj2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    int intParam = this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
                    List<StoryTopic> list = ((ChatThread) obj2).userAddedTopicList;
                    Intrinsics.checkExpressionValueIsNotNull(list, "chatThread.userAddedTopicList");
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (((StoryTopic) next).topicId == intParam) {
                            obj = next;
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

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                logClickEvent(obj, ActSemantic.checkDetail);
                Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                ChatThread chatThread = (ChatThread) obj;
                intent.putExtra("id", chatThread.threadId);
                intent.putExtra("thread", JacksonUtils.writeAsString(obj));
                intent.putExtra("Source", this.source);
                intent.putExtra("__communityId", chatThread.ndcId);
                Map<String, Community> map = this.communityMapping;
                if (map != null && map.containsKey(String.valueOf(chatThread.ndcId))) {
                    intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(this.communityMapping.get(String.valueOf(chatThread.ndcId))));
                }
                ConfigService configService = (ConfigService) getService("config");
                Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
                intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, configService.getCommunityId() == 0);
                Intent intent2 = new Intent("openHangout");
                intent2.putExtra("intent", intent);
                ensureLogin(intent2);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
