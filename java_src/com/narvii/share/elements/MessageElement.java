package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.provider.Telephony;
import android.support.v4.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class MessageElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -16726715;
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
        return 0;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Message";
    }

    public MessageElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_sms);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        try {
            String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
            if (Build.VERSION.SDK_INT >= 19) {
                String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this.context.getContext());
                Intent intent = new Intent("android.intent.action.SEND");
                if (sharePayload.uri != null && !Utils.isEqualsNotNull(Build.MODEL, "XT1064")) {
                    intent.putExtra("android.intent.extra.STREAM", sharePayload.uri);
                }
                intent.setType(sharePayload.mimeType());
                intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
                intent.putExtra("sms_body", strJoinTextWithUrl);
                if (defaultSmsPackage != null) {
                    intent.setPackage(defaultSmsPackage);
                }
                startShare(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse("sms:"));
            intent2.putExtra("sms_body", strJoinTextWithUrl);
            if (sharePayload.uri != null) {
                intent2.putExtra("android.intent.extra.STREAM", sharePayload.uri);
            }
            intent2.setType(sharePayload.mimeType());
            startShare(intent2);
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_message);
    }
}
