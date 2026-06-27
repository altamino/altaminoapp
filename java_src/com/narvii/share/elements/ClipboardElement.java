package com.narvii.share.elements;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;
import com.narvii.util.NVToast;

/* loaded from: classes3.dex */
public class ClipboardElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -11776948;
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
        return 99;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Link";
    }

    public ClipboardElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        Context context = this.context.getContext();
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setText(sharePayload.url);
            if (TextUtils.isEmpty(sharePayload.successToastMessage)) {
                NVToast.makeText(context, R.string.share_copy_to_clipboard_success, 0).show();
            } else {
                NVToast.makeText(context, sharePayload.successToastMessage, 0).show();
            }
        } catch (Exception unused) {
            NVToast.makeText(context, R.string.share_copy_to_clipboard_fail, 0).show();
        }
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_copy_link);
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.share_clipboard_icon);
    }
}
