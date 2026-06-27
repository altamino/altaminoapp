package com.narvii.link.snippet;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.link.view.NVLinkSnippetView;
import com.narvii.link.view.SharedAlbumSnippetView;
import com.narvii.model.SharedAlbum;
import com.narvii.share.LinkInfo;
import com.narvii.sharedfolder.SharedAlbumResponse;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class SharedAlbumLinkSnippet extends NVBaseLinkSnippet<SharedAlbum, SharedAlbumResponse> {
    @Override // com.narvii.link.snippet.LinkSnippet
    protected boolean useOtherCommunityFrame() {
        return false;
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    protected int widthDp() {
        return 170;
    }

    public SharedAlbumLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class responseType() {
        return SharedAlbumResponse.class;
    }

    @Override // com.narvii.link.snippet.NVBaseLinkSnippet
    protected NVLinkSnippetView getSnippetView() {
        SharedAlbumSnippetView sharedAlbumSnippetView = new SharedAlbumSnippetView(this.context);
        sharedAlbumSnippetView.setOtherCommunity(this.otherCommunity);
        return sharedAlbumSnippetView;
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    protected int getHeightMeasureSpec() {
        return View.MeasureSpec.makeMeasureSpec(Utils.dpToPxInt(this.context, 170.0f), 1073741824);
    }
}
