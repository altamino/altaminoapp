package com.narvii.share;

import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;

/* loaded from: classes3.dex */
public class ShareButtonCopyLink extends ShareButtonCustomInfo {
    @Override // com.narvii.share.ShareButtonCustomInfo
    public String getStatSelectionForShare() {
        return "Link";
    }

    public ShareButtonCopyLink(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.share_copy_link;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_link;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public void onClick(SharePayload sharePayload) {
        shareToClipboard(sharePayload);
    }

    private void shareToClipboard(final SharePayload sharePayload) {
        if (sharePayload != null) {
            if (sharePayload.needTranslateLink && TextUtils.isEmpty(sharePayload.url)) {
                new ShareLinkHelper(this.nvContext).startLinkTranslation(sharePayload.object, new Callback<LinkInfoV2>() { // from class: com.narvii.share.ShareButtonCopyLink.1
                    @Override // com.narvii.util.Callback
                    public void call(LinkInfoV2 linkInfoV2) {
                        LinkInfo innerLinkInfo;
                        if (linkInfoV2 == null || (innerLinkInfo = linkInfoV2.getInnerLinkInfo()) == null || TextUtils.isEmpty(innerLinkInfo.shareURLShortCode)) {
                            return;
                        }
                        SharePayload sharePayload2 = sharePayload;
                        sharePayload2.url = innerLinkInfo.shareURLShortCode;
                        sharePayload2.needTranslateLink = false;
                        ShareButtonCopyLink.this.copyLink(sharePayload2.url);
                    }
                }, sharePayload.translationTarget);
            } else {
                copyLink(sharePayload.url);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyLink(String str) {
        Context context = this.nvContext.getContext();
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setText(str);
            NVToast.makeText(context, R.string.share_copy_to_clipboard_success, 0).show();
        } catch (Exception unused) {
            NVToast.makeText(context, R.string.share_copy_to_clipboard_fail, 0).show();
        }
    }
}
