package com.narvii.link.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.SharedFile;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.VoteIcon;

/* loaded from: classes.dex */
public class SharedPhotoSnippetView extends NVLinkSnippetView<SharedFile> {
    TextView commentsCount;
    NVImageView imageView;
    VoteIcon voteIcon;
    TextView votesCount;

    public SharedPhotoSnippetView(Context context) {
        super(context);
        FrameLayout.inflate(context, R.layout.item_snippet_shared_photo, this);
        this.imageView = (NVImageView) findViewById(R.id.image);
        this.votesCount = (TextView) findViewById(R.id.feed_toolbar_vote_count);
        this.commentsCount = (TextView) findViewById(R.id.feed_toolbar_comment_count);
        this.voteIcon = (VoteIcon) findViewById(R.id.feed_toolbar_vote_icon);
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(SharedFile sharedFile) {
        this.voteIcon.setVotedValue(0);
        this.imageView.setImageMedia(sharedFile.media);
        ViewUtils.show(this.imageView, sharedFile.media != null);
        TextView textView = this.votesCount;
        int i = sharedFile.votesCount;
        textView.setText(i == 0 ? getContext().getString(R.string.like) : String.valueOf(i));
        TextView textView2 = this.commentsCount;
        int i2 = sharedFile.commentsCount;
        textView2.setText(i2 == 0 ? "" : String.valueOf(i2));
        this.imageLoadTracker.addImageView(this.imageView);
    }
}
