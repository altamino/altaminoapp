package com.narvii.share;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Build;
import com.narvii.app.IPermissionResultDispatcher;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.media.SaveImageHelper;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class ShareButtonSaveImage extends ShareButtonCustomInfo implements PermissionListener {
    SharePayload pending;

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_dialog_save_image;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getStatSelectionForShare() {
        return "Save Image";
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.save_image;
    }

    private void saveImage() throws Throwable {
        SharePayload sharePayload = this.pending;
        if (sharePayload == null) {
            return;
        }
        SaveImageHelper saveImageHelper = new SaveImageHelper(this.nvContext);
        Bitmap bitmap = sharePayload.bitmap;
        if (bitmap != null) {
            saveImageHelper.save(bitmap);
        } else {
            saveImageHelper.save(sharePayload.mediaUrl);
        }
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(SharePayload sharePayload) throws Throwable {
        NVPermission.Builder builder;
        this.pending = sharePayload;
        if (Build.VERSION.SDK_INT >= 30) {
            saveImage();
            return;
        }
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            builder = NVPermission.builder((NVActivity) ((NVFragment) obj).getActivity());
        } else {
            builder = obj instanceof NVActivity ? NVPermission.builder((Activity) obj) : null;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof IPermissionResultDispatcher) {
            ((IPermissionResultDispatcher) nVContext).registerPermissionResult(201, this);
        }
        if (builder != null) {
            builder.permissionListener(this).permission("android.permission.WRITE_EXTERNAL_STORAGE").requestCode(201).request();
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i10, boolean z6, ArrayList<String> arrayList) {
        if (z6) {
            NVPermission.showDeniedDialog(this.nvContext.getContext());
        }
    }

    public ShareButtonSaveImage(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) throws Throwable {
        saveImage();
    }
}
