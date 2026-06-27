package com.narvii.sharedfolder;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressHorizontalDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedPhotoPostHelper implements PostListener {
    String albumId;
    NVContext nvContext;
    public final PostHelper postHelper;
    ProgressHorizontalDialog progressDialog;
    public boolean showAddAlbumAlert = true;
    public boolean showAddAlbumAlertImmediately = false;
    Callback successCallback;

    public SharedPhotoPostHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.postHelper = new PostHelper(nVContext);
    }

    public void uploadMedia(List<Media> list, String str, Callback callback) {
        if (list == null) {
            return;
        }
        this.albumId = str;
        this.successCallback = callback;
        SharedPhotoPost sharedPhotoPost = new SharedPhotoPost();
        sharedPhotoPost.mediaList = list;
        sharedPhotoPost.folderId = str;
        ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/shared-folder/upload").build();
        this.postHelper.setPostListener(this);
        this.postHelper.setDefaultPhotoUploadTarget(NVImageView.TYPE_SHARED_FOLDER_IMAGE);
        this.postHelper.startPost(sharedPhotoPost, apiRequestBuild, UploadPhotoResponse.class);
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(final PostHelper postHelper) {
        this.progressDialog = new ProgressHorizontalDialog(this.nvContext.getContext());
        this.progressDialog.setText(R.string.uploading_to_shared_folder);
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.sharedfolder.SharedPhotoPostHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                postHelper.cancel();
            }
        });
        try {
            this.progressDialog.show();
        } catch (Exception e) {
            Log.e("fail to show progress dialog", e);
        }
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i, int i2) {
        ProgressHorizontalDialog progressHorizontalDialog;
        if (isDestoryed() || (progressHorizontalDialog = this.progressDialog) == null || !progressHorizontalDialog.isShowing()) {
            return;
        }
        this.progressDialog.setProgress(i, i2);
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        if (isDestoryed()) {
            return;
        }
        UploadPhotoResponse uploadPhotoResponse = (UploadPhotoResponse) apiResponse;
        NotificationCenter notificationCenter = (NotificationCenter) this.nvContext.getService("notification");
        Notification notification = new Notification();
        if (this.albumId == null) {
            notification.obj = new PhotoUpload(uploadPhotoResponse.fileIdList);
        } else {
            NVToast.makeText(this.nvContext.getContext(), R.string.added_to_album, 0).show();
            notification.obj = new PhotoAdd(this.albumId);
        }
        notification.action = "new";
        notificationCenter.sendNotification(notification);
        Callback callback = this.successCallback;
        if (callback != null) {
            callback.call(null);
        }
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        if (this.albumId == null && this.showAddAlbumAlert) {
            AddAlbumDialogCallback addAlbumDialogCallback = new AddAlbumDialogCallback(uploadPhotoResponse.fileIdList);
            if (this.showAddAlbumAlertImmediately) {
                if (this.nvContext.getContext() instanceof NVActivity) {
                    addAlbumDialogCallback.call((NVActivity) this.nvContext.getContext());
                    return;
                }
                return;
            }
            NVActivity.addPendingForAttach(addAlbumDialogCallback);
        }
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
        if (isDestoryed()) {
            return;
        }
        ProgressHorizontalDialog progressHorizontalDialog = this.progressDialog;
        if (progressHorizontalDialog != null && progressHorizontalDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        showErrorMsg(i, str);
    }

    protected void showErrorMsg(int i, String str) {
        if (i > 0 && ApiService.shouldShowErrMessage(this.nvContext.getContext())) {
            new AlertDialog.Builder(this.nvContext.getContext()).setTitle(String.valueOf(i)).setMessage(str).setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER).show();
        } else {
            NVToast.makeText(this.nvContext.getContext(), str, 0).show();
        }
    }

    public boolean isDestoryed() {
        return Utils.isDestoryed(this.nvContext);
    }
}
