package com.narvii.link;

import com.narvii.app.NVContext;
import com.narvii.link.snippet.ChatThreadLinkSnippet;
import com.narvii.link.snippet.CommunityLinkSnippet;
import com.narvii.link.snippet.FeedLinkSnippet;
import com.narvii.link.snippet.NVLinkSnippet;
import com.narvii.link.snippet.SharedAlbumLinkSnippet;
import com.narvii.link.snippet.SharedPhotoLinkSnippet;
import com.narvii.link.snippet.StoreItemLinkSnippet;
import com.narvii.link.snippet.UserLinkSnippet;
import com.narvii.share.LinkInfo;

/* JADX INFO: loaded from: classes10.dex */
public class LinkSnippetFactory {
    public static NVLinkSnippet getLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        if (linkInfo == null) {
            return null;
        }
        int i10 = linkInfo.objectType;
        if (i10 == 0) {
            return new UserLinkSnippet(nVContext, linkInfo);
        }
        if (i10 != 1 && i10 != 2) {
            if (i10 == 12) {
                return new ChatThreadLinkSnippet(nVContext, linkInfo);
            }
            if (i10 == 16) {
                return new CommunityLinkSnippet(nVContext, linkInfo);
            }
            if (i10 == 106) {
                return new SharedAlbumLinkSnippet(nVContext, linkInfo);
            }
            if (i10 == 109) {
                return new SharedPhotoLinkSnippet(nVContext, linkInfo);
            }
            if (i10 == 114 || i10 == 116 || i10 == 122) {
                return new StoreItemLinkSnippet(nVContext, linkInfo);
            }
            if (i10 != 131) {
                return null;
            }
        }
        return new FeedLinkSnippet(nVContext, linkInfo);
    }
}
