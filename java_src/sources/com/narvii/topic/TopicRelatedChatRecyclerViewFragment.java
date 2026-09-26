package com.narvii.topic;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
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
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TopicRelatedChatRecyclerViewFragment extends NVRecyclerViewFragment {

    private final class ChatListAdapter extends GeneralChatCardAdapter {
        final /* synthetic */ TopicRelatedChatRecyclerViewFragment this$0;

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatList";
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            Object obj = null;
            if ((notification != null ? notification.obj : null) instanceof ChatThread) {
                Object obj2 = notification.obj;
                t.h(obj2, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                if (((ChatThread) obj2).type == 2 && t.e(notification.action, "new")) {
                    Object obj3 = notification.obj;
                    t.h(obj3, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    ChatThread chatThread = (ChatThread) obj3;
                    int intParam = this.this$0.getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
                    List<StoryTopic> userAddedTopicList = chatThread.userAddedTopicList;
                    t.i(userAddedTopicList, "userAddedTopicList");
                    for (Object obj4 : userAddedTopicList) {
                        if (((StoryTopic) obj4).topicId == intParam) {
                            obj = obj4;
                            break;
                        }
                    }
                    if (((StoryTopic) obj) != null) {
                        editDataSource("new", chatThread);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatListAdapter(@NotNull TopicRelatedChatRecyclerViewFragment topicRelatedChatRecyclerViewFragment, @NotNull NVContext ctx, ContentModule module) {
            super(ctx, module, null);
            t.j(ctx, "ctx");
            t.j(module, "module");
            this.this$0 = topicRelatedChatRecyclerViewFragment;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "topic_chats";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, 0, 0);
        ContentModule contentModule = new ContentModule();
        contentModule.dataUrl = "topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/chat";
        recyclerViewColumnAdapter.setAdapter(new ChatListAdapter(this, this, contentModule), 2);
        return recyclerViewColumnAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
    }
}
