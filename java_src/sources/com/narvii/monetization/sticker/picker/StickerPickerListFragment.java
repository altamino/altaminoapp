package com.narvii.monetization.sticker.picker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.SimpleViewAdapter;
import com.narvii.media.MediaPickerFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.Media;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.StickerCollectionOwnStatusController;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerPreviewListener;
import com.narvii.monetization.sticker.StickerPreviewTouchListener;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.collection.StickerCollectionProfileDialog;
import com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.EditorStickerInstallFrameView;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class StickerPickerListFragment extends NVListFragment implements MediaPickerFragment.OnResultListener, NotificationListener {
    public static final int COLUMN_COUNT = 4;
    Adapter adapter;
    public AddAdapter addAdapter;
    boolean cacheSticker;
    private boolean editorTheme;
    private String error;
    private UserCreatedInfoAdapter infoAdapter;
    MediaPickerFragment mediaPickerFragment;
    MembershipService membershipService;
    public int paddingH;
    String photoUrl;
    StickerPreviewTouchListener previewTouchListener;
    ProgressDialog progressDialog;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Adapter adapter;
            if (!MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction()) || (adapter = StickerPickerListFragment.this.adapter) == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }
    };
    private boolean requesting;
    Sticker selectedSticker;
    StickerCacheService stickerCacheService;
    StickerCollection stickerCollection;
    private StickerHelper stickerHelper;
    ArrayList<Sticker> stickerList;
    private StickerPreviewListener stickerPreviewListener;
    StickerSelectListener stickerSelectListener;
    StickerService stickerService;
    public boolean trial;
    private VideoManager videoManager;

    class Adapter extends NVArrayAdapter<Sticker> {
        StickerHelper stickerHelper;

        private boolean showMembershipLock(Sticker sticker) {
            if (sticker == null) {
                return false;
            }
            if (!StickerPickerListFragment.this.stickerCollection.isUserCreated() || StickerPickerListFragment.this.membershipService.isMembershipBefore()) {
                return (StickerPickerListFragment.this.stickerCollection.isTotalOwned() || sticker.isGift()) ? false : true;
            }
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        public Adapter(NVContext nVContext, Class cls) {
            super(nVContext, cls);
            this.stickerHelper = new StickerHelper(getParentContext());
        }

        private boolean canUseSticker(Sticker sticker) {
            StickerPickerListFragment stickerPickerListFragment = StickerPickerListFragment.this;
            return stickerPickerListFragment.trial ? stickerPickerListFragment.membershipService.isMembership() : this.stickerHelper.canUseSticker(stickerPickerListFragment.stickerCollection, sticker);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            setStickerList(StickerPickerListFragment.this.stickerList);
            super.onAttach();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            StickerPickerListFragment stickerPickerListFragment;
            StickerSelectListener stickerSelectListener;
            StickerInfoPack stickerInfoPackObtainInstalledStickerInfo;
            if (!(obj instanceof Sticker)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            final Sticker sticker = (Sticker) obj;
            if (sticker.isDisabled()) {
                StickerHelper stickerHelper = this.stickerHelper;
                StickerCollection stickerCollection = StickerPickerListFragment.this.stickerCollection;
                stickerHelper.deleteDisabledSticker(stickerCollection != null ? stickerCollection.id() : null, sticker, new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.Adapter.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        Adapter.this.remove(sticker);
                        Adapter.this.remove(sticker);
                        StickerPickerListFragment stickerPickerListFragment2 = StickerPickerListFragment.this;
                        StickerService stickerService = stickerPickerListFragment2.stickerService;
                        StickerCollection stickerCollection2 = stickerPickerListFragment2.stickerCollection;
                        stickerService.removeSticker(stickerCollection2 == null ? null : stickerCollection2.id(), sticker);
                    }
                });
                return true;
            }
            if (canUseSticker(sticker)) {
                StickerPickerListFragment stickerPickerListFragment2 = StickerPickerListFragment.this;
                if (stickerPickerListFragment2.trial) {
                    StickerSelectListener stickerSelectListener2 = stickerPickerListFragment2.stickerSelectListener;
                    if (stickerSelectListener2 != null) {
                        stickerSelectListener2.onStickerSelected(sticker, stickerPickerListFragment2.stickerCollection);
                    }
                    if (StickerPickerListFragment.this.editorTheme) {
                        sticker.sourceType = 4;
                        EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) view.findViewById(R.id.sticker_install_frame);
                        if (sticker.stickerStatus() == 3 && (stickerInfoPackObtainInstalledStickerInfo = StickerPickerListFragment.this.videoManager.obtainInstalledStickerInfo(sticker, StickerPickerListFragment.this.stickerCacheService.getLocalPath(sticker.stickerCollectionId, sticker.icon))) != null) {
                            ActivityResultCaller parentFragment = StickerPickerListFragment.this.getParentFragment();
                            if (parentFragment instanceof VideoManager.IInstallStickerCallback) {
                                ((VideoManager.IInstallStickerCallback) parentFragment).onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
                            }
                            return true;
                        }
                        StickerPickerListFragment.this.stickerCacheService.downloadFile(sticker.stickerCollectionId, sticker.icon, null);
                        editorStickerInstallFrameView.bindSticker(sticker, true, StickerPickerListFragment.this.stickerCacheService);
                        StickerPickerListFragment.this.selectedSticker = sticker;
                    }
                    return true;
                }
                DownloadStatusInfo stickerDownloadStatusInfo = stickerPickerListFragment2.stickerCacheService.getStickerDownloadStatusInfo(sticker);
                if (stickerDownloadStatusInfo.isReady() && (stickerSelectListener = (stickerPickerListFragment = StickerPickerListFragment.this).stickerSelectListener) != null) {
                    stickerSelectListener.onStickerSelected(sticker, stickerPickerListFragment.stickerCollection);
                    if (StickerPickerListFragment.this.editorTheme) {
                        sticker.sourceType = 1;
                        EditorStickerInstallFrameView editorStickerInstallFrameView2 = (EditorStickerInstallFrameView) view.findViewById(R.id.sticker_install_frame);
                        if (sticker.stickerStatus() == 3) {
                            StickerInfoPack stickerInfoPackObtainInstalledStickerInfo2 = StickerPickerListFragment.this.videoManager.obtainInstalledStickerInfo(sticker, StickerPickerListFragment.this.stickerCacheService.getLocalPath(sticker.stickerCollectionId, sticker.icon));
                            if (stickerInfoPackObtainInstalledStickerInfo2 != null) {
                                ActivityResultCaller parentFragment2 = StickerPickerListFragment.this.getParentFragment();
                                if (parentFragment2 instanceof VideoManager.IInstallStickerCallback) {
                                    ((VideoManager.IInstallStickerCallback) parentFragment2).onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo2);
                                }
                                return true;
                            }
                        } else if (sticker.stickerStatus() != 2) {
                            editorStickerInstallFrameView2.bindSticker(sticker, false, StickerPickerListFragment.this.stickerCacheService);
                        }
                        StickerPickerListFragment.this.selectedSticker = sticker;
                    }
                    return true;
                }
                if (stickerDownloadStatusInfo.isFailed()) {
                    StickerPickerListFragment.this.stickerCacheService.downloadSticker(sticker);
                    if (StickerPickerListFragment.this.editorTheme) {
                        ((EditorStickerInstallFrameView) view.findViewById(R.id.sticker_install_frame)).bindSticker(sticker, false, StickerPickerListFragment.this.stickerCacheService);
                        StickerPickerListFragment.this.selectedSticker = sticker;
                    }
                    notifyDataSetChanged();
                    return true;
                }
            } else {
                StickerPickerListFragment stickerPickerListFragment3 = StickerPickerListFragment.this;
                if (!stickerPickerListFragment3.trial && !stickerPickerListFragment3.stickerCollection.isTotalOwned()) {
                    StickerPickerListFragment.this.showProfileDialog();
                } else if (StickerPickerListFragment.this.membershipService.hasMemberShipExpired()) {
                    StickerPickerListFragment.this.showExpireDialog();
                } else {
                    StickerPickerListFragment.this.showMembershipDialog();
                }
            }
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            StickerPreviewTouchListener stickerPreviewTouchListener;
            if (StickerPickerListFragment.this.stickerPreviewListener != null) {
                StickerPickerListFragment.this.stickerPreviewListener.onStickerPreviewStart();
            }
            if (!(obj instanceof Sticker)) {
                return true;
            }
            Sticker sticker = (Sticker) obj;
            if ((!StickerPickerListFragment.this.trial && !canUseSticker(sticker)) || (stickerPreviewTouchListener = StickerPickerListFragment.this.previewTouchListener) == null) {
                return true;
            }
            stickerPreviewTouchListener.startPreview(i10, view, sticker);
            return true;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        public void setStickerList(ArrayList<Sticker> arrayList) {
            StickerCollection stickerCollection;
            if (arrayList != null && (stickerCollection = StickerPickerListFragment.this.stickerCollection) != null && stickerCollection.isShared() && StickerPickerListFragment.this.isAdded()) {
                arrayList = (ArrayList) new FilterHelper(this).filter(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            if (arrayList != null) {
                arrayList2.addAll(arrayList);
            }
            StickerPickerListFragment.this.stickerCacheService = (StickerCacheService) getService("stickerCache");
            for (Object obj : arrayList2) {
                if (obj instanceof Sticker) {
                    Sticker sticker = (Sticker) obj;
                    if (StickerPickerListFragment.this.stickerCacheService.getStickerDownloadStatusInfo(sticker).status == 0) {
                        StickerPickerListFragment.this.stickerCacheService.downloadSticker(sticker);
                    }
                }
            }
            setList(arrayList2);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            boolean z6;
            float f;
            RestrictionInfo restrictionInfo;
            Sticker item = getItem(i10);
            if (StickerPickerListFragment.this.editorTheme) {
                i11 = R.layout.editor_sticker_pick_item;
            } else {
                i11 = R.layout.sticker_pick_item;
            }
            View viewCreateView = createView(i11, viewGroup, view);
            StickerPickerItem stickerPickerItem = (StickerPickerItem) viewCreateView.findViewById(R.id.sticker_picker_item);
            Sticker sticker = StickerPickerListFragment.this.selectedSticker;
            boolean z10 = false;
            int iStickerStatus = 1;
            if (sticker != null && Utils.isEqualsNotNull(sticker.id(), item.id())) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6 && !StickerPickerListFragment.this.editorTheme) {
                z10 = true;
            }
            stickerPickerItem.setSticker(item, z10, StickerPickerListFragment.this.cacheSticker);
            if (!StickerPickerListFragment.this.trial) {
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.membership_lock);
                ViewUtils.show(imageView, showMembershipLock(item));
                StickerCollection stickerCollection = StickerPickerListFragment.this.stickerCollection;
                if (stickerCollection != null && (restrictionInfo = stickerCollection.restrictionInfo) != null && restrictionInfo.restrictType == 4) {
                    imageView.setImageResource(R.drawable.ic_amino_plus_mini_lock_coins);
                } else {
                    imageView.setImageResource(R.drawable.ic_amino_plus_mini_lock);
                }
                View viewFindViewById = viewCreateView.findViewById(R.id.thumbnail);
                if (!canUseSticker(item) && !showMembershipLock(item)) {
                    f = 0.5f;
                } else {
                    f = 1.0f;
                }
                viewFindViewById.setAlpha(f);
            }
            if (StickerPickerListFragment.this.editorTheme) {
                EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) viewCreateView.findViewById(R.id.sticker_install_frame);
                if (StickerPickerListFragment.this.videoManager.obtainInstalledStickerInfo(item, StickerPickerListFragment.this.stickerCacheService.getLocalPath(item.stickerCollectionId, item.icon)) != null) {
                    iStickerStatus = 3;
                } else if (item.stickerStatus() != 0) {
                    iStickerStatus = item.stickerStatus();
                }
                item.stickerStatus = iStickerStatus;
                editorStickerInstallFrameView.setStickerStatus(item.stickerStatus());
                editorStickerInstallFrameView.setStickerSelected(z6);
                if (iStickerStatus == 2) {
                    StickerPickerListFragment stickerPickerListFragment = StickerPickerListFragment.this;
                    editorStickerInstallFrameView.bindSticker(item, stickerPickerListFragment.trial, stickerPickerListFragment.stickerCacheService);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onDetach() {
            super.onDetach();
            StickerCollection stickerCollection = StickerPickerListFragment.this.stickerCollection;
            if (stickerCollection != null && !TextUtils.isEmpty(stickerCollection.collectionId)) {
                StickerPickerListFragment.this.videoManager.removeViewInstallCollectionCallbacks(StickerPickerListFragment.this.stickerCollection.collectionId);
            }
        }
    }

    class AddAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public AddAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            StickerCollection stickerCollection = StickerPickerListFragment.this.stickerCollection;
            return (stickerCollection == null || !stickerCollection.isPersonal()) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            StickerPickerListFragment.this.stickerHelper.pickStickerImage(StickerPickerListFragment.this.mediaPickerFragment);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.sticker_add_item, viewGroup, view);
        }
    }

    class FavTopAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public FavTopAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.my_sticker_layout) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = FragmentWrapperActivity.intent(StickerCollectionManageListFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Keyboard");
            if (isGlobalInteractionScope()) {
                intent.putExtra("__communityId", 0);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.fav_sticker_pack_top, viewGroup, view);
            viewCreateView.findViewById(R.id.my_sticker_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class UserCreatedInfoAdapter extends NVAdapter {
        private View cell;
        StickerCollectionOwnStatusController storeItemOwnStatusController;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public UserCreatedInfoAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.cell == null) {
                this.cell = createView(R.layout.sticker_picker_user_created_info, viewGroup, view);
            }
            StoreItemNameView storeItemNameView = (StoreItemNameView) this.cell.findViewById(R.id.name_view);
            if (StickerPickerListFragment.this.editorTheme) {
                storeItemNameView.setTextColor(-1);
            }
            storeItemNameView.setStoreItem(StickerPickerListFragment.this.stickerCollection);
            storeItemNameView.setOnClickListener(this.subviewClickListener);
            if (StickerPickerListFragment.this.stickerCollection.isShared()) {
                View viewFindViewById = this.cell.findViewById(R.id.author_layout);
                viewFindViewById.setOnClickListener(this.subviewClickListener);
                TextView textView = (TextView) viewFindViewById.findViewById(R.id.nickname);
                User originalAuthor = StickerPickerListFragment.this.stickerCollection.getOriginalAuthor();
                textView.setText(originalAuthor == null ? null : originalAuthor.nickname());
                ViewUtils.show(viewFindViewById, originalAuthor != null && originalAuthor.isAccessibleByUser(null));
                TextView textView2 = (TextView) this.cell.findViewById(R.id.used_times);
                StickerPickerListFragment stickerPickerListFragment = StickerPickerListFragment.this;
                textView2.setText(stickerPickerListFragment.getString(R.string.used_n_times, com.narvii.util.text.TextUtils.numberFormat.format(stickerPickerListFragment.stickerCollection.usedCount)));
                ViewUtils.show(textView2, StickerPickerListFragment.this.stickerHelper.showStickerCollectionUsedTimes(StickerPickerListFragment.this.stickerCollection));
                textView2.setOnClickListener(this.subviewClickListener);
                StoreItemStatusView storeItemStatusView = (StoreItemStatusView) this.cell.findViewById(R.id.store_item_status_view);
                StickerPickerListFragment stickerPickerListFragment2 = StickerPickerListFragment.this;
                if (!stickerPickerListFragment2.trial || (stickerPickerListFragment2.stickerCollection.isTotalOwned() && StickerPickerListFragment.this.stickerCollection.isActivated)) {
                    storeItemStatusView.setVisibility(8);
                } else {
                    if (this.storeItemOwnStatusController == null) {
                        this.storeItemOwnStatusController = new StickerCollectionOwnStatusController(getParentContext(), storeItemStatusView) { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.UserCreatedInfoAdapter.1
                            @Override // com.narvii.monetization.StickerCollectionOwnStatusController
                            protected boolean disableRefreshMyCollectionList() {
                                return true;
                            }

                            @Override // com.narvii.monetization.StoreItemOwnStatusController
                            protected boolean sendNotificationAfterActivated() {
                                return true;
                            }

                            @Override // com.narvii.monetization.StickerCollectionOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
                            public void onActivated(boolean z6) {
                                super.onActivated(z6);
                                this.storeItemStatusView.setVisibility(8);
                                StickerPickerListFragment.this.stickerService.addStickerCollection((StickerCollection) this.iStoreItem);
                                Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.UserCreatedInfoAdapter.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (!StickerPickerListFragment.this.isDestoryed() && (StickerPickerListFragment.this.getParentFragment() instanceof StickerPickerTabFragment)) {
                                            ((StickerPickerTabFragment) StickerPickerListFragment.this.getParentFragment()).selectStickerCollection((StickerCollection) ((StoreItemOwnStatusController) AnonymousClass1.this).iStoreItem);
                                            StickerPickerListFragment.this.stickerService.refreshStickerCollectionInfo(true);
                                        }
                                    }
                                }, 50L);
                            }
                        };
                    }
                    storeItemStatusView.setVisibility(0);
                    this.storeItemOwnStatusController.setStoreItem(StickerPickerListFragment.this.stickerCollection);
                    this.storeItemOwnStatusController.source = "Keyboard";
                }
            } else if (StickerPickerListFragment.this.stickerHelper.isCreatedByMe(StickerPickerListFragment.this.stickerCollection)) {
                View viewFindViewById2 = this.cell.findViewById(R.id.edit_button);
                viewFindViewById2.setVisibility(0);
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
            return this.cell;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null) {
                if (view2.getId() == R.id.edit_button) {
                    StickerPickerListFragment.this.stickerHelper.onClickEditStickerCollectionButton(StickerPickerListFragment.this.stickerCollection);
                    return true;
                }
                if (view2.getId() == R.id.name_view || view2.getId() == R.id.author_layout || view2.getId() == R.id.used_times) {
                    StickerPickerListFragment.this.stickerHelper.onClickStickerCollection(StickerPickerListFragment.this.stickerCollection, null);
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int errorViewLayoutId() {
        return R.layout.error_view_scrollable;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isNestedScrollingChild() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public void setIsEditorTheme(boolean z6) {
        this.editorTheme = z6;
    }

    public void setStickerPreviewListener(StickerPreviewListener stickerPreviewListener) {
        this.stickerPreviewListener = stickerPreviewListener;
    }

    public void setStickerSelectListener(StickerSelectListener stickerSelectListener) {
        this.stickerSelectListener = stickerSelectListener;
    }

    private void refreshStickerCollectionInfo() {
        if (this.stickerCollection == null || this.requesting) {
            return;
        }
        this.requesting = true;
        this.error = null;
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/sticker-collection/" + this.stickerCollection.id()).param("includeStickers", Boolean.TRUE).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                super.onFinish(apiRequest, stickerCollectionResponse);
                StickerPickerListFragment.this.requesting = false;
                if (stickerCollectionResponse.stickerCollection != null) {
                    ((NotificationCenter) StickerPickerListFragment.this.getService("notification")).sendNotification(new Notification("update", stickerCollectionResponse.stickerCollection));
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                StickerPickerListFragment.this.requesting = false;
                StickerPickerListFragment.this.error = str;
                Adapter adapter = StickerPickerListFragment.this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private void setStickerList(ArrayList<Sticker> arrayList) {
        this.stickerList = arrayList;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.setStickerList(arrayList);
        }
        if (this.trial) {
            refreshIfStickerListNull();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExpireDialog() {
        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this);
        membershipExpireDialog.source = "Sticker (Dialog)";
        membershipExpireDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMembershipDialog() {
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this);
        membershipHintDialog.source = "Sticker (Dialog)";
        membershipHintDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProfileDialog() {
        new StickerCollectionProfileDialog(this, this.stickerCollection).show();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StickerCollection stickerCollection = this.stickerCollection;
        if (stickerCollection != null && stickerCollection.isPersonal()) {
            mergeAdapter.addAdapter(new FavTopAdapter(this));
        }
        this.paddingH = (int) (Math.min(Utils.dpToPx(getContext(), 400.0f), Utils.getScreenWidth(getContext())) * 0.05f);
        int iMin = (int) (Math.min(Utils.dpToPx(getContext(), 400.0f), Utils.getScreenWidth(getContext())) * 0.9f * 0.25f * 0.075f);
        int i10 = this.paddingH;
        final DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, i10, i10, iMin, iMin);
        divideColumnAdapter.setSupportLongClick(true);
        this.adapter = new Adapter(this, Object.class);
        MergeAdapter mergeAdapter2 = new MergeAdapter(this) { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.3
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                StickerPickerListFragment stickerPickerListFragment = StickerPickerListFragment.this;
                if (stickerPickerListFragment.stickerList != null) {
                    return null;
                }
                return stickerPickerListFragment.error;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return StickerPickerListFragment.this.stickerList != null;
            }
        };
        AddAdapter addAdapter = new AddAdapter(this);
        this.addAdapter = addAdapter;
        mergeAdapter2.addAdapter(addAdapter);
        mergeAdapter2.addAdapter(this.adapter, true);
        divideColumnAdapter.setAdapter(mergeAdapter2, 4);
        mergeAdapter.addAdapter(divideColumnAdapter);
        mergeAdapter.addAdapter(new SimpleViewAdapter(this) { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.4
            @Override // com.narvii.list.SimpleViewAdapter
            protected int getLayoutId() {
                return R.layout.sticker_list_empty_cell;
            }

            @Override // com.narvii.list.SimpleViewAdapter, android.widget.Adapter
            public int getCount() {
                return (divideColumnAdapter.getCount() != 0 || StickerPickerListFragment.this.stickerCollection == null) ? 0 : 1;
            }
        });
        StickerCollection stickerCollection2 = this.stickerCollection;
        if (stickerCollection2 != null && stickerCollection2.isUserCreated()) {
            UserCreatedInfoAdapter userCreatedInfoAdapter = new UserCreatedInfoAdapter(this);
            this.infoAdapter = userCreatedInfoAdapter;
            mergeAdapter.addAdapter(userCreatedInfoAdapter);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return getBooleanParam("tabBottom") ? layoutInflater.inflate(R.layout.fragment_sticker_list_tab_bottom, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_sticker_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        StickerCollection stickerCollection;
        if (this.trial && (stickerCollection = this.stickerCollection) != null && notification.action == "update" && (notification.obj instanceof StickerCollection) && Utils.isEqualsNotNull(stickerCollection.id(), ((StickerCollection) notification.obj).id())) {
            StickerCollection updatedStickerCollection = StickerCollection.getUpdatedStickerCollection(this.stickerCollection, (StickerCollection) notification.obj);
            this.stickerCollection = updatedStickerCollection;
            if (updatedStickerCollection != null) {
                setStickerList(updatedStickerCollection.stickerList);
            }
            UserCreatedInfoAdapter userCreatedInfoAdapter = this.infoAdapter;
            if (userCreatedInfoAdapter != null) {
                userCreatedInfoAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        this.stickerHelper.onPickMediaResult(list, bundle, this.stickerCollection.id(), null);
    }

    public void setSelectedSticker(Sticker sticker) {
        this.selectedSticker = sticker;
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public void setStickerCollection(StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
        if (stickerCollection != null) {
            setStickerList(stickerCollection.stickerList);
        }
        if (this.adapter != null) {
            this.addAdapter.notifyDataSetChanged();
        }
    }

    private void refreshIfStickerListNull() {
        StickerCollection stickerCollection;
        if (getActivity() != null && this.stickerList == null && (stickerCollection = this.stickerCollection) != null && !stickerCollection.isDisabled() && !this.stickerCollection.isDeleted()) {
            refreshStickerCollectionInfo();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return -getActionBarOverlaySize();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.requesting = bundle.getBoolean("requesting");
        }
        this.stickerCacheService = (StickerCacheService) getService("stickerCache");
        this.stickerService = (StickerService) getService("sticker");
        this.membershipService = (MembershipService) getService("membership");
        this.videoManager = (VideoManager) getService("videoManager");
        this.stickerHelper = new StickerHelper(this);
        this.trial = getBooleanParam("trial", false);
        StickerCollection stickerCollection = (StickerCollection) JacksonUtils.readAs(getStringParam("stickerCollection"), StickerCollection.class);
        if (stickerCollection != null) {
            StickerCollection stickerCollection2 = this.stickerCollection;
            if (stickerCollection2 != null && stickerCollection2.stickerList != null && Utils.isEqualsNotNull(stickerCollection2.id(), stickerCollection.id())) {
                stickerCollection.stickerList = new ArrayList<>(this.stickerCollection.stickerList);
            }
            setStickerCollection(stickerCollection);
        }
        this.cacheSticker = !this.trial;
        StickerCollection stickerCollection3 = this.stickerCollection;
        if (stickerCollection3 != null && stickerCollection3.isPersonal()) {
            MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
            this.mediaPickerFragment = mediaPickerFragment;
            if (mediaPickerFragment == null) {
                this.mediaPickerFragment = new MediaPickerFragment();
                getFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").k();
            }
            this.mediaPickerFragment.addOnResultListener(this);
            this.mediaPickerFragment.setRequestActivityResultCallback(new Callback<Boolean>() { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.2
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                }
            });
        }
        StickerCollection stickerCollection4 = this.stickerCollection;
        if (stickerCollection4 != null && stickerCollection4.getRestrictionInfo() != null && this.stickerCollection.getRestrictionInfo().restrictType == 2) {
            MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        }
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        refreshStickerCollectionInfo();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        if (this.trial) {
            refreshStickerCollectionInfo();
        } else {
            this.stickerService.refreshStickerCollectionInfo(true);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            bundle.putBoolean("requesting", this.requesting);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        ListView listView = getListView();
        if (listView instanceof NVListView) {
            int i11 = 1;
            StickerPreviewTouchListener stickerPreviewTouchListener = new StickerPreviewTouchListener(this.stickerCollection, !this.trial, listView, this.swipeLayout, this.adapter, 4, this.paddingH) { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.5
                @Override // com.narvii.monetization.sticker.StickerPreviewTouchListener
                protected void onTouchUp() {
                    if (StickerPickerListFragment.this.stickerPreviewListener != null) {
                        StickerPickerListFragment.this.stickerPreviewListener.onStickerPreviewEnd();
                    }
                }
            };
            this.previewTouchListener = stickerPreviewTouchListener;
            stickerPreviewTouchListener.setPositionOffset(this.addAdapter.getCount());
            listView.setOnTouchListener(this.previewTouchListener);
            StickerPreviewTouchListener stickerPreviewTouchListener2 = this.previewTouchListener;
            AddAdapter addAdapter = this.addAdapter;
            if (addAdapter == null || addAdapter.getCount() <= 0) {
                i11 = 0;
            }
            stickerPreviewTouchListener2.setRowOffset(i11);
            NVListView nVListView = (NVListView) listView;
            nVListView.setInterceptTouchEventListener(this.previewTouchListener);
            nVListView.setDispatchTouchEventEndListener(this.previewTouchListener);
        }
        StickerCollection stickerCollection = this.stickerCollection;
        if (stickerCollection != null) {
            if (stickerCollection.isDisabled() || this.stickerCollection.isDeleted()) {
                view.findViewById(R.id.list_frame).setVisibility(8);
                view.findViewById(R.id.not_available_layout).setVisibility(0);
                TextView textView = (TextView) view.findViewById(R.id.not_available_text);
                if (this.editorTheme) {
                    textView.setTextColor(getResources().getColor(R.color.white));
                }
                if (this.stickerCollection.isShared()) {
                    i10 = R.string.sorry_this_sticker_pack_is_no_longer_available;
                } else {
                    i10 = R.string.this_sticker_pack_disabled;
                }
                textView.setText(i10);
                view.findViewById(R.id.remove_sticker_pack).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.StickerPickerListFragment.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        StickerPickerListFragment.this.stickerHelper.deleteStickerCollection(StickerPickerListFragment.this.stickerCollection);
                    }
                });
            }
        }
    }
}
