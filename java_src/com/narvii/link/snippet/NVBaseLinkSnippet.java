package com.narvii.link.snippet;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.model.NVObject;
import com.narvii.model.api.ObjectResponse;
import com.narvii.share.LinkInfo;

/* loaded from: classes.dex */
public abstract class NVBaseLinkSnippet<T extends NVObject, E extends ObjectResponse<? extends T>> extends NVLinkSnippet {
    protected abstract NVLinkSnippetView getSnippetView();

    public NVBaseLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected View getDetailView() {
        NVLinkSnippetView snippetView = getSnippetView();
        if (snippetView == null) {
            return null;
        }
        snippetView.setNvContext(this.nvContext);
        snippetView.setOtherCommunity(this.otherCommunity);
        snippetView.setObject(this.shareObject);
        return snippetView;
    }
}
