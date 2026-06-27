package com.narvii.share.elements;

import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareUtils;

/* loaded from: classes3.dex */
public class EmailElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -11955998;
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
        return 1;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Email";
    }

    public EmailElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        try {
            new ShareUtils(this.context).shareEmail(null, sharePayload.subject, joinTextWithUrl(sharePayload.text, sharePayload.url, "\n"), sharePayload.uri, this.context.getContext().getString(R.string.share_chooser_link));
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_email);
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_email);
    }
}
