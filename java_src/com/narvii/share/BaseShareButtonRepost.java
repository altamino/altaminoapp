package com.narvii.share;

import com.narvii.app.NVContext;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public abstract class BaseShareButtonRepost extends ShareButtonCustomInfo {
    public BaseShareButtonRepost(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getTextString() {
        return R.string.repost;
    }

    @Override // com.narvii.share.ShareButtonCustomInfo
    public int getIcon() {
        return R.drawable.ic_share_repost;
    }
}
