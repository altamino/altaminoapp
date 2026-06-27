package com.narvii.monetization.sticker;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment;
import com.narvii.monetization.sticker.manage.CustomizedStickerListFragment;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.monetization.sticker.model.StickerResponse;
import com.narvii.monetization.sticker.post.StickerCollectionPost;
import com.narvii.monetization.sticker.post.StickerCollectionPostActivity;
import com.narvii.monetization.sticker.post.UgcStickerCollectionDetailFragment;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.photos.PhotoUploadSpec;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.emojione.EmojionePng;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import java.io.File;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerHelper {
    public static final int MIN_GIF_SIZE = 68;
    public static final int MIN_IMAGE_SIZE = 128;
    public static final String STICKER_PENDING_REQUEST_COUNT_CAHNGE = "com.narvii.action.PENDING_STICKER_CHANGED";
    MembershipService membershipService;
    NVContext nvContext;
    private ProgressDialog progressDialog;
    StickerCacheService stickerCacheService;
    StickerService stickerService;

    public StickerHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.stickerCacheService = (StickerCacheService) nVContext.getService("stickerCache");
        this.stickerService = (StickerService) nVContext.getService("sticker");
    }

    public boolean canUseSticker(StickerCollection stickerCollection, Sticker sticker) {
        if (sticker == null || stickerCollection == null) {
            return false;
        }
        RestrictionInfo restrictionInfo = stickerCollection.getRestrictionInfo();
        if (sticker.isGift()) {
            return true;
        }
        if (restrictionInfo != null) {
            if (restrictionInfo.restrictType == 3 && stickerCollection.isTotalOwned()) {
                return true;
            }
            if (restrictionInfo.restrictType == 4 && stickerCollection.isTotalOwned()) {
                return true;
            }
            if (restrictionInfo.restrictType == 2 && this.membershipService.isMembership() && stickerCollection.isTotalOwned()) {
                return true;
            }
        }
        return false;
    }

    public void checkStickerCollectionCreatable(int i, Callback<ApiResponse> callback) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = callback;
        final ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/sticker-collection/creatable-check").param("collectionType", Integer.valueOf(i)).build();
        final ApiService apiService = (ApiService) this.nvContext.getService("api");
        apiService.exec(apiRequestBuild, progressDialog.dismissListener);
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.sticker.StickerHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                apiService.abort(apiRequestBuild);
            }
        });
        progressDialog.show();
    }

    public String getStickerMessageImageUrl(ChatMessage chatMessage) {
        if (chatMessage == null || !chatMessage.isStickerMessage()) {
            return null;
        }
        if (chatMessage.mediaValue.startsWith("ndcsticker://e/")) {
            return "assets://" + EmojionePng.getAssetsPath(new String(StringUtils.hex2bytes(chatMessage.mediaValue.substring(15))));
        }
        Sticker stickerInfo = chatMessage.getStickerInfo();
        String localUri = this.stickerCacheService.getLocalUri(stickerInfo != null ? stickerInfo.stickerCollectionId : null, chatMessage.mediaValue);
        return localUri != null ? localUri : chatMessage.mediaValue;
    }

    public void onClickStickerCollection(StickerCollection stickerCollection, String str) {
        onClickStickerCollection(stickerCollection, str, false);
    }

    public void onClickStickerCollection(final StickerCollection stickerCollection, String str, boolean z) {
        if (stickerCollection.isPersonal()) {
            Intent intent = FragmentWrapperActivity.intent(CustomizedStickerListFragment.class);
            intent.putExtra("stickerCollection", JacksonUtils.writeAsString(stickerCollection));
            this.nvContext.startActivity(intent);
            return;
        }
        if (stickerCollection.isNormal() || stickerCollection.isLocalMood()) {
            Intent intent2 = StickerCollectionDetailFragment.intent(stickerCollection);
            intent2.putExtra("Source", str);
            if (z && (this.nvContext instanceof NVFragment)) {
                intent2.putExtra("finishWithResult", true);
                ((NVFragment) this.nvContext).startActivityForResult(intent2, 102);
                return;
            } else {
                this.nvContext.startActivity(intent2);
                return;
            }
        }
        if (stickerCollection.isUserCreated()) {
            if (stickerCollection.isDisabled() || stickerCollection.isDeleted()) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
                aCMAlertDialog.setMessage(isCreatedByMe(stickerCollection) ? R.string.delete_disabled_sticker_pack_confirm : R.string.delete_not_available_sticker_pack_confirm);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerHelper.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        StickerHelper.this.deleteStickerCollection(stickerCollection);
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
                return;
            }
            Intent intent3 = FragmentWrapperActivity.intent(UgcStickerCollectionDetailFragment.class);
            intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(stickerCollection));
            intent3.putExtra("id", stickerCollection.id());
            intent3.putExtra("Source", str);
            this.nvContext.startActivity(intent3);
        }
    }

    public boolean isStickerPackNew(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return false;
        }
        return stickerCollection.isNew;
    }

    public boolean showStickerCollectionUsedTimes(StickerCollection stickerCollection) {
        return stickerCollection != null && stickerCollection.usedCount >= 50;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editStickerCollection(StickerCollection stickerCollection, final boolean z) {
        if (stickerCollection != null && isCreatedByMe(stickerCollection)) {
            final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
            progressDialog.show();
            ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("/sticker-collection/" + stickerCollection.id()).param("includeStickers", true).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) stickerCollectionResponse);
                    progressDialog.dismiss();
                    StickerCollection stickerCollection2 = stickerCollectionResponse.stickerCollection;
                    Intent intent = new Intent(StickerHelper.this.nvContext.getContext(), (Class<?>) StickerCollectionPostActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new StickerCollectionPost(stickerCollection2)));
                    intent.putExtra("collection", JacksonUtils.writeAsString(stickerCollection2));
                    intent.putExtra("collectionId", stickerCollection2.id());
                    intent.putExtra("fromDetail", z);
                    StickerHelper.this.nvContext.startActivity(intent);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    progressDialog.dismiss();
                    NVToast.makeText(StickerHelper.this.nvContext.getContext(), str, 0).show();
                }
            });
        }
    }

    public void onClickEditStickerCollectionButton(StickerCollection stickerCollection) {
        onClickEditStickerCollectionButton(stickerCollection, false);
    }

    public void onClickEditStickerCollectionButton(final StickerCollection stickerCollection, final boolean z) {
        if (stickerCollection != null && isCreatedByMe(stickerCollection)) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.nvContext.getContext());
            actionSheetDialog.addItem(R.string.edit_sticker_pack, false);
            actionSheetDialog.addItem(R.string.delete_sticker_pack, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerHelper.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        StickerHelper.this.editStickerCollection(stickerCollection, z);
                        return;
                    }
                    if (i != 1) {
                        return;
                    }
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(StickerHelper.this.nvContext.getContext());
                    aCMAlertDialog.setMessage(R.string.delete_sticker_confirm);
                    aCMAlertDialog.addButton(R.string.no, null);
                    aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerHelper.4.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            StickerHelper.this.deleteStickerCollection(stickerCollection);
                        }
                    });
                    aCMAlertDialog.show();
                }
            });
            actionSheetDialog.show();
        }
    }

    public boolean isCreatedByMe(StickerCollection stickerCollection) {
        return stickerCollection != null && stickerCollection.isUserCreated() && isAuthorMe(stickerCollection);
    }

    public boolean isAuthorMe(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return false;
        }
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        if (accountService.getUserProfile() == null) {
            return false;
        }
        return Utils.isEqualsNotNull(accountService.getUserId(), stickerCollection.uid());
    }

    public boolean isContributedByMe(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return false;
        }
        if (stickerCollection.isShared()) {
            User originalAuthor = stickerCollection.getOriginalAuthor();
            User userProfile = ((AccountService) this.nvContext.getService("account")).getUserProfile();
            return Utils.isEqualsNotNull(originalAuthor == null ? null : originalAuthor.uid(), userProfile != null ? userProfile.uid() : null);
        }
        return isCreatedByMe(stickerCollection);
    }

    public void deleteStickerFromShareSection(String str, final StoreItem storeItem) {
        if (storeItem == null || str == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().delete().path("store/sections/" + str + "/items/target-object/" + storeItem.refObjectId).build(), new ApiResponseListener<StickerResponse>(StickerResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str2, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerResponse stickerResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerResponse);
                progressDialog.dismiss();
                ((NotificationCenter) StickerHelper.this.nvContext.getService("notification")).sendNotification(new Notification("delete", storeItem));
            }
        });
    }

    public void deleteDisabledSticker(final String str, final Sticker sticker, final Callback<ApiResponse> callback) {
        if (str == null || sticker == null) {
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(R.string.delete_disabled_sticker);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.StickerHelper.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProgressDialog progressDialog = new ProgressDialog(StickerHelper.this.nvContext.getContext());
                progressDialog.successListener = callback;
                progressDialog.show();
                ((ApiService) StickerHelper.this.nvContext.getService("api")).exec(ApiRequest.builder().path(String.format("sticker-collection/%s/stickers/%s", str, sticker.id())).delete().build(), progressDialog.dismissListener);
            }
        }, SupportMenu.CATEGORY_MASK);
        aCMAlertDialog.show();
    }

    public void deleteStickerCollection(final StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().delete().path("sticker-collection/" + stickerCollection.id()).build(), new ApiResponseListener<StickerResponse>(StickerResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerResponse stickerResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerResponse);
                progressDialog.dismiss();
                StickerHelper.this.showToast(R.string.removed);
                StickerHelper.this.stickerService.removeStickerCollection(stickerCollection);
                ((NotificationCenter) StickerHelper.this.nvContext.getService("notification")).sendNotification(new Notification("delete", stickerCollection));
            }
        });
    }

    public void saveAsFavorite(Sticker sticker) {
        if (sticker == null) {
            return;
        }
        saveAsFavorite(sticker.icon, sticker.name);
    }

    public void saveAsFavorite(String str) {
        saveAsFavorite(str, null);
    }

    private void saveAsFavorite(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("sticker/save-as").param("icon", str).param(AppMeasurementSdk.ConditionalUserProperty.NAME, str2).build(), new ApiResponseListener<StickerResponse>(StickerResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str3, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerResponse stickerResponse) throws Exception {
                Sticker sticker;
                super.onFinish(apiRequest, (ApiRequest) stickerResponse);
                progressDialog.dismiss();
                if (stickerResponse != null && (sticker = stickerResponse.sticker) != null && !TextUtils.isEmpty(sticker.stickerCollectionId)) {
                    StickerHelper.this.stickerService.refreshStickerCollection(stickerResponse.sticker.stickerCollectionId);
                }
                StickerHelper.this.showToast(R.string.added);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToast(int i) throws Resources.NotFoundException {
        if (this.nvContext.getContext() instanceof NVActivity) {
            ((NVActivity) this.nvContext.getContext()).toastImageWithText(ContextCompat.getDrawable(this.nvContext.getContext(), R.drawable.check), this.nvContext.getContext().getString(i), R.anim.toast_scale_in, 500L);
        } else {
            NVToast.makeText(this.nvContext.getContext(), i, 0).show();
        }
    }

    public void showExpireDialog() {
        MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this.nvContext);
        membershipExpireDialog.source = "Sticker (Dialog)";
        membershipExpireDialog.show();
    }

    public void showMembershipDialog() {
        MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this.nvContext);
        membershipHintDialog.source = "Sticker (Dialog)";
        membershipHintDialog.show();
    }

    public boolean greyStickerCollection(StickerCollection stickerCollection) {
        RestrictionInfo restrictionInfo;
        if (stickerCollection != null && (restrictionInfo = stickerCollection.getRestrictionInfo()) != null) {
            if (restrictionInfo.restrictType == 3 && stickerCollection.isTotalOwned()) {
                return true;
            }
            if (restrictionInfo.restrictType == 4 && stickerCollection.isTotalOwned()) {
                return true;
            }
            if (restrictionInfo.restrictType == 2 && this.membershipService.isMembership() && stickerCollection.isTotalOwned()) {
                return true;
            }
        }
        return false;
    }

    public void pickStickerImage(MediaPickerFragment mediaPickerFragment, boolean z) {
        if (mediaPickerFragment == null) {
            return;
        }
        File file = new File(this.nvContext.getContext().getFilesDir(), "photo");
        file.mkdirs();
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.setSize(128, 128, 68, 68);
        mediaPickerConfiguration.isSingle = true;
        mediaPickerConfiguration.isGiphySticker = true;
        mediaPickerConfiguration.optionList = 12;
        if (!z) {
            mediaPickerConfiguration.isGalleryNoCopy = true;
        }
        mediaPickerFragment.pickMedia(file, (Bundle) null, mediaPickerConfiguration);
    }

    public void pickStickerImage(MediaPickerFragment mediaPickerFragment) {
        if (mediaPickerFragment == null) {
            return;
        }
        pickStickerImage(mediaPickerFragment, true);
    }

    public void onPickMediaResult(List<Media> list, Bundle bundle, final String str, final Callback<Sticker> callback) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String str2 = list.get(0).url;
        this.progressDialog = new ProgressDialog(this.nvContext.getContext());
        this.progressDialog.show();
        ((PhotoManager) this.nvContext.getService("photo")).upload(PhotoUploadSpec.builder(str2).target("sticker").keepPng().build(), new PhotoUploadListener() { // from class: com.narvii.monetization.sticker.StickerHelper.9
            @Override // com.narvii.photos.PhotoUploadListener
            public void onProgress(String str3, int i, int i2) {
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFinish(String str3, String str4) {
                StickerHelper.this.createSticker(str, str4, callback);
            }

            @Override // com.narvii.photos.PhotoUploadListener
            public void onFail(String str3, int i, String str4, Throwable th) {
                StickerHelper.this.progressDialog.dismiss();
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str4, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSticker(final String str, String str2, final Callback<Sticker> callback) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("sticker-collection/" + str + "/stickers").param("icon", str2).build(), new ApiResponseListener<StickerResponse>(StickerResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerResponse stickerResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) stickerResponse);
                Sticker sticker = stickerResponse.sticker;
                StickerHelper.this.progressDialog.dismiss();
                if (sticker == null) {
                    return;
                }
                ((StickerService) StickerHelper.this.nvContext.getService("sticker")).addSticker(str, sticker);
                StickerHelper.this.stickerCacheService.downloadSticker(sticker);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(sticker);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                StickerHelper.this.progressDialog.dismiss();
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str3, 0).show();
            }
        });
    }

    public boolean isStickerCollectionValid(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return false;
        }
        return stickerCollection.isLocalMood() || stickerCollection.isNormal() || stickerCollection.isPersonal() || stickerCollection.isUserCreated();
    }

    public void sendPendingRequestCountRequest(final Callback<PendingStickerResponse> callback) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("/store/share-requests/pending-check").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 114).build(), new ApiResponseListener<PendingStickerResponse>(PendingStickerResponse.class) { // from class: com.narvii.monetization.sticker.StickerHelper.11
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, PendingStickerResponse pendingStickerResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) pendingStickerResponse);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(pendingStickerResponse);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(StickerHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
    }
}
