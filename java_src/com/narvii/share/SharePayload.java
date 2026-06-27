package com.narvii.share;

import android.graphics.Bitmap;
import android.net.Uri;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.util.StatisticHelper;

/* loaded from: classes3.dex */
public class SharePayload {
    public Bitmap bitmap;
    public String contentType;
    public boolean forceUseImageOriginUrl;
    public String mediaUrl;
    public boolean needDownloadImg;
    public boolean needTranslateLink;
    public NVObject object;
    public String subject;
    public String successToastMessage;
    public String text;
    public int translationTarget;
    public Uri uri;
    public String url;

    public String contentType(NVContext nVContext) {
        String str = this.contentType;
        return str == null ? StatisticHelper.getStatisticSource(nVContext, this.object, 1) : str;
    }

    public String mimeType() {
        Uri uri = this.uri;
        return (uri == null || uri.getPath() == null || !this.uri.getPath().endsWith(".mp4")) ? "image/*" : "video/*";
    }
}
