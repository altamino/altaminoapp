package com.narvii.monetization.bubble.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleListResponse;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.monetization.bubble.BubbleListAdapter;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class BubbleSortListFragment extends DragSortPageFragment<ChatBubble> {
    private Adapter adapter;
    private View headerView;
    private MembershipService membershipService;
    private List<ChatBubble> oList = new ArrayList();
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.bubble.manage.BubbleSortListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                if (BubbleSortListFragment.this.adapter != null) {
                    BubbleSortListFragment.this.adapter.notifyDataSetChanged();
                }
                BubbleSortListFragment.this.updateRightButton();
            }
        }
    };

    class Adapter extends BubbleListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected int layoutId() {
            return R.layout.item_bubble_sort;
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter, com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
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
            if (BubbleSortListFragment.this.oList == null) {
                BubbleSortListFragment.this.oList = new ArrayList();
            }
            BubbleSortListFragment.this.oList.addAll(chatBubbleListResponse.list());
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }

        @Override // com.narvii.monetization.bubble.BubbleListAdapter
        protected void onFirstPageResponse() {
            super.onFirstPageResponse();
            if (BubbleSortListFragment.this.oList != null) {
                BubbleSortListFragment.this.oList.clear();
            }
        }
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        if (this.adapter == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.adapter.list());
        if (!(!arrayList.equals(this.oList))) {
            finish();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.bubble.manage.BubbleSortListFragment.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                BubbleSortListFragment.this.setResult(-1, new Intent());
                BubbleSortListFragment.this.finish();
            }
        };
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((ChatBubble) it.next()).id());
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().global().path("chat/chat-bubble/reorder").param("bubbleIdList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRightButton() {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
            nVActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.monetization.bubble.manage.BubbleSortListFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BubbleSortListFragment.this.saveChanges();
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        updateRightButton();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.adapter = new Adapter(this);
        setTitle(R.string.my_bubbles);
        if (bundle != null) {
            this.oList = JacksonUtils.readListAs(bundle.getString("olist"), ChatBubble.class);
        }
        this.membershipService = (MembershipService) getService("membership");
        MemberShipExpireWarningFragment.attachTo(this, "Chat Bubble (Bar)");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.DragSortPageFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sort_bubble, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.store_bubble_sort_header, (ViewGroup) listView, false);
        this.headerView = viewInflate;
        ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.drag_to_sort);
        NVImageView nVImageView = (NVImageView) this.headerView.findViewById(R.id.bubble_preview);
        nVImageView.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
        nVImageView.setShowPressedMask(false);
        ChatBubble chatBubble = new ChatBubble();
        chatBubble.type = -1;
        chatBubble.name = getString(R.string.default_bubble);
        ((StoreItemNameView) this.headerView.findViewById(R.id.item_name)).setStoreItem(chatBubble);
        this.headerView.findViewById(R.id.custom_container).setVisibility(8);
        listView.addHeaderView(this.headerView);
        listView.setDividerHeight(0);
        listView.setDivider(null);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("olist", JacksonUtils.writeAsString(this.oList));
    }
}
