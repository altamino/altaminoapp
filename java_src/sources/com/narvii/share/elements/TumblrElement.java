package com.narvii.share.elements;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.webkit.internal.AssetHelper;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes11.dex */
public class TumblrElement extends BaseElement {
    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -13744790;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.tumblr";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 3;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Tumblr";
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_tumblr);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_tumblr);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(final SharePayload sharePayload) {
        if (sharePayload == null) {
            return;
        }
        final String strJoinTextWithUrl = joinTextWithUrl(sharePayload.text, sharePayload.url, "\n");
        final String str = sharePayload.subject;
        final Uri uri = sharePayload.uri;
        copyText(strJoinTextWithUrl);
        if (uri != null) {
            showTutorialDialog(new View.OnClickListener() { // from class: com.narvii.share.elements.TumblrElement.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
                    intent.putExtra("android.intent.extra.SUBJECT", str);
                    intent.setType(sharePayload.mimeType());
                    intent.putExtra("android.intent.extra.STREAM", uri);
                    if (TumblrElement.this.containActivityCanHanleIntent(intent)) {
                        TumblrElement.this.startShare(intent);
                    } else {
                        TumblrElement.this.showNotFoundPakage();
                    }
                }
            }, this.context.getContext().getString(R.string.share_tumblr_hint1));
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        if (containActivityCanHanleIntent(intent)) {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
        } else {
            showNotFoundPakage();
        }
    }

    public TumblrElement(NVContext nVContext) {
        super(nVContext);
    }
}
