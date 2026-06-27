package com.narvii.monetization.bubble;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.thread.ThreadHelper;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ChatThread;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;

/* loaded from: classes3.dex */
public class PickChatThreadListFragment extends NVListFragment {
    private MyChatListAdapter chatListAdapter;
    private boolean isGlobal;
    protected ThreadHelper threadHelper;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.select_a_chat);
        this.threadHelper = new ThreadHelper(this);
        this.isGlobal = ((ConfigService) getService("config")).getCommunityId() == 0;
        setNVThemeValue(this.isGlobal ? 2 : 1);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        ImageView imageView;
        super.onActivityCreated(bundle);
        View customView = getActivity().getActionBar().getCustomView();
        if (customView == null || (imageView = (ImageView) customView.findViewById(R.id.actionbar_back)) == null) {
            return;
        }
        imageView.setImageResource(R.drawable.ic_back_cross);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        CreateNewChatAdapter createNewChatAdapter = new CreateNewChatAdapter(this);
        TitleAdapter titleAdapter = new TitleAdapter(this);
        this.chatListAdapter = new MyChatListAdapter(this);
        if (!this.isGlobal) {
            mergeAdapter.addAdapter(createNewChatAdapter);
            mergeAdapter.addAdapter(titleAdapter);
        }
        mergeAdapter.addAdapter(this.chatListAdapter);
        mergeAdapter.addAdapter(new EmptyAdapter(this));
        return mergeAdapter;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return this.isGlobal;
    }

    class EmptyAdapter extends AdriftAdapter {
        public EmptyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.my_chat_picker_empty_layout, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (PickChatThreadListFragment.this.chatListAdapter == null || !PickChatThreadListFragment.this.chatListAdapter.isListShown() || PickChatThreadListFragment.this.chatListAdapter.list() == null || PickChatThreadListFragment.this.chatListAdapter.list().size() != 0) ? 0 : 1;
        }
    }

    class CreateNewChatAdapter extends AdriftAdapter {
        public CreateNewChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_pick_create_chat, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            PickChatThreadListFragment.this.onCreateChatClicked();
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    protected void onCreateChatClicked() {
        this.threadHelper.showCreateChatDialog(null, null, getStringParam("stickerCollectionId"), null);
    }

    class TitleAdapter extends AdriftAdapter {
        public TitleAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_pick_chat_title, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (PickChatThreadListFragment.this.chatListAdapter == null || !PickChatThreadListFragment.this.chatListAdapter.isListShown() || PickChatThreadListFragment.this.chatListAdapter.getCount() <= 0) ? 0 : 1;
        }
    }

    class MyChatListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener {
        ChatHelper chatHelper;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        public MyChatListAdapter(NVContext nVContext) {
            super(nVContext);
            this.chatHelper = new ChatHelper(getContext());
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

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread?type=joined-me");
            builderPath.tag(Boolean.valueOf(z));
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return ThreadListItem.getViewType(this.chatHelper, (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ThreadListItem threadListItem;
            ChatThread chatThread = (ChatThread) obj;
            int itemType = getItemType(chatThread);
            if (itemType == 2) {
                threadListItem = (ThreadListItem) createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
            } else if (itemType == 0) {
                threadListItem = (ThreadListItem) createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
            } else {
                if (itemType != 1) {
                    return null;
                }
                threadListItem = (ThreadListItem) createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
            }
            threadListItem.setDarkTheme(PickChatThreadListFragment.this.isGlobal);
            threadListItem.setChatThread(chatThread);
            return threadListItem;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                PickChatThreadListFragment.this.onThreadPicked((ChatThread) obj);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    protected void onThreadPicked(ChatThread chatThread) {
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        intent.putExtra("Source", "My chats");
        intent.putExtra("stickerCollectionId", getStringParam("stickerCollectionId"));
        startActivity(intent);
        finish();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ((NVListView) getListView()).setOverscrollStretchHeader(color);
            ((NVListView) getListView()).setOverscrollStretchFooter(color);
            ((NVListView) getListView()).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ((NVListView) getListView()).setOverscrollStretchHeader(color2);
            ((NVListView) getListView()).setOverscrollStretchFooter(color2);
            ((NVListView) getListView()).setListContentBackgroundColor(-1);
        }
    }
}
