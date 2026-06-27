package com.narvii.link.snippet;

import com.narvii.app.NVContext;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.link.view.UserSnippetView;
import com.narvii.model.User;
import com.narvii.model.api.UserResponse;
import com.narvii.share.LinkInfo;

/* loaded from: classes.dex */
public class UserLinkSnippet extends NVBaseLinkSnippet<User, UserResponse> {
    public UserLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        return UserResponse.class;
    }

    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        return new UserSnippetView(this.context);
    }
}
