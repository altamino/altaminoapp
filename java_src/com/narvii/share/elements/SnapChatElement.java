package com.narvii.share.elements;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;

/* loaded from: classes3.dex */
public class SnapChatElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -512;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.snapchat.android";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 2;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Snapchat";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int textColor() {
        return ViewCompat.MEASURED_STATE_MASK;
    }

    public SnapChatElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_snapchat);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(final SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        Context context = this.context.getContext();
        String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        final Uri uri = sharePayload.uri;
        copyText(strJoinTextWithUrl);
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.SUBJECT", sharePayload.subject);
        if (uri == null) {
            intent.setType("text/plain");
            if (containActivityCanHanleIntent(intent)) {
                startShare(intent);
                return;
            } else {
                showNotFoundPakage();
                return;
            }
        }
        showTutorialDialog(new View.OnClickListener() { // from class: com.narvii.share.elements.SnapChatElement.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                intent.setType(sharePayload.mimeType());
                intent.putExtra("android.intent.extra.STREAM", uri);
                if (SnapChatElement.this.containActivityCanHanleIntent(intent)) {
                    SnapChatElement.this.startShare(intent);
                } else {
                    SnapChatElement.this.showNotFoundPakage();
                }
            }
        }, context.getString(R.string.share_snapchat_hint1));
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_snapchat);
    }
}
