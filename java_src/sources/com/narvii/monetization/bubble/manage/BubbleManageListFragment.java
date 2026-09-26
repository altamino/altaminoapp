package com.narvii.monetization.bubble.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
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
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = FragmentWrapperActivity.intent(BubbleSortListFragment.class);
            intent.putExtra("curSelectedBubbleId", BubbleManageListFragment.this.curSelectedBubbleId);
            intent.putExtra("threadId", BubbleManageListFragment.this.threadId);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(BubbleManageListFragment.this, intent, 101);
        }
    };

    class MyBubbleListAdapter extends BubbleListAdapter {
        public List<ChatBubble> l;

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected int layoutId() {
            return R.layout.item_bubble_manage;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        public MyBubbleListAdapter() {
            super(BubbleManageListFragment.this);
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof ChatBubble) {
                ChatBubble chatBubble = (ChatBubble) obj;
                if (view2 != null && view2.getId() == R.id.edit) {
                    BubbleManageListFragment.this.bubbleHelper.onClickEditBubbleButton(chatBubble);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof ChatBubble) {
                editList(notification.m1627clone(), false);
            } else if (obj instanceof ChatBubbleNotificationWrapper) {
                new BubbleHelper(this).handleBubbleWrapNotification(notification, this);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ChatBubbleListResponse chatBubbleListResponse, int i10) {
            super.onPageResponse(apiRequest, chatBubbleListResponse, i10);
            BubbleManageListFragment.this.curSelectedBubbleId = chatBubbleListResponse.currentSelectedBubbleId;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected String threadId() {
            return BubbleManageListFragment.this.threadId;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if ((rawList() != null && rawList().size() > 0) || this._isEnd) {
                return true;
            }
            return false;
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

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected void onFirstPageResponse() {
            super.onFirstPageResponse();
            BubbleManageListFragment.this.updateActionBarRightButton();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
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
        MyBubbleListAdapter myBubbleListAdapter = new MyBubbleListAdapter();
        this.bubbleListAdapter = myBubbleListAdapter;
        dividerAdapter.setAdapter(myBubbleListAdapter);
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        mergeAdapter.addAdapter(new SimpleViewAdapter(this) { // from class: com.narvii.monetization.bubble.manage.BubbleManageListFragment.4
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.SimpleViewAdapter
            protected int getLayoutId() {
                return R.layout.item_more_bubble_entry;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("scrollSectionGroupId", StoreSection.GROUP_TYPE_CHAT_BUBBLE);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "More Chat Bubbles");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
        });
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        MyBubbleListAdapter myBubbleListAdapter;
        if (i10 == 101 && i11 == -1 && (myBubbleListAdapter = this.bubbleListAdapter) != null) {
            myBubbleListAdapter.resetList();
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarRightButton() {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.removeRightView();
            MyBubbleListAdapter myBubbleListAdapter = this.bubbleListAdapter;
            if (myBubbleListAdapter != null && myBubbleListAdapter.list() != null && this.bubbleListAdapter.list().size() != 1) {
                nVActivity.setActionBarRightView(R.string.manage, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, this.actionBarRightListener);
            } else {
                nVActivity.setActionBarRightView(R.string.manage, -2130706433, false, (View.OnClickListener) null);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        updateActionBarRightButton();
    }

    @Override // com.narvii.monetization.MembershipBasedListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_bubbles);
        this.threadId = getStringParam("threadId");
        this.bubbleHelper = new BubbleHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.monetization.MembershipBasedListFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_manage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
