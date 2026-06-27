package com.narvii.share;

import android.app.Activity;
import com.narvii.app.IPermissionResultDispatcher;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.logging.ActSemantic;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShareButtonSaveStory.kt */
/* loaded from: classes3.dex */
public abstract class ShareButtonSaveStory extends ShareButtonCustomInfo implements PermissionListener {
    private SharePayload pending;

    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getStatSelectionForShare() {
        return "Save Image";
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getTargetName() {
        return "SaveArea";
    }

    public abstract void onClickWithPermissionGranted(SharePayload sharePayload);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareButtonSaveStory(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    public final SharePayload getPending$Lib_release() {
        return this.pending;
    }

    public final void setPending$Lib_release(SharePayload sharePayload) {
        this.pending = sharePayload;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.save;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_dialog_save_image;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(SharePayload sharePayload) {
        NVPermission.Builder builder;
        NVPermission.Builder builderPermissionListener;
        NVPermission.Builder builderPermission;
        NVPermission.Builder builderRequestCode;
        Intrinsics.checkParameterIsNotNull(sharePayload, "sharePayload");
        this.pending = sharePayload;
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            builder = NVPermission.builder((NVActivity) ((NVFragment) obj).getActivity());
        } else if (!(obj instanceof NVActivity)) {
            builder = null;
        } else {
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
            builder = NVPermission.builder((Activity) obj);
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof IPermissionResultDispatcher) {
            if (nVContext == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.IPermissionResultDispatcher");
            }
            ((IPermissionResultDispatcher) nVContext).registerPermissionResult(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, this);
        }
        if (builder == null || (builderPermissionListener = builder.permissionListener(this)) == null || (builderPermission = builderPermissionListener.permission("android.permission.WRITE_EXTERNAL_STORAGE")) == null || (builderRequestCode = builderPermission.requestCode(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY)) == null) {
            return;
        }
        builderRequestCode.request();
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        SharePayload sharePayload = this.pending;
        if (sharePayload != null) {
            onClickWithPermissionGranted(sharePayload);
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> deniedPermissions) {
        Intrinsics.checkParameterIsNotNull(deniedPermissions, "deniedPermissions");
        if (z) {
            NVContext nvContext = this.nvContext;
            Intrinsics.checkExpressionValueIsNotNull(nvContext, "nvContext");
            NVPermission.showDeniedDialog(nvContext.getContext());
        }
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public ActSemantic getActSemantic() {
        return ActSemantic.save;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public HashMap<String, String> getExtraInfo() {
        HashMap<String, String> map = new HashMap<>();
        map.put("saveType", "firstClick");
        return map;
    }
}
