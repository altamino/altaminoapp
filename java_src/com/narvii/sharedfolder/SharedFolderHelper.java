package com.narvii.sharedfolder;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Media;
import com.narvii.model.SharedAlbum;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Callback;
import com.narvii.util.CheckEligibleHelper;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PrivilegeUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.InputDialog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedFolderHelper {
    ApiService apiService;
    CheckEligibleHelper checkEligibleHelper;
    CommunityConfigHelper communityConfigHelper;
    NVContext nvContext;
    PhotoManager photoManager;
    public String source;
    public String sourceExtra;

    public SharedFolderHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.apiService = (ApiService) nVContext.getService("api");
        this.checkEligibleHelper = new CheckEligibleHelper(nVContext);
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        this.photoManager = (PhotoManager) nVContext.getService("photo");
    }

    public boolean canManageAlbum() {
        return PrivilegeUtils.visibleToUser(this.communityConfigHelper.getPrivilege(Module.albumManagePath), ((AccountService) this.nvContext.getService("account")).getUserProfile());
    }

    public boolean canUploadPhoto() {
        return PrivilegeUtils.visibleToUser(this.communityConfigHelper.getPrivilege(Module.photoUploadPath), ((AccountService) this.nvContext.getService("account")).getUserProfile());
    }

    protected void checkUploadPhotoEligible(Callback callback) {
        this.checkEligibleHelper.checkEligible("shared-folder", "image-upload", callback);
    }

    protected boolean ifShowAlbumLockedDialog(NVContext nVContext, SharedAlbum sharedAlbum) {
        if (!sharedAlbum.isLocked()) {
            return false;
        }
        User userProfile = ((AccountService) nVContext.getService("account")).getUserProfile();
        if (userProfile != null && userProfile.isCurator()) {
            return false;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(nVContext.getContext());
        aCMAlertDialog.setMessage(R.string.album_locked_message);
        aCMAlertDialog.addButton(android.R.string.ok, null);
        aCMAlertDialog.show();
        return true;
    }

    protected void checkAlbumManageEligible(Callback callback) {
        this.checkEligibleHelper.checkEligible("shared-folder", "album-management", callback);
    }

    public void showUploadChooseSourceDialog(final Context context, final String str, final Callback<Object> callback) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        ArrayList arrayList = new ArrayList();
        arrayList.add(((Object) context.getText(R.string.upload_new_photos)) + " ⬆");
        arrayList.add(context.getText(R.string.from_my_uploads));
        arrayList.add(context.getText(R.string.from_other_shared_album));
        builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.sharedfolder.SharedFolderHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    SharedFolderHelper.this.checkUploadPhotoEligible(callback);
                    return;
                }
                if (i != 1) {
                    if (i == 2) {
                        SharedFolderHelper.this.checkAlbumManageEligible(new Callback() { // from class: com.narvii.sharedfolder.SharedFolderHelper.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                                intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_CHOOSE_PHOTO);
                                intent.putExtra("filterAlbumId", str);
                                intent.putExtra("toAlbumId", str);
                                context.startActivity(intent);
                            }
                        });
                    }
                } else {
                    Intent intent = FragmentWrapperActivity.intent(MyUploadsSelectFragment.class);
                    intent.putExtra("selectMode", "pickUpload");
                    intent.putExtra("toAlbumId", str);
                    context.startActivity(intent);
                }
            }
        });
        builder.show();
    }

    public void updateSharedPhotoTitle(String str, String str2, final Callback callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("shared-folder/files/" + str + "/title").param("title", str2).build(), new ApiResponseListener<SharedFileResponse>(SharedFileResponse.class) { // from class: com.narvii.sharedfolder.SharedFolderHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SharedFileResponse sharedFileResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) sharedFileResponse);
                ((NotificationCenter) SharedFolderHelper.this.nvContext.getService("notification")).sendNotification(new Notification("update", sharedFileResponse.object()));
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
                NVToast.makeText(SharedFolderHelper.this.nvContext.getContext(), str3, 0).show();
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
            }
        });
    }

    public void addPhotosFromPosts(String str, List<Media> list, String str2, int i, final Callback<List<String>> callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        ApiRequest.Builder builderParam = ApiRequest.builder().post().path("shared-folder/upload").param("mediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        if (str != null) {
            builderParam.param("folderId", str);
        }
        builderParam.param("referObjectId", str2);
        builderParam.param("referObjectType", Integer.valueOf(i));
        builderParam.param("type", "fromObject");
        ((ApiService) this.nvContext.getService("api")).exec(builderParam.build(), new ApiResponseListener<UploadPhotoResponse>(UploadPhotoResponse.class) { // from class: com.narvii.sharedfolder.SharedFolderHelper.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UploadPhotoResponse uploadPhotoResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) uploadPhotoResponse);
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(uploadPhotoResponse.fileIdList);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list2, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list2, str3, apiResponse, th);
                NVToast.makeText(SharedFolderHelper.this.nvContext.getContext(), str3, 0).show();
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
            }
        });
    }

    public void addPhotosToAlbum(final String str, Collection<String> collection, final Callback callback) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.sharedfolder.SharedFolderHelper.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(SharedFolderHelper.this.nvContext.getContext(), R.string.added_to_album, 0).show();
                if (str != null) {
                    NotificationCenter notificationCenter = (NotificationCenter) SharedFolderHelper.this.nvContext.getService("notification");
                    Notification notification = new Notification();
                    notification.obj = new PhotoAdd(str);
                    notification.action = "new";
                    notificationCenter.sendNotification(notification);
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        };
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next());
        }
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("shared-folder/folders/" + str + "/files").param("fileIdList", arrayNodeCreateArrayNode).param("action", "add").build(), progressDialog.dismissListener);
    }

    protected void removePhotosFromAlbum(String str, Collection<String> collection, final Callback callback) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.sharedfolder.SharedFolderHelper.5
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        };
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next());
        }
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("shared-folder/folders/" + str + "/files").param("fileIdList", arrayNodeCreateArrayNode).param("action", "remove").build(), progressDialog.dismissListener);
    }

    protected void deletePhotos(final NVContext nVContext, final List<String> list, final Callback callback) {
        ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.sharedfolder.SharedFolderHelper.6
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NotificationCenter notificationCenter = (NotificationCenter) nVContext.getService("notification");
                Notification notification = new Notification();
                notification.action = "delete";
                notification.obj = new PhotoDelete(list);
                notificationCenter.sendNotification(notification);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        };
        progressDialog.show();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next());
        }
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().post().path("shared-folder/files/batch-delete").param("fileIdList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    public void showAddAlbumDialog() {
        showAddAlbumDialog(null, null);
    }

    /* renamed from: com.narvii.sharedfolder.SharedFolderHelper$7, reason: invalid class name */
    class AnonymousClass7 implements Callback {
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ List val$fileIdList;

        AnonymousClass7(List list, Callback callback) {
            this.val$fileIdList = list;
            this.val$callback = callback;
        }

        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            final InputDialog inputDialog = new InputDialog(SharedFolderHelper.this.nvContext.getContext()) { // from class: com.narvii.sharedfolder.SharedFolderHelper.7.1
                @Override // com.narvii.widget.InputDialog
                protected void enableActionButton(View view, boolean z) {
                    if (view == null) {
                        return;
                    }
                    view.setBackgroundDrawable(getContext().getResources().getDrawable(z ? R.drawable.button_round_green : R.drawable.button_round_gray));
                    view.setClickable(z);
                }
            };
            inputDialog.editLimit = 30;
            inputDialog.setTitle(R.string.new_album);
            inputDialog.edit.setHint(R.string.title_ellipsis);
            inputDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
            inputDialog.addButton(R.string.create, 4, (View.OnClickListener) null).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.sharedfolder.SharedFolderHelper.7.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    final ProgressDialog progressDialog = new ProgressDialog(SharedFolderHelper.this.nvContext.getContext());
                    progressDialog.show();
                    SharedFolderHelper.this.apiService.exec(ApiRequest.builder().post().path("shared-folder/folders").param("title", inputDialog.edit.getText()).build(), new ApiResponseListener<SharedAlbumResponse>(SharedAlbumResponse.class) { // from class: com.narvii.sharedfolder.SharedFolderHelper.7.2.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i, list, str, apiResponse, th);
                            NVToast.makeText(SharedFolderHelper.this.nvContext.getContext(), str, 0).show();
                            try {
                                progressDialog.dismiss();
                            } catch (Exception unused) {
                            }
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, SharedAlbumResponse sharedAlbumResponse) throws Exception {
                            super.onFinish(apiRequest, (ApiRequest) sharedAlbumResponse);
                            try {
                                inputDialog.dismiss();
                                progressDialog.dismiss();
                            } catch (Exception unused) {
                            }
                            NotificationCenter notificationCenter = (NotificationCenter) SharedFolderHelper.this.nvContext.getService("notification");
                            Notification notification = new Notification();
                            notification.action = "new";
                            notification.obj = sharedAlbumResponse.folder;
                            notificationCenter.sendNotification(notification);
                            try {
                                if (CollectionUtils.isEmpty(AnonymousClass7.this.val$fileIdList)) {
                                    Intent intent = FragmentWrapperActivity.intent(SharedAlbumDetailFragment.class);
                                    intent.putExtra("id", sharedAlbumResponse.folder.id());
                                    intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(sharedAlbumResponse.folder));
                                    intent.putExtra("Source", "All Albums");
                                    SharedFolderHelper.this.nvContext.getContext().startActivity(intent);
                                } else if (AnonymousClass7.this.val$callback != null) {
                                    AnonymousClass7.this.val$callback.call(sharedAlbumResponse);
                                }
                            } catch (Exception e) {
                                Log.e(e.getMessage());
                            }
                        }
                    });
                }
            });
            inputDialog.show();
        }
    }

    public void showAddAlbumDialog(List<String> list, Callback<SharedAlbumResponse> callback) {
        checkAlbumManageEligible(new AnonymousClass7(list, callback));
    }
}
