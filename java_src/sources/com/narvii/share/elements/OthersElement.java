package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import androidx.webkit.internal.AssetHelper;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* JADX INFO: loaded from: classes5.dex */
public class OthersElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -5460820;
    }

    @Override // com.narvii.share.elements.BaseElement
    public boolean isAvailable() {
        return true;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return null;
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 100;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Others";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int textColor() {
        return -1;
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.share_others_icon);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_others);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        String str = sharePayload.subject;
        String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, ": ");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        if (sharePayload.uri != null) {
            intent.setType(sharePayload.mimeType());
            intent.putExtra("android.intent.extra.STREAM", sharePayload.uri);
        }
        startShare(intent);
    }

    public OthersElement(NVContext nVContext) {
        super(nVContext);
    }
}
