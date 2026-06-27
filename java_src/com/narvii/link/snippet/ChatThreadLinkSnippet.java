package com.narvii.link.snippet;

import com.narvii.app.NVContext;
import com.narvii.chat.ThreadResponse;
import com.narvii.link.view.ChatThreadSnippetView;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.model.ChatThread;
import com.narvii.share.LinkInfo;

/* loaded from: classes.dex */
public class ChatThreadLinkSnippet extends NVBaseLinkSnippet<ChatThread, ThreadResponse> {
    public ChatThreadLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        return ThreadResponse.class;
    }

    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        return new ChatThreadSnippetView(this.context);
    }
}
