package com.narvii.share;

import com.narvii.app.NVContext;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class BaseShareButtonRepost extends ShareButtonCustomInfo {
    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_repost;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.repost;
    }

    public BaseShareButtonRepost(NVContext nVContext) {
        super(nVContext);
    }
}
