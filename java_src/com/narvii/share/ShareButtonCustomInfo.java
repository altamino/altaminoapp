package com.narvii.share;

import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class ShareButtonCustomInfo {
    protected final NVContext nvContext;

    public ActSemantic getActSemantic() {
        return null;
    }

    public HashMap<String, String> getExtraInfo() {
        return null;
    }

    public abstract int getIcon();

    public String getStatSelectionForShare() {
        return null;
    }

    public String getTargetName() {
        return null;
    }

    public abstract int getTextString();

    public abstract void onClick(SharePayload sharePayload);

    public ShareButtonCustomInfo(NVContext nVContext) {
        this.nvContext = nVContext;
    }
}
