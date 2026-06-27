package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* loaded from: classes3.dex */
public class MessengerElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -16743169;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.facebook.orca";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 4;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Messenger";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int textColor() {
        return -1;
    }

    public MessengerElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_messenger);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(final SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        final String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        copyText(strJoinTextWithUrl);
        if (sharePayload.uri == null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
            intent.putExtra("android.intent.extra.SUBJECT", sharePayload.subject);
            if (containActivityCanHanleIntent(intent)) {
                this.context.startActivity(intent);
                return;
            } else {
                showNotFoundPakage();
                return;
            }
        }
        showTutorialDialog(new View.OnClickListener() { // from class: com.narvii.share.elements.MessengerElement.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType(sharePayload.mimeType());
                intent2.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
                intent2.putExtra("android.intent.extra.SUBJECT", sharePayload.subject);
                intent2.putExtra("android.intent.extra.STREAM", sharePayload.uri);
                if (MessengerElement.this.containActivityCanHanleIntent(intent2)) {
                    MessengerElement.this.startShare(intent2);
                } else {
                    MessengerElement.this.showNotFoundPakage();
                }
            }
        }, this.context.getContext().getString(R.string.share_snapchat_hint1));
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_messenger);
    }
}
