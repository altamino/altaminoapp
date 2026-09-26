package com.narvii.link.view;

import android.content.Context;
import androidx.annotation.NonNull;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes11.dex */
public abstract class NVLinkSnippetView<T extends NVObject> extends LoadTrackView {
    protected NVContext nvContext;
    Community otherCommunity;

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public abstract void setObject(T t5);

    public void setOtherCommunity(Community community) {
        this.otherCommunity = community;
    }

    public NVLinkSnippetView(@NonNull Context context) {
        super(context);
    }
}
