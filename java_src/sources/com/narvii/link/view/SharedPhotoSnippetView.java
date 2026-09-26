package com.narvii.link.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.model.SharedFile;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes7.dex */
public class SharedPhotoSnippetView extends NVLinkSnippetView<SharedFile> {
    TextView commentsCount;
    NVImageView imageView;
    VoteIcon voteIcon;
    TextView votesCount;

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(SharedFile sharedFile) {
        this.voteIcon.setVotedValue(0);
        this.imageView.setImageMedia(sharedFile.media);
        ViewUtils.show(this.imageView, sharedFile.media != null);
        TextView textView = this.votesCount;
        int i10 = sharedFile.votesCount;
        textView.setText(i10 == 0 ? getContext().getString(R.string.like) : String.valueOf(i10));
        TextView textView2 = this.commentsCount;
        int i11 = sharedFile.commentsCount;
        textView2.setText(i11 == 0 ? "" : String.valueOf(i11));
        this.imageLoadTracker.addImageView(this.imageView);
    }

    public SharedPhotoSnippetView(@NonNull Context context) {
        super(context);
        View.inflate(context, R.layout.item_snippet_shared_photo, this);
        this.imageView = (NVImageView) findViewById(R.id.image);
        this.votesCount = (TextView) findViewById(R.id.feed_toolbar_vote_count);
        this.commentsCount = (TextView) findViewById(R.id.feed_toolbar_comment_count);
        this.voteIcon = (VoteIcon) findViewById(R.id.feed_toolbar_vote_icon);
    }
}
