package com.narvii.link.view;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.model.Community;
import com.narvii.model.SharedAlbum;
import com.narvii.sharedfolder.SharedAlbumView;

/* JADX INFO: loaded from: classes9.dex */
public class SharedAlbumSnippetView extends NVLinkSnippetView<SharedAlbum> {
    CommunityInfoItem communityInfoItem;
    Community otherCommunity;
    SharedAlbumView sharedAlbumView;

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setOtherCommunity(Community community) {
        this.otherCommunity = community;
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(SharedAlbum sharedAlbum) {
        this.sharedAlbumView.setSnippetMode(true);
        this.sharedAlbumView.setSharedAlbum(sharedAlbum);
        if (this.otherCommunity != null) {
            this.communityInfoItem.setVisibility(0);
            this.communityInfoItem.setDarkTheme(true);
            this.communityInfoItem.setCommunity(this.otherCommunity);
            this.imageLoadTracker.addImageView(this.communityInfoItem.icon);
        } else {
            this.communityInfoItem.setVisibility(8);
        }
        this.sharedAlbumView.setUpImageLoadTracker(this.imageLoadTracker);
    }

    public SharedAlbumSnippetView(@NonNull Context context) {
        super(context);
        View.inflate(context, R.layout.item_snippet_shared_album, this);
        this.sharedAlbumView = (SharedAlbumView) findViewById(R.id.shared_album_view);
        this.communityInfoItem = (CommunityInfoItem) findViewById(R.id.community_layout);
    }
}
