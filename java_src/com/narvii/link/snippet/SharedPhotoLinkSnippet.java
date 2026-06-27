package com.narvii.link.snippet;

import com.narvii.app.NVContext;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.link.view.SharedPhotoSnippetView;
import com.narvii.model.SharedFile;
import com.narvii.share.LinkInfo;
import com.narvii.sharedfolder.SharedFileResponse;

/* loaded from: classes.dex */
public class SharedPhotoLinkSnippet extends NVBaseLinkSnippet<SharedFile, SharedFileResponse> {
    public SharedPhotoLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        return SharedFileResponse.class;
    }

    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        return new SharedPhotoSnippetView(this.context);
    }
}
