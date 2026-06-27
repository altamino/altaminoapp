package com.narvii.link.view;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.model.NVObject;

/* loaded from: classes.dex */
public abstract class NVLinkSnippetView<T extends NVObject> extends LoadTrackView {
    protected NVContext nvContext;
    Community otherCommunity;

    public abstract void setObject(T t);

    public NVLinkSnippetView(Context context) {
        super(context);
    }

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void setOtherCommunity(Community community) {
        this.otherCommunity = community;
    }
}
