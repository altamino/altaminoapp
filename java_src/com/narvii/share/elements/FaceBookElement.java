package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* loaded from: classes3.dex */
public class FaceBookElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -12164185;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.facebook.katana";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 8;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Facebook";
    }

    public FaceBookElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_facebook);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(final SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        final Intent intent = new Intent("android.intent.action.SEND");
        String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        copyText(strJoinTextWithUrl);
        if (sharePayload.uri != null) {
            showTutorialDialog(new View.OnClickListener() { // from class: com.narvii.share.elements.FaceBookElement.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    intent.setType(sharePayload.mimeType());
                    intent.putExtra("android.intent.extra.STREAM", sharePayload.uri);
                    if (FaceBookElement.this.containActivityCanHanleIntent(intent)) {
                        FaceBookElement.this.startShare(intent);
                    } else {
                        FaceBookElement.this.showNotFoundPakage();
                    }
                }
            }, this.context.getContext().getString(R.string.share_facebook_hint1));
            return;
        }
        if (sharePayload.url != null) {
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", sharePayload.url);
            if (containActivityCanHanleIntent(intent)) {
                startShare(intent);
                return;
            } else {
                showNotFoundPakage();
                return;
            }
        }
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.SUBJECT", sharePayload.subject);
        if (containActivityCanHanleIntent(intent)) {
            this.context.startActivity(intent);
        } else {
            showNotFoundPakage();
        }
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_facebook);
    }
}
