package com.narvii.monetization.bubble.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.SimpleViewAdapter;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleListResponse;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.monetization.MembershipBasedListFragment;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.BubbleListAdapter;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.notification.Notification;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleManageListFragment extends MembershipBasedListFragment {
    private static final int REQ_CODE = 101;
    BubbleHelper bubbleHelper;
    MyBubbleListAdapter bubbleListAdapter;
    String curSelectedBubbleId;
    String threadId;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.bubble.manage.BubbleManageListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyBubbleListAdapter myBubbleListAdapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (myBubbleListAdapter = BubbleManageListFragment.this.bubbleListAdapter) == null) {
                return;
            }
            myBubbleListAdapter.notifyDataSetChanged();
        }
    };
    View.OnClickListener actionBarRightListener = new View.OnClickListener() { // from class: com.narvii.monetization.bubble.manage.BubbleManageListFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = FragmentWrapperActivity.intent(BubbleSortListFragment.class);
            intent.putExtra("curSelectedBubbleId", BubbleManageListFragment.this.curSelectedBubbleId);
            intent.putExtra("threadId", BubbleManageListFragment.this.threadId);
            BubbleManageListFragment.this.startActivityForResult(intent, 101);
        }
    };

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.monetization.MembershipBasedListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_bubbles);
        this.threadId = getStringParam("threadId");
        this.bubbleHelper = new BubbleHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        updateActionBarRightButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarRightButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.removeRightView();
            MyBubbleListAdapter myBubbleListAdapter = this.bubbleListAdapter;
            if (myBubbleListAdapter == null || myBubbleListAdapter.list() == null || this.bubbleListAdapter.list().size() == 1) {
                nVActivity.setActionBarRightView(R.string.manage, -2130706433, false, (View.OnClickListener) null);
            } else {
                nVActivity.setActionBarRightView(R.string.manage, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, this.actionBarRightListener);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        MyBubbleListAdapter myBubbleListAdapter;
        if (i == 101 && i2 == -1 && (myBubbleListAdapter = this.bubbleListAdapter) != null) {
            myBubbleListAdapter.resetList();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.monetization.MembershipBasedListFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_manage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.monetization.bubble.manage.BubbleManageListFragment.3
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.left_white_divider;
            }
        };
        this.bubbleListAdapter = new MyBubbleListAdapter();
        dividerAdapter.setAdapter(this.bubbleListAdapter);
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        mergeAdapter.addAdapter(new SimpleViewAdapter(this) { // from class: com.narvii.monetization.bubble.manage.BubbleManageListFragment.4
            @Override // com.narvii.list.SimpleViewAdapter
            protected int getLayoutId() {
                return R.layout.item_more_bubble_entry;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("scrollSectionGroupId", StoreSection.GROUP_TYPE_CHAT_BUBBLE);
                intent.putExtra("Source", "More Chat Bubbles");
                startActivity(intent);
                return true;
            }
        });
        return mergeAdapter;
    }

    class MyBubbleListAdapter extends BubbleListAdapter {
        public List<ChatBubble> l;

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected int layoutId() {
            return R.layout.item_bubble_manage;
        }

        public MyBubbleListAdapter() {
            super(BubbleManageListFragment.this);
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected String threadId() {
            return BubbleManageListFragment.this.threadId;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ChatBubble> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else {
                this.l = new ArrayList();
                ChatBubble chatBubble = new ChatBubble();
                chatBubble.type = -1;
                chatBubble.name = BubbleManageListFragment.this.getString(R.string.default_bubble);
                this.l.add(chatBubble);
                this.l.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (rawList() != null && rawList().size() > 0) || this._isEnd;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ChatBubble)) {
                return null;
            }
            ChatBubble chatBubble = (ChatBubble) obj;
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.edit);
            viewFindViewById.setVisibility(chatBubble.type == 1 ? 0 : 4);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            return itemView;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatBubble) {
                ChatBubble chatBubble = (ChatBubble) obj;
                if (view2 != null && view2.getId() == R.id.edit) {
                    BubbleManageListFragment.this.bubbleHelper.onClickEditBubbleButton(chatBubble);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ChatBubbleListResponse chatBubbleListResponse, int i) {
            super.onPageResponse(apiRequest, chatBubbleListResponse, i);
            BubbleManageListFragment.this.curSelectedBubbleId = chatBubbleListResponse.currentSelectedBubbleId;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected void onFirstPageResponse() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            super.onFirstPageResponse();
            BubbleManageListFragment.this.updateActionBarRightButton();
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof ChatBubble) {
                editList(notification.m51clone(), false);
            } else if (obj instanceof ChatBubbleNotificationWrapper) {
                new BubbleHelper(this).handleBubbleWrapNotification(notification, this);
            }
        }
    }
}
