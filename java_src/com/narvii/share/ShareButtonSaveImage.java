package com.narvii.share;

import android.app.Activity;
import android.graphics.Bitmap;
import com.narvii.app.IPermissionResultDispatcher;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.media.SaveImageHelper;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ShareButtonSaveImage extends ShareButtonCustomInfo implements PermissionListener {
    SharePayload pending;

    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getStatSelectionForShare() {
        return "Save Image";
    }

    public ShareButtonSaveImage(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.save_image;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_dialog_save_image;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(SharePayload sharePayload) {
        NVPermission.Builder builder;
        this.pending = sharePayload;
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
    public void onPermissionGranted(int i) {
        SharePayload sharePayload = this.pending;
        if (sharePayload == null) {
            return;
        }
        SaveImageHelper saveImageHelper = new SaveImageHelper(this.nvContext);
        Bitmap bitmap = sharePayload.bitmap;
        if (bitmap != null) {
            saveImageHelper.save(bitmap, true);
        } else {
            saveImageHelper.save(sharePayload.mediaUrl, true);
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
        if (z) {
            NVPermission.showDeniedDialog(this.nvContext.getContext());
        }
    }
}
