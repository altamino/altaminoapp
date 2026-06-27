package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* loaded from: classes3.dex */
public class WhatsAppElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -13708695;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.whatsapp";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 5;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Whatsapp";
    }

    public WhatsAppElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_whatapps);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        if (sharePayload.uri != null) {
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.STREAM", sharePayload.uri);
        } else {
            intent.setType("text/plain");
        }
        if (containActivityCanHanleIntent(intent)) {
            startShare(intent);
        } else {
            showNotFoundPakage();
        }
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_whatsapp);
    }
}
