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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ShareButtonSaveStory extends ShareButtonCustomInfo implements PermissionListener {

    @Nullable
    private SharePayload pending;

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_dialog_save_image;
    }

    @Nullable
    public final SharePayload getPending$Lib_release() {
        return this.pending;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    @Nullable
    public String getStatSelectionForShare() {
        return "Save Image";
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    @NotNull
    public String getTargetName() {
        return "SaveArea";
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.save;
    }

    public abstract void onClickWithPermissionGranted(@NotNull SharePayload sharePayload);

    public final void setPending$Lib_release(@Nullable SharePayload sharePayload) {
        this.pending = sharePayload;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareButtonSaveStory(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    @NotNull
    public ActSemantic getActSemantic() {
        return ActSemantic.save;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    @NotNull
    public HashMap<String, String> getExtraInfo() {
        HashMap<String, String> map = new HashMap<>();
        map.put("saveType", "firstClick");
        return map;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(@NotNull SharePayload sharePayload) {
        NVPermission.Builder builder;
        NVPermission.Builder builderPermissionListener;
        NVPermission.Builder builderPermission;
        NVPermission.Builder builderRequestCode;
        t.j(sharePayload, "sharePayload");
        this.pending = sharePayload;
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            builder = NVPermission.builder((NVActivity) ((NVFragment) obj).getActivity());
        } else if (obj instanceof NVActivity) {
            t.h(obj, "null cannot be cast to non-null type android.app.Activity");
            builder = NVPermission.builder((Activity) obj);
        } else {
            builder = null;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof IPermissionResultDispatcher) {
            t.h(nVContext, "null cannot be cast to non-null type com.narvii.app.IPermissionResultDispatcher");
            ((IPermissionResultDispatcher) nVContext).registerPermissionResult(203, this);
        }
        if (builder == null || (builderPermissionListener = builder.permissionListener(this)) == null || (builderPermission = builderPermissionListener.permission("android.permission.WRITE_EXTERNAL_STORAGE")) == null || (builderRequestCode = builderPermission.requestCode(203)) == null) {
            return;
        }
        builderRequestCode.request();
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i10, boolean z6, @NotNull ArrayList<String> deniedPermissions) {
        t.j(deniedPermissions, "deniedPermissions");
        if (z6) {
            NVPermission.showDeniedDialog(this.nvContext.getContext());
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        SharePayload sharePayload = this.pending;
        if (sharePayload != null) {
            onClickWithPermissionGranted(sharePayload);
        }
    }
}
