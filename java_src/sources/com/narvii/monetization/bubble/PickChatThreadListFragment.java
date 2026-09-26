package com.narvii.monetization.bubble;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.thread.ThreadHelper;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class PickChatThreadListFragment extends NVListFragment {
    private MyChatListAdapter chatListAdapter;
    private boolean isGlobal;
    protected ThreadHelper threadHelper;

    class CreateNewChatAdapter extends AdriftAdapter {
        public CreateNewChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            PickChatThreadListFragment.this.onCreateChatClicked();
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_pick_create_chat, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class EmptyAdapter extends AdriftAdapter {
        public EmptyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (PickChatThreadListFragment.this.chatListAdapter == null || !PickChatThreadListFragment.this.chatListAdapter.isListShown() || PickChatThreadListFragment.this.chatListAdapter.list() == null || PickChatThreadListFragment.this.chatListAdapter.list().size() != 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.my_chat_picker_empty_layout, viewGroup, view);
        }
    }

    class MyChatListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener {
        ChatHelper chatHelper;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        public MyChatListAdapter(NVContext nVContext) {
            super(nVContext);
            this.chatHelper = new ChatHelper(getContext());
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                PickChatThreadListFragment.this.onThreadPicked((ChatThread) obj);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread?type=joined-me");
            builderPath.tag(Boolean.valueOf(z6));
            return builderPath.build();
        }
    }

    class TitleAdapter extends AdriftAdapter {
        public TitleAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (PickChatThreadListFragment.this.chatListAdapter == null || !PickChatThreadListFragment.this.chatListAdapter.isListShown() || PickChatThreadListFragment.this.chatListAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_pick_chat_title, viewGroup, view);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return this.isGlobal;
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

    protected void onCreateChatClicked() {
        this.threadHelper.showCreateChatDialog(null, null, getStringParam("stickerCollectionId"), null);
    }

    protected void onThreadPicked(ChatThread chatThread) {
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My chats");
        intent.putExtra("stickerCollectionId", getStringParam("stickerCollectionId"));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        finish();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        ImageView imageView;
        super.onActivityCreated(bundle);
        View customView = getActivity().getActionBar().getCustomView();
        if (customView != null && (imageView = (ImageView) customView.findViewById(R.id.actionbar_back)) != null) {
            imageView.setImageResource(R.drawable.ic_back_cross);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        setTitle(R.string.select_a_chat);
        this.threadHelper = new ThreadHelper(this);
        int i10 = 1;
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isGlobal = z6;
        if (z6) {
            i10 = 2;
        }
        setNVThemeValue(i10);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ((NVListView) getListView()).setOverscrollStretchHeader(color);
            ((NVListView) getListView()).setOverscrollStretchFooter(color);
            ((NVListView) getListView()).setListContentBackgroundColor(0);
            return;
        }
        if (i10 == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ((NVListView) getListView()).setOverscrollStretchHeader(color2);
            ((NVListView) getListView()).setOverscrollStretchFooter(color2);
            ((NVListView) getListView()).setListContentBackgroundColor(-1);
        }
    }
}
