package com.narvii.monetization.sticker.collection;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Sticker;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.common.RecommendHeaderAdapter;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerPreviewTouchListener;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.mood.MoodCollectionDetailFragment;
import com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment;
import com.narvii.monetization.sticker.widget.StickerDetailDialog;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.monetization.store.StoreRecommendAdapter;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.share.ShareDialog;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerCollectionDetailFragment extends DetailFragment {
    public Adapter adapter;
    OverlayLayout header;
    public int padding;
    private int placeHolderHeight;
    StickerPreviewTouchListener previewTouchListener;
    boolean requestFinished;
    private StickerHelper stickerHelper;
    public StickerListAdapter stickerListAdapter;
    StoreItemOwnStatusController storeItemOwnStatusController;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.sticker_collection.header", true);
    static final DetailAdapter.CellType DETAIL = new DetailAdapter.CellType("detail.sticker_collection", true);

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoreStickerDetailPage";
    }

    public static Intent intent(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return null;
        }
        if (stickerCollection.isUserCreated()) {
            Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollection));
            intent.putExtra("id", stickerCollection.id());
            return intent;
        }
        if (stickerCollection.isLocalMood()) {
            return FragmentWrapperActivity.intent(MoodCollectionDetailFragment.class);
        }
        Intent intent2 = FragmentWrapperActivity.intent(StickerCollectionDetailFragment.class);
        intent2.putExtra("id", stickerCollection.id());
        intent2.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollection));
        return intent2;
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

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        this.header.attach((NVListView) getListView());
        updateHeader();
        if (getActivity() instanceof NVActivity) {
            this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        }
        ListView listView = getListView();
        if (listView instanceof NVListView) {
            Adapter adapter = this.adapter;
            this.previewTouchListener = new StickerPreviewTouchListener(adapter == null ? null : adapter.getObject(), false, listView, this.swipeLayout, this.stickerListAdapter, 4, this.padding);
            this.previewTouchListener.setRowOffset(3);
            listView.setOnTouchListener(this.previewTouchListener);
            NVListView nVListView = (NVListView) listView;
            nVListView.setInterceptTouchEventListener(this.previewTouchListener);
            nVListView.setDispatchTouchEventEndListener(this.previewTouchListener);
        }
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.placeHolderHeight = (int) (((Utils.getScreenWidth(getContext()) * 300) / 750.0f) + (getContext().getResources().getDimensionPixelSize(R.dimen.sticker_collection_detail_icon_init_size) / 2));
        this.stickerHelper = new StickerHelper(this);
        if (bundle != null) {
            this.requestFinished = bundle.getBoolean("requestFinished");
        }
        setTitle((CharSequence) null);
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            StickerCollection object = this.adapter.getObject();
            if (object == null) {
                return true;
            }
            ShareDialog.getShareDialogFromStoreItem(this, object).show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_detail_sticker_collection, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("requestFinished", this.requestFinished);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        Adapter adapter = this.adapter;
        if (adapter == null || this.header == null) {
            return;
        }
        StickerCollection object = adapter.getObject();
        if (object == null) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        this.header.setLayout(R.layout.sticker_collection_detail_header, this.placeHolderHeight);
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.detail_header);
        headerLayout.setHeight1(this.placeHolderHeight);
        headerLayout.setStickerCollection(object);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StickerCollectionResponse stickerCollectionResponse;
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.adapter = new Adapter(this);
        mergeAdapter.addAdapter(this.adapter);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment.1
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = StickerCollectionDetailFragment.this.adapter;
                return (adapter == null || adapter.getObject() == null) ? 0 : 1;
            }
        };
        staticViewAdapter.addLayouts(R.layout.hold_sticker_preview_item);
        mergeAdapter.addAdapter(staticViewAdapter);
        this.padding = (int) Utils.dpToPx(getContext(), 8.0f);
        int i = this.padding;
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, i, i, i, i);
        this.stickerListAdapter = new StickerListAdapter(this, Sticker.class);
        divideColumnAdapter.setAdapter(this.stickerListAdapter, 4);
        divideColumnAdapter.setSupportLongClick(true);
        mergeAdapter.addAdapter(divideColumnAdapter);
        NVPagerStatusAdapter nVPagerStatusAdapter = new NVPagerStatusAdapter(this) { // from class: com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment.2
            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public int getItemViewType(int i2) {
                if (StickerCollectionDetailFragment.this.adapter.isLoading()) {
                    return -3;
                }
                return StickerCollectionDetailFragment.this.adapter.getErrorMsg() != null ? -2 : -1;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = StickerCollectionDetailFragment.this.adapter;
                if (adapter == null || adapter.getObject() != null || StickerCollectionDetailFragment.this.adapter.getErrorMsg() == null) {
                    return super.getCount();
                }
                return 0;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onEmptyClickRetry() {
                super.onEmptyClickRetry();
                StickerCollectionDetailFragment.this.adapter.refresh(0, null);
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onErrorClickRetry() {
                super.onErrorClickRetry();
                StickerCollectionDetailFragment.this.adapter.refresh(0, null);
            }
        };
        nVPagerStatusAdapter.setAdapter(this.stickerListAdapter);
        nVPagerStatusAdapter.setDarkTheme(false);
        mergeAdapter.addAdapter(nVPagerStatusAdapter);
        RecommendHeaderAdapter recommendHeaderAdapter = new RecommendHeaderAdapter(this);
        StoreRecommendAdapter storeRecommendAdapter = new StoreRecommendAdapter(this, "sticker", 114, id()) { // from class: com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment.3
            @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
            public int getCount() {
                if (!StickerCollectionDetailFragment.this.stickerListAdapter.isEmpty() || StickerCollectionDetailFragment.this.requestFinished) {
                    return super.getCount();
                }
                return 0;
            }
        };
        recommendHeaderAdapter.setAttachAdapter(storeRecommendAdapter);
        mergeAdapter.addAdapter(recommendHeaderAdapter);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        divideColumnAdapter2.setAdapter(storeRecommendAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter2);
        if (bundle == null && (stickerCollectionResponse = (StickerCollectionResponse) JacksonUtils.readAs(getStringParam("response"), StickerCollectionResponse.class)) != null) {
            this.adapter.setResponse(stickerCollectionResponse);
        }
        return mergeAdapter;
    }

    class Adapter extends DetailAdapter<StickerCollection, StickerCollectionResponse> {
        boolean stated;

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(StickerCollection stickerCollection) {
            StickerCollectionResponse stickerCollectionResponse = new StickerCollectionResponse();
            stickerCollectionResponse.stickerCollection = stickerCollection;
            setResponse(stickerCollectionResponse);
        }

        public String getErrorMsg() {
            return this.errorMsg;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(StickerCollectionResponse stickerCollectionResponse) {
            StickerCollection stickerCollection;
            StickerCollection stickerCollection2;
            if (stickerCollectionResponse != null && (stickerCollection2 = stickerCollectionResponse.stickerCollection) != null && stickerCollection2.isUserCreated()) {
                if (StickerCollectionDetailFragment.this.isDestoryed() || StickerCollectionDetailFragment.this.isFinishing()) {
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
                intent.putExtra("id", stickerCollectionResponse.stickerCollection.id());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollectionResponse.stickerCollection));
                intent.putExtra("Source", this.source);
                startActivity(intent);
                StickerCollectionDetailFragment.this.getActivity().overridePendingTransition(0, 0);
                StickerCollectionDetailFragment.this.finish();
                return;
            }
            super.setResponse((Adapter) stickerCollectionResponse);
            StickerCollection stickerCollection3 = stickerCollectionResponse.stickerCollection;
            if (stickerCollection3 != null && stickerCollection3.isShared()) {
                stickerCollectionResponse.stickerCollection.stickerList = (ArrayList) new FilterHelper(this).filter(stickerCollectionResponse.stickerCollection.stickerList);
            }
            StickerListAdapter stickerListAdapter = StickerCollectionDetailFragment.this.stickerListAdapter;
            if (stickerListAdapter != null && stickerCollectionResponse != null && (stickerCollection = stickerCollectionResponse.stickerCollection) != null) {
                stickerListAdapter.setList(stickerCollection.stickerList);
            }
            if (this.stated) {
                return;
            }
            this.stated = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) {
            super.onObjectResponse(apiRequest, (ApiRequest) stickerCollectionResponse);
            StickerCollectionDetailFragment.this.requestFinished = true;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            StickerCollectionDetailFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends StickerCollection> objectType() {
            return StickerCollection.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends StickerCollectionResponse> responseType() {
            return StickerCollectionResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().path("/sticker-collection/" + StickerCollectionDetailFragment.this.id()).param("includeStickers", true).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List list) {
            list.add(StickerCollectionDetailFragment.HEADER);
            list.add(StickerCollectionDetailFragment.DETAIL);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(StickerCollectionDetailFragment.HEADER);
            list.add(StickerCollectionDetailFragment.DETAIL);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            StickerCollection updatedStickerCollection;
            if (!(notification.obj instanceof StickerCollection) || notification.action != "update" || (updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(getObject(), (StickerCollection) notification.obj)) == null || updatedStickerCollection.stickerList == null) {
                return;
            }
            setObject(updatedStickerCollection);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == StickerCollectionDetailFragment.HEADER) {
                View viewCreateView = createView(R.layout.sticker_collection_detail_placeholder, viewGroup, view);
                viewCreateView.getLayoutParams().height = StickerCollectionDetailFragment.this.placeHolderHeight;
                return viewCreateView;
            }
            if (obj == StickerCollectionDetailFragment.DETAIL) {
                View viewCreateView2 = createView(R.layout.sticker_collection_detail, viewGroup, view);
                StickerCollection object = getObject();
                if (object != null) {
                    ((StoreItemNameView) viewCreateView2.findViewById(R.id.sticker_collection_name)).setStoreItem(object);
                    TextView textView = (TextView) viewCreateView2.findViewById(R.id.collection_desc);
                    String description = object.getDescription();
                    if (TextUtils.isEmpty(description)) {
                        textView.setText(description);
                        ViewUtils.show(textView, false);
                    } else {
                        NVText nVText = new NVText(description);
                        nVText.markAllEntries(new DefaultTagClickListener());
                        textView.setClickable(true);
                        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
                        textView.setText(nVText, TextView.BufferType.SPANNABLE);
                        ViewUtils.show(textView, true);
                    }
                    StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewCreateView2.findViewById(R.id.store_item_status_view);
                    StickerCollectionDetailFragment stickerCollectionDetailFragment = StickerCollectionDetailFragment.this;
                    if (stickerCollectionDetailFragment.storeItemOwnStatusController == null) {
                        stickerCollectionDetailFragment.storeItemOwnStatusController = new StickerCollectionOwnStatusController(getParentContext(), storeItemStatusView) { // from class: com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment.Adapter.1
                            @Override // com.narvii.monetization.StickerCollectionOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
                            protected void useItem() {
                                if (StickerCollectionDetailFragment.this.getBooleanParam("finishWithResult")) {
                                    StickerCollectionDetailFragment.this.setResult(-1, new Intent());
                                    StickerCollectionDetailFragment.this.finish();
                                    return;
                                }
                                super.useItem();
                            }
                        };
                    }
                    StickerCollectionDetailFragment.this.storeItemOwnStatusController.setStoreItem(object);
                    TextView textView2 = (TextView) viewCreateView2.findViewById(R.id.used_times);
                    textView2.setText(StickerCollectionDetailFragment.this.getString(R.string.used_n_times, com.narvii.util.text.TextUtils.numberFormat.format(object.usedCount)));
                    ViewUtils.show(textView2, StickerCollectionDetailFragment.this.stickerHelper.showStickerCollectionUsedTimes(object));
                }
                return viewCreateView2;
            }
            return super.getCell(obj, view, viewGroup);
        }
    }

    class StickerListAdapter extends NVArrayAdapter<Sticker> {
        public StickerListAdapter(NVContext nVContext, Class<Sticker> cls) {
            super(nVContext, cls);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            StickerPreviewTouchListener stickerPreviewTouchListener;
            if (!(obj instanceof Sticker) || (stickerPreviewTouchListener = StickerCollectionDetailFragment.this.previewTouchListener) == null) {
                return true;
            }
            stickerPreviewTouchListener.startPreview(i, view, (Sticker) obj);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return StickerCollectionDetailFragment.this.adapter.getErrorMsg();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Sticker item = getItem(i);
            View viewCreateView = createView(R.layout.collection_detail_sticker_item, viewGroup, view);
            ((StickerImageView) viewCreateView.findViewById(R.id.thumbnail)).setStickerImageUrl(item.stickerCollectionId, item.thumbnail);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null && (obj instanceof Sticker)) {
                StickerDetailDialog stickerDetailDialog = new StickerDetailDialog(this);
                stickerDetailDialog.setSticker((Sticker) obj, true);
                stickerDetailDialog.show();
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
