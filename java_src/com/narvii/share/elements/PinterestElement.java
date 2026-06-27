package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* loaded from: classes3.dex */
public class PinterestElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -3530968;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.pinterest";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 10;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Pinterest";
    }

    public PinterestElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_pinterest);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(final SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        final String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        final Uri uri = sharePayload.uri;
        copyText(strJoinTextWithUrl);
        showTutorialDialog(new View.OnClickListener() { // from class: com.narvii.share.elements.PinterestElement.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
                intent.setType(sharePayload.mimeType());
                Uri uri2 = uri;
                if (uri2 != null) {
                    intent.putExtra("android.intent.extra.STREAM", uri2);
                }
                if (PinterestElement.this.containActivityCanHanleIntent(intent)) {
                    PinterestElement.this.startShare(intent);
                } else {
                    PinterestElement.this.showNotFoundPakage();
                }
            }
        }, this.context.getContext().getString(R.string.share_pinterest_hint1));
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_pinterest);
    }
}
