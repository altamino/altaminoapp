package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzapu extends zzaqb {
    private final Map<String, String> zzcxs;
    private final Context zzlj;

    public zzapu(zzbgz zzbgzVar, Map<String, String> map) {
        super(zzbgzVar, "storePicture");
        this.zzcxs = map;
        this.zzlj = zzbgzVar.zzyd();
    }

    public final void execute() {
        if (this.zzlj == null) {
            zzdh("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlg();
        if (!zzaxi.zzao(this.zzlj).zzqk()) {
            zzdh("Feature is not supported by the device.");
            return;
        }
        String str = this.zzcxs.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzdh("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            String strValueOf = String.valueOf(str);
            zzdh(strValueOf.length() != 0 ? "Invalid image url: ".concat(strValueOf) : new String("Invalid image url: "));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.google.android.gms.ads.internal.zzk.zzlg();
        if (!zzaxi.zzdz(lastPathSegment)) {
            String strValueOf2 = String.valueOf(lastPathSegment);
            zzdh(strValueOf2.length() != 0 ? "Image type not recognized: ".concat(strValueOf2) : new String("Image type not recognized: "));
            return;
        }
        Resources resources = com.google.android.gms.ads.internal.zzk.zzlk().getResources();
        com.google.android.gms.ads.internal.zzk.zzlg();
        AlertDialog.Builder builderZzan = zzaxi.zzan(this.zzlj);
        builderZzan.setTitle(resources != null ? resources.getString(R.string.s1) : "Save image");
        builderZzan.setMessage(resources != null ? resources.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
        builderZzan.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzapv(this, str, lastPathSegment));
        builderZzan.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzapw(this));
        builderZzan.create().show();
    }
}
