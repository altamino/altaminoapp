package com.narvii.link.snippet;

import com.narvii.app.NVContext;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.link.view.StoreItemSnippetView;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.api.ObjectResponse;
import com.narvii.monetization.avatarframe.AvatarFrameResponse;
import com.narvii.monetization.bubble.ChatBubbleResponse;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.share.LinkInfo;

/* JADX INFO: loaded from: classes10.dex */
public class StoreItemLinkSnippet extends NVBaseLinkSnippet<StoreItemBaseObject, ObjectResponse<StoreItemBaseObject>> {
    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        return new StoreItemSnippetView(this.nvContext.getContext());
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        int i10 = this.linkInfo.objectType;
        if (i10 == 114) {
            return StickerCollectionResponse.class;
        }
        if (i10 == 116) {
            return ChatBubbleResponse.class;
        }
        if (i10 != 122) {
            return null;
        }
        return AvatarFrameResponse.class;
    }

    public StoreItemLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }
}
