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

/* loaded from: classes.dex */
public class LinkSnippetFactory {
    public static NVLinkSnippet getLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        if (linkInfo == null) {
            return null;
        }
        int i = linkInfo.objectType;
        if (i == 0) {
            return new UserLinkSnippet(nVContext, linkInfo);
        }
        if (i != 1 && i != 2) {
            if (i == 12) {
                return new ChatThreadLinkSnippet(nVContext, linkInfo);
            }
            if (i == 16) {
                return new CommunityLinkSnippet(nVContext, linkInfo);
            }
            if (i == 106) {
                return new SharedAlbumLinkSnippet(nVContext, linkInfo);
            }
            if (i == 109) {
                return new SharedPhotoLinkSnippet(nVContext, linkInfo);
            }
            if (i == 114 || i == 116 || i == 122) {
                return new StoreItemLinkSnippet(nVContext, linkInfo);
            }
            if (i != 131) {
                return null;
            }
        }
        return new FeedLinkSnippet(nVContext, linkInfo);
    }
}
