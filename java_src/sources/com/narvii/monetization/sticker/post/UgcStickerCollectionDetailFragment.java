package com.narvii.monetization.sticker.post;

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
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Community;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.common.RecommendHeaderAdapter;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerPreviewTouchListener;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.widget.StickerCollectionSourceView;
import com.narvii.monetization.sticker.widget.StickerDetailDialog;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.monetization.store.StoreHelper;
import com.narvii.monetization.store.StoreRecommendAdapter;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UgcStickerCollectionDetailFragment extends DetailFragment implements View.OnClickListener {
    static final DetailAdapter.CellType DETAIL = new DetailAdapter.CellType("detail.sticker_collection", true);
    public Adapter adapter;
    private boolean approveMode;
    public int padding;
    StickerPreviewTouchListener previewTouchListener;
    boolean requestFinished;
    private StickerHelper stickerHelper;
    public StickerListAdapter stickerListAdapter;
    StoreItemOwnStatusController storeItemOwnStatusController;

    /* JADX INFO: renamed from: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UgcStickerCollectionDetailFragment ugcStickerCollectionDetailFragment = UgcStickerCollectionDetailFragment.this;
            if (ugcStickerCollectionDetailFragment.preview) {
                DetailFragment.showPreviewToast(ugcStickerCollectionDetailFragment.getContext());
                return;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(UgcStickerCollectionDetailFragment.this.getContext());
            aCMAlertDialog.setMessage(R.string.submit_sticker_confirm);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.submit, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.1.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    new StoreHelper(UgcStickerCollectionDetailFragment.this.getContext()).shareRequest(UgcStickerCollectionDetailFragment.this.id(), 114, new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.1.1.1
                        @Override // com.narvii.util.Callback
                        public void call(ApiResponse apiResponse) {
                            User userProfile;
                            if (UgcStickerCollectionDetailFragment.this.isDestoryed() || (userProfile = ((AccountService) UgcStickerCollectionDetailFragment.this.getService("account")).getUserProfile()) == null) {
                                return;
                            }
                            if (userProfile.isLeader()) {
                                ((StickerService) UgcStickerCollectionDetailFragment.this.getService("sticker")).refreshSharedStickerPackList(true);
                                UgcStickerCollectionDetailFragment.this.showImageToast(R.string.done);
                                return;
                            }
                            ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(UgcStickerCollectionDetailFragment.this.getContext());
                            aCMAlertDialog2.setTitle(R.string.submitted);
                            aCMAlertDialog2.setMessage(R.string.submit_sticker_success);
                            aCMAlertDialog2.addButton(android.R.string.ok, null);
                            aCMAlertDialog2.show();
                        }
                    });
                    ((StatisticsService) UgcStickerCollectionDetailFragment.this.getService("statistics")).event("Publishes a Sticker Pack").userPropInc("Publishes a Sticker Pack Total");
                }
            });
            aCMAlertDialog.show();
        }
    }

    class Adapter extends DetailAdapter<StickerCollection, StickerCollectionResponse> {
        public String getErrorMsg() {
            return this.errorMsg;
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends StickerCollection> objectType() {
            return StickerCollection.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends StickerCollectionResponse> responseType() {
            return StickerCollectionResponse.class;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List list) {
            list.add(UgcStickerCollectionDetailFragment.DETAIL);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (UgcStickerCollectionDetailFragment.this.preview) {
                return null;
            }
            return ApiRequest.builder().path("/sticker-collection/" + UgcStickerCollectionDetailFragment.this.id()).param("includeStickers", Boolean.TRUE).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            final User originalAuthor;
            if (obj != UgcStickerCollectionDetailFragment.DETAIL) {
                return super.getCell(obj, view, viewGroup);
            }
            View viewCreateView = createView(R.layout.ugc_sticker_collection_detail, viewGroup, view);
            StickerCollection object = getObject();
            if (object != null) {
                ((StoreItemNameView) viewCreateView.findViewById(R.id.sticker_collection_name)).setStoreItem(object);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.collection_desc);
                textView.setText(object.getDescription());
                ViewUtils.show(textView, !TextUtils.isEmpty(textView.getText().toString()));
                Community originalCommunity = object.getOriginalCommunity();
                final boolean z6 = (originalCommunity == null || originalCommunity.id == ((ConfigService) getService("config")).getCommunityId()) ? false : true;
                StoreItemStatusView storeItemStatusView = (StoreItemStatusView) viewCreateView.findViewById(R.id.store_item_status_view);
                ViewUtils.show(storeItemStatusView, !UgcStickerCollectionDetailFragment.this.approveMode);
                StickerCollectionSourceView stickerCollectionSourceView = (StickerCollectionSourceView) viewCreateView.findViewById(R.id.source_view);
                ViewUtils.show(viewCreateView, R.id.source_view_container, z6);
                stickerCollectionSourceView.setStickerCollection(object);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.used_times);
                textView2.setText(UgcStickerCollectionDetailFragment.this.getString(R.string.used_n_times, com.narvii.util.text.TextUtils.numberFormat.format(object.usedCount)));
                ViewUtils.show(textView2, UgcStickerCollectionDetailFragment.this.stickerHelper.showStickerCollectionUsedTimes(object));
                View viewFindViewById = viewCreateView.findViewById(R.id.author_layout);
                if (object.isShared()) {
                    originalAuthor = object.getOriginalAuthor();
                } else {
                    originalAuthor = UgcStickerCollectionDetailFragment.this.approveMode ? object.author : null;
                }
                if (object.isShared()) {
                    ViewUtils.show(viewFindViewById, originalAuthor != null && originalAuthor.isAccessibleByUser(null));
                } else {
                    ViewUtils.show(viewFindViewById, originalAuthor != null);
                }
                if (originalAuthor != null) {
                    UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout);
                    userAvatarLayout.setUser(originalAuthor);
                    userAvatarLayout.setAvatarStroke(1.5f);
                    NicknameView nicknameView = (NicknameView) viewFindViewById.findViewById(R.id.nickname);
                    nicknameView.hideRole = z6;
                    nicknameView.setHideRankingBadge(z6);
                    nicknameView.setUser(originalAuthor);
                    if (z6) {
                        userAvatarLayout.setVisibility(8);
                        nicknameView.setTextColor(-15592942);
                    }
                }
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.Adapter.2
                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Intent intent;
                        if (z6 || (intent = UserProfileFragment.intent(Adapter.this.getParentContext(), originalAuthor)) == null) {
                            return;
                        }
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Shared Sticker Pack Detail Page");
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Adapter.this, intent);
                    }
                });
                UgcStickerCollectionDetailFragment ugcStickerCollectionDetailFragment = UgcStickerCollectionDetailFragment.this;
                if (ugcStickerCollectionDetailFragment.storeItemOwnStatusController == null) {
                    ugcStickerCollectionDetailFragment.storeItemOwnStatusController = new StickerCollectionOwnStatusController(getParentContext(), storeItemStatusView);
                    storeItemStatusView.setPreview(UgcStickerCollectionDetailFragment.this.preview);
                }
                UgcStickerCollectionDetailFragment.this.storeItemOwnStatusController.setStoreItem(object);
            }
            return viewCreateView;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof StickerCollection) {
                String str = notification.action;
                if (str == "update" || str == "edit") {
                    StickerCollection updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(getObject(), (StickerCollection) notification.obj);
                    if (updatedStickerCollection == null || updatedStickerCollection.stickerList == null) {
                        return;
                    }
                    setObject(updatedStickerCollection);
                    return;
                }
                if (str == "delete") {
                    if (Utils.isEqualsNotNull(((StickerCollection) obj).id(), getObject() == null ? null : getObject().id())) {
                        UgcStickerCollectionDetailFragment.this.finish();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) {
            super.onObjectResponse(apiRequest, stickerCollectionResponse);
            UgcStickerCollectionDetailFragment.this.requestFinished = true;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(StickerCollection stickerCollection) {
            StickerCollectionResponse stickerCollectionResponse = new StickerCollectionResponse();
            stickerCollectionResponse.stickerCollection = stickerCollection;
            setResponse(stickerCollectionResponse);
            invalidateOptionsMenu();
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(final StickerCollectionResponse stickerCollectionResponse) {
            StickerCollection stickerCollection;
            super.setResponse(stickerCollectionResponse);
            StickerCollection stickerCollection2 = stickerCollectionResponse.stickerCollection;
            if (stickerCollection2 != null && (stickerCollection2.isShared() || !UgcStickerCollectionDetailFragment.this.stickerHelper.isCreatedByMe(stickerCollectionResponse.stickerCollection))) {
                stickerCollectionResponse.stickerCollection.stickerList = (ArrayList) new FilterHelper(this).filter(stickerCollectionResponse.stickerCollection.stickerList);
            }
            StickerListAdapter stickerListAdapter = UgcStickerCollectionDetailFragment.this.stickerListAdapter;
            if (stickerListAdapter != null && (stickerCollection = stickerCollectionResponse.stickerCollection) != null) {
                stickerListAdapter.setList(stickerCollection.stickerList);
            }
            UgcStickerCollectionDetailFragment.this.updateSubmitLayout();
            UgcStickerCollectionDetailFragment.this.updateApproveLayout();
            if (stickerCollectionResponse.stickerCollection != null && UgcStickerCollectionDetailFragment.this.stickerHelper.isCreatedByMe(stickerCollectionResponse.stickerCollection) && (UgcStickerCollectionDetailFragment.this.getActivity() instanceof NVActivity)) {
                NVActivity nVActivity = (NVActivity) UgcStickerCollectionDetailFragment.this.getActivity();
                nVActivity.removeRightView();
                nVActivity.setActionBarRightView(R.string.edit, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.Adapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        UgcStickerCollectionDetailFragment.this.stickerHelper.onClickEditStickerCollectionButton(stickerCollectionResponse.stickerCollection, true);
                    }
                });
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(UgcStickerCollectionDetailFragment.DETAIL);
        }
    }

    class StickerListAdapter extends NVArrayAdapter<Sticker> {
        public StickerListAdapter(NVContext nVContext, Class<Sticker> cls) {
            super(nVContext, cls);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return UgcStickerCollectionDetailFragment.this.adapter.getErrorMsg();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null && (obj instanceof Sticker)) {
                Sticker sticker = (Sticker) obj;
                StickerCollection object = UgcStickerCollectionDetailFragment.this.adapter.getObject();
                if (sticker.isDisabled() && object != null && UgcStickerCollectionDetailFragment.this.stickerHelper.isCreatedByMe(object)) {
                    UgcStickerCollectionDetailFragment.this.stickerHelper.deleteDisabledSticker(object.id(), sticker, new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.StickerListAdapter.1
                        @Override // com.narvii.util.Callback
                        public void call(ApiResponse apiResponse) {
                            UgcStickerCollectionDetailFragment.this.adapter.refresh(0, null);
                        }
                    });
                    return true;
                }
                StickerDetailDialog stickerDetailDialog = new StickerDetailDialog(this);
                stickerDetailDialog.setSticker(sticker, new StickerHelper(this).isContributedByMe(object));
                stickerDetailDialog.show();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            StickerPreviewTouchListener stickerPreviewTouchListener;
            if (!(obj instanceof Sticker) || (stickerPreviewTouchListener = UgcStickerCollectionDetailFragment.this.previewTouchListener) == null) {
                return true;
            }
            stickerPreviewTouchListener.startPreview(i10, view, (Sticker) obj);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Sticker item = getItem(i10);
            View viewCreateView = createView(R.layout.collection_detail_sticker_item, viewGroup, view);
            ((StickerImageView) viewCreateView.findViewById(R.id.thumbnail)).setStickerImageUrl(item.stickerCollectionId, item.thumbnail);
            ViewUtils.show(viewCreateView, R.id.disabled, item.isDisabled());
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSubmitLayout() {
        Adapter adapter = this.adapter;
        if (adapter == null || adapter.getObject() == null) {
            return;
        }
        ViewUtils.show(getView().findViewById(R.id.submit_layout), (this.approveMode || !this.stickerHelper.isCreatedByMe(this.adapter.getObject()) || isGlobalInteractionScope()) ? false : true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StickerCollectionResponse stickerCollectionResponse;
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(staticViewAdapter);
        Adapter adapter = new Adapter(this);
        this.adapter = adapter;
        mergeAdapter.addAdapter(adapter);
        StaticViewAdapter staticViewAdapter2 = new StaticViewAdapter() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.2
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter2 = UgcStickerCollectionDetailFragment.this.adapter;
                return (adapter2 == null || adapter2.getObject() == null) ? 0 : 1;
            }
        };
        staticViewAdapter2.addLayouts(R.layout.hold_sticker_preview_item);
        mergeAdapter.addAdapter(staticViewAdapter2);
        this.padding = (int) Utils.dpToPx(getContext(), 8.0f);
        int i10 = this.padding;
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, i10, i10, i10, i10);
        StickerListAdapter stickerListAdapter = new StickerListAdapter(this, Sticker.class);
        this.stickerListAdapter = stickerListAdapter;
        divideColumnAdapter.setAdapter(stickerListAdapter, 4);
        divideColumnAdapter.setSupportLongClick(true);
        mergeAdapter.addAdapter(divideColumnAdapter);
        NVPagerStatusAdapter nVPagerStatusAdapter = new NVPagerStatusAdapter(this) { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.3
            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter2 = UgcStickerCollectionDetailFragment.this.adapter;
                if (adapter2 == null || adapter2.getObject() != null || UgcStickerCollectionDetailFragment.this.adapter.getErrorMsg() == null) {
                    return super.getCount();
                }
                return 0;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public int getItemViewType(int i11) {
                if (UgcStickerCollectionDetailFragment.this.adapter.isLoading()) {
                    return -3;
                }
                return UgcStickerCollectionDetailFragment.this.adapter.getErrorMsg() != null ? -2 : -1;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onEmptyClickRetry() {
                super.onEmptyClickRetry();
                UgcStickerCollectionDetailFragment.this.adapter.refresh(0, null);
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onErrorClickRetry() {
                super.onErrorClickRetry();
                UgcStickerCollectionDetailFragment.this.adapter.refresh(0, null);
            }
        };
        nVPagerStatusAdapter.setAdapter(this.stickerListAdapter);
        nVPagerStatusAdapter.setDarkTheme(false);
        mergeAdapter.addAdapter(nVPagerStatusAdapter);
        if (id() != null && !this.approveMode) {
            RecommendHeaderAdapter recommendHeaderAdapter = new RecommendHeaderAdapter(this);
            StoreRecommendAdapter storeRecommendAdapter = new StoreRecommendAdapter(this, "sticker", 114, id()) { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.4
                @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
                public int getCount() {
                    StickerCollection object;
                    Adapter adapter2 = UgcStickerCollectionDetailFragment.this.adapter;
                    if (adapter2 == null || (object = adapter2.getObject()) == null || UgcStickerCollectionDetailFragment.this.stickerHelper.isCreatedByMe(object)) {
                        return 0;
                    }
                    if (!UgcStickerCollectionDetailFragment.this.stickerListAdapter.isEmpty() || UgcStickerCollectionDetailFragment.this.requestFinished) {
                        return super.getCount();
                    }
                    return 0;
                }
            };
            storeRecommendAdapter.setPreview(this.preview);
            recommendHeaderAdapter.setAttachAdapter(storeRecommendAdapter);
            mergeAdapter.addAdapter(recommendHeaderAdapter);
            int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
            DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPx, iDpToPx, iDpToPx, iDpToPx);
            divideColumnAdapter2.setAdapter(storeRecommendAdapter, 3);
            mergeAdapter.addAdapter(divideColumnAdapter2);
        }
        mergeAdapter.addAdapter(new MarginAdapter(this, Utils.dpToPxInt(getContext(), 80.0f)));
        if (bundle == null && (stickerCollectionResponse = (StickerCollectionResponse) JacksonUtils.readAs(getStringParam("response"), StickerCollectionResponse.class)) != null) {
            this.adapter.setResponse(stickerCollectionResponse);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        Adapter adapter;
        if (!z6 || (adapter = this.adapter) == null) {
            return;
        }
        adapter.refresh(0, null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.refresh(0, this.refreshCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateApproveLayout() {
        View viewFindViewById = getView().findViewById(R.id.approve_layout);
        ViewUtils.show(viewFindViewById, this.approveMode);
        if (this.approveMode) {
            viewFindViewById.findViewById(R.id.reject).setOnClickListener(this);
            viewFindViewById.findViewById(R.id.accept).setOnClickListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.accept) {
            if (id == R.id.reject) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.reject_sticker_confirm);
                aCMAlertDialog.addButton(R.string.no, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        new StoreHelper(UgcStickerCollectionDetailFragment.this.getContext()).rejectShareRequest(UgcStickerCollectionDetailFragment.this.getStringParam("requestId"), new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.5.1
                            @Override // com.narvii.util.Callback
                            public void call(ApiResponse apiResponse) {
                                if (UgcStickerCollectionDetailFragment.this.isDestoryed()) {
                                    return;
                                }
                                Intent intent = new Intent();
                                intent.putExtra("requestId", UgcStickerCollectionDetailFragment.this.getStringParam("requestId"));
                                UgcStickerCollectionDetailFragment.this.setResult(-1, intent);
                                UgcStickerCollectionDetailFragment.this.finish();
                            }
                        });
                    }
                });
                aCMAlertDialog.show();
                return;
            }
            return;
        }
        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
        aCMAlertDialog2.setMessage(R.string.accept_sticker_confirm);
        aCMAlertDialog2.addButton(R.string.no, null);
        aCMAlertDialog2.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                new StoreHelper(UgcStickerCollectionDetailFragment.this.getContext()).approveShareRequest(UgcStickerCollectionDetailFragment.this.getStringParam("requestId"), new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment.6.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        if (UgcStickerCollectionDetailFragment.this.isDestoryed()) {
                            return;
                        }
                        Intent intent = new Intent();
                        intent.putExtra("requestId", UgcStickerCollectionDetailFragment.this.getStringParam("requestId"));
                        UgcStickerCollectionDetailFragment.this.setResult(-1, intent);
                        UgcStickerCollectionDetailFragment.this.finish();
                    }
                });
            }
        });
        aCMAlertDialog2.show();
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.requestFinished = bundle.getBoolean("requestFinished");
        }
        setTitle((CharSequence) null);
        this.stickerHelper = new StickerHelper(this);
        this.approveMode = getBooleanParam("approveMode");
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white).setShowAsAction(2);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_detail_sticker_collection_ugc, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Adapter adapter;
        if (menuItem.getItemId() == R.string.flag_for_review && (adapter = this.adapter) != null && adapter.getObject() != null) {
            new FlagReportOptionDialog.Builder(this).nvObject(this.adapter.getObject()).build().show();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean zIsContributedByMe;
        super.onPrepareOptionsMenu(menu);
        Adapter adapter = this.adapter;
        if (adapter != null && adapter.getObject() != null) {
            zIsContributedByMe = this.stickerHelper.isContributedByMe(this.adapter.getObject());
        } else {
            zIsContributedByMe = false;
        }
        menu.findItem(R.string.flag_for_review).setVisible(!zIsContributedByMe);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("requestFinished", this.requestFinished);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        StickerCollection object;
        super.onViewCreated(view, bundle);
        ListView listView = getListView();
        if (listView instanceof NVListView) {
            Adapter adapter = this.adapter;
            if (adapter == null) {
                object = null;
            } else {
                object = adapter.getObject();
            }
            StickerPreviewTouchListener stickerPreviewTouchListener = new StickerPreviewTouchListener(object, false, listView, this.swipeLayout, this.stickerListAdapter, 4, this.padding);
            this.previewTouchListener = stickerPreviewTouchListener;
            stickerPreviewTouchListener.setRowOffset(3);
            listView.setOnTouchListener(this.previewTouchListener);
            NVListView nVListView = (NVListView) listView;
            nVListView.setInterceptTouchEventListener(this.previewTouchListener);
            nVListView.setDispatchTouchEventEndListener(this.previewTouchListener);
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Amino+ Product Detail Page (Store)").userPropInc("Amino+ Product Detail Page (Store) Total").param(EventConstants.CommentPost.TYPE, "Shared Sticker Packs").param(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        view.findViewById(R.id.submit).setOnClickListener(new AnonymousClass1());
    }
}
