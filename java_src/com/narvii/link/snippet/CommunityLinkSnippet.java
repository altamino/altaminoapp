package com.narvii.link.snippet;

import com.narvii.app.NVContext;
import com.narvii.link.view.CommunitySnippetView;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.model.Community;
import com.narvii.model.api.CommunityResponse;
import com.narvii.share.LinkInfo;

/* loaded from: classes.dex */
public class CommunityLinkSnippet extends NVBaseLinkSnippet<Community, CommunityResponse> {
    public CommunityLinkSnippet(NVContext nVContext, Community community) {
        super(nVContext, null);
        this.shareObject = community;
    }

    public CommunityLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        return CommunityResponse.class;
    }

    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        return new CommunitySnippetView(this.context);
    }
}
