package com.narvii.topic;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.adapter.GeneralChatCardAdapter;
import com.narvii.model.ChatThread;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicRelatedChatRecyclerViewFragment.kt */
/* loaded from: classes3.dex */
public class TopicRelatedChatRecyclerViewFragment extends NVRecyclerViewFragment {
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

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, 0, 0);
        ContentModule contentModule = new ContentModule();
        contentModule.dataUrl = "topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/chat";
        recyclerViewColumnAdapter.setAdapter(new ChatListAdapter(this, this, contentModule), 2);
        return recyclerViewColumnAdapter;
    }

    /* compiled from: TopicRelatedChatRecyclerViewFragment.kt */
    private final class ChatListAdapter extends GeneralChatCardAdapter {
        final /* synthetic */ TopicRelatedChatRecyclerViewFragment this$0;

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatList";
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatListAdapter(TopicRelatedChatRecyclerViewFragment topicRelatedChatRecyclerViewFragment, NVContext ctx, ContentModule module) {
            super(ctx, module, null);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(module, "module");
            this.this$0 = topicRelatedChatRecyclerViewFragment;
        }

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = null;
            if ((notification != null ? notification.obj : null) instanceof ChatThread) {
                Object obj2 = notification.obj;
                if (obj2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                if (((ChatThread) obj2).type == 2 && Intrinsics.areEqual(notification.action, "new")) {
                    Object obj3 = notification.obj;
                    if (obj3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    ChatThread chatThread = (ChatThread) obj3;
                    int intParam = this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
                    List<StoryTopic> list = chatThread.userAddedTopicList;
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
                        editDataSource("new", chatThread);
                    }
                }
            }
        }
    }
}
