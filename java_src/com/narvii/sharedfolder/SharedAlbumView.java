package com.narvii.sharedfolder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.image.ImageLoadTracker;
import com.narvii.model.Media;
import com.narvii.model.SharedAlbum;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class SharedAlbumView extends FrameLayout {
    NVImageView cover;
    View gradient;
    View locked;
    TextView photosCount;
    boolean snippetMode;
    TextView title;
    View voteIcon;
    TextView votesCount;

    public SharedAlbumView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.title = (TextView) findViewById(R.id.title);
        this.photosCount = (TextView) findViewById(R.id.photo_count);
        this.votesCount = (TextView) findViewById(R.id.vote_count);
        this.cover = (NVImageView) findViewById(R.id.cover);
        this.gradient = findViewById(R.id.gradient);
        this.locked = findViewById(R.id.locked);
        this.voteIcon = findViewById(R.id.vote_icon);
    }

    public void setSnippetMode(boolean z) {
        this.snippetMode = z;
    }

    public void setSharedAlbum(SharedAlbum sharedAlbum) {
        if (sharedAlbum == null) {
            return;
        }
        TextView textView = this.title;
        if (textView != null) {
            textView.setText(sharedAlbum.getTitle(getContext()));
        }
        NVImageView nVImageView = this.cover;
        if (nVImageView != null) {
            ViewUtils.show(this.gradient, nVImageView.getStatus() == 4);
            this.cover.setImageMedia(sharedAlbum.getCoverImage());
            this.cover.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.sharedfolder.SharedAlbumView.1
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView2, int i, Media media) {
                    ViewUtils.show(SharedAlbumView.this.gradient, i == 4);
                }
            });
        }
        TextView textView2 = this.photosCount;
        if (textView2 != null) {
            textView2.setText(TextUtils.getCountText(getContext(), sharedAlbum.filesCount, R.string.one_photo, R.string.n_photos));
        }
        TextView textView3 = this.votesCount;
        if (textView3 != null) {
            textView3.setText(TextUtils.numberFormat.format(sharedAlbum.votesCount));
        }
        ViewUtils.show(this.votesCount, !this.snippetMode);
        ViewUtils.show(this.voteIcon, true ^ this.snippetMode);
        View view = this.locked;
        if (view != null) {
            view.setVisibility((!sharedAlbum.isLocked() || this.snippetMode) ? 8 : 0);
        }
    }

    public void setUpImageLoadTracker(final ImageLoadTracker imageLoadTracker) {
        imageLoadTracker.addImageView(this.cover, new NVImageView.OnImageChangedListener() { // from class: com.narvii.sharedfolder.SharedAlbumView.2
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                ViewUtils.show(SharedAlbumView.this.gradient, i == 4);
                imageLoadTracker.onImageChanged(nVImageView, i, media);
            }
        });
    }
}
