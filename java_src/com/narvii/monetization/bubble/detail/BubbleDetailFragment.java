package com.narvii.monetization.bubble.detail;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.monetization.ChatBubbleOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.bubble.ChatBubbleResponse;
import com.narvii.monetization.common.RecommendHeaderAdapter;
import com.narvii.monetization.store.StoreRecommendAdapter;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.share.ShareDialog;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.util.List;

/* loaded from: classes3.dex */
public class BubbleDetailFragment extends DetailFragment {
    public static final String KEY_DETAIL_REQUEST_FINISHED = "detail_finished";
    private Adapter adapter;
    private String allChatBubbleId;
    private OverlayLayout header;
    private boolean isDetailRequestFinished;
    StoreRecommendAdapter recommendBubblesAdapter;
    ChatBubbleOwnStatusController statusController;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.bubble.header", true);
    static final DetailAdapter.CellType DETAIL = new DetailAdapter.CellType("detail.bubble.detail", true);
    static final DetailAdapter.CellType FITBOTTOM = new DetailAdapter.CellType("detail.bubble.fitBottom", true);

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoreChatBubbleDetailPage";
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        setHasOptionsMenu(true);
        if (bundle != null) {
            this.isDetailRequestFinished = bundle.getBoolean(KEY_DETAIL_REQUEST_FINISHED);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ((NVListView) listView).setFooterPadding(Utils.dpToPxInt(getContext(), 80.0f));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            ChatBubble object = this.adapter.getObject();
            if (object == null) {
                return true;
            }
            ShareDialog.getShareDialogFromStoreItem(this, object).show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_DETAIL_REQUEST_FINISHED, this.isDetailRequestFinished);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatBubbleOwnStatusController chatBubbleOwnStatusController = this.statusController;
        if (chatBubbleOwnStatusController != null) {
            chatBubbleOwnStatusController.onDestroy();
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        Adapter adapter;
        if (!z || (adapter = this.adapter) == null) {
            return;
        }
        adapter.refresh(0, null);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.adapter = new Adapter();
        RecommendHeaderAdapter recommendHeaderAdapter = new RecommendHeaderAdapter(this);
        this.recommendBubblesAdapter = new StoreRecommendAdapter(this, StoreSection.GROUP_TYPE_CHAT_BUBBLE, 116, id());
        recommendHeaderAdapter.setAttachAdapter(this.recommendBubblesAdapter);
        mergeAdapter.addAdapter(this.adapter);
        mergeAdapter.addAdapter(recommendHeaderAdapter);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        divideColumnAdapter.setAdapter(this.recommendBubblesAdapter, 3);
        new FakeLoadingAdapter();
        mergeAdapter.addAdapter(divideColumnAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_detail_bubble, viewGroup, false);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        this.header.attach((NVListView) getListView());
        updateHeader();
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() throws Resources.NotFoundException {
        Adapter adapter = this.adapter;
        if (adapter == null || this.header == null) {
            return;
        }
        ChatBubble object = adapter.getObject();
        if (object == null) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bubble_detail_header_height);
        this.header.setLayout(R.layout.bubble_detail_header, dimensionPixelSize);
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.detail_header);
        headerLayout.setHeight1(dimensionPixelSize);
        headerLayout.setBubble(object);
    }

    class Adapter extends DetailAdapter<ChatBubble, ChatBubbleResponse> {
        boolean stated;

        public Adapter() {
            super(BubbleDetailFragment.this);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(ChatBubble chatBubble) {
            ChatBubbleResponse chatBubbleResponse = new ChatBubbleResponse();
            chatBubbleResponse.chatBubble = chatBubble;
            setResponse(chatBubbleResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends ChatBubble> objectType() {
            return ChatBubble.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends ChatBubbleResponse> responseType() {
            return ChatBubbleResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() throws Resources.NotFoundException {
            super.notifyDataSetChanged();
            BubbleDetailFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().path("/chat/chat-bubble/" + BubbleDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            list.add(BubbleDetailFragment.HEADER);
            list.add(BubbleDetailFragment.DETAIL);
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, ChatBubbleResponse chatBubbleResponse) {
            super.onObjectResponse(apiRequest, (ApiRequest) chatBubbleResponse);
            BubbleDetailFragment.this.isDetailRequestFinished = true;
            BubbleDetailFragment.this.allChatBubbleId = chatBubbleResponse.allChatsBubbleId;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(BubbleDetailFragment.HEADER);
            list.add(BubbleDetailFragment.DETAIL);
            list.add(BubbleDetailFragment.FITBOTTOM);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == BubbleDetailFragment.HEADER) {
                return createView(R.layout.bubble_detail_placeholder, viewGroup, view);
            }
            if (obj == BubbleDetailFragment.DETAIL) {
                View viewCreateView = createView(R.layout.bubble_content_detail, viewGroup, view);
                ChatBubble object = getObject();
                if (object != null) {
                    ((StoreItemNameView) viewCreateView.findViewById(R.id.item_name)).setStoreItem(object);
                    StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewCreateView.findViewById(R.id.item_status_view);
                    BubbleDetailFragment bubbleDetailFragment = BubbleDetailFragment.this;
                    if (bubbleDetailFragment.statusController == null) {
                        bubbleDetailFragment.statusController = new ChatBubbleOwnStatusController(getParentContext(), storeItemStatusView, null, true);
                        BubbleDetailFragment.this.statusController.onCreate();
                    }
                    BubbleDetailFragment bubbleDetailFragment2 = BubbleDetailFragment.this;
                    bubbleDetailFragment2.statusController.setStoreItem(object, bubbleDetailFragment2.allChatBubbleId);
                }
                return viewCreateView;
            }
            if (obj == BubbleDetailFragment.FITBOTTOM) {
                View viewCreateView2 = createView(R.layout.adapter_margin_item, viewGroup, view);
                viewCreateView2.getLayoutParams().height = Utils.getScreenHeight(getContext()) - BubbleDetailFragment.this.getResources().getDimensionPixelSize(R.dimen.bubble_detail_header_height);
                return viewCreateView2;
            }
            return super.getCell(obj, view, viewGroup);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) throws Resources.NotFoundException {
            super.onNotification(notification);
            Object obj = notification.obj;
            if (obj instanceof ChatBubbleNotificationWrapper) {
                ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) obj;
                if ("update".equals(notification.action) && 1 == chatBubbleNotificationWrapper.action) {
                    getObject().isActivated = chatBubbleNotificationWrapper.chatBubble.isActivated;
                    notifyDataSetChanged();
                }
            }
        }
    }

    class FakeLoadingAdapter extends AdriftAdapter {
        public FakeLoadingAdapter() {
            super(BubbleDetailFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.item_fake_loading, viewGroup, view);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            StoreRecommendAdapter storeRecommendAdapter = BubbleDetailFragment.this.recommendBubblesAdapter;
            return (storeRecommendAdapter == null || storeRecommendAdapter.isListShown() || BubbleDetailFragment.this.recommendBubblesAdapter.errorMessage() != null) ? 0 : 1;
        }
    }
}
