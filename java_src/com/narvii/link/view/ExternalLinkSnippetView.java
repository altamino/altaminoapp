package com.narvii.link.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.LinkSummary;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes.dex */
public class ExternalLinkSnippetView extends LoadTrackView {
    NVImageView faviconImg;
    ThumbImageView imgLinkIcon;
    TextView tvSource;
    TextView txtLinkDescription;
    TextView txtLinkTitle;

    public ExternalLinkSnippetView(Context context) {
        super(context);
        FrameLayout.inflate(context, R.layout.item_snippet_external_link, this);
        this.imgLinkIcon = (ThumbImageView) findViewById(R.id.link_icon);
        this.txtLinkTitle = (TextView) findViewById(R.id.link_title);
        this.txtLinkDescription = (TextView) findViewById(R.id.link_description);
        this.faviconImg = (NVImageView) findViewById(R.id.snippet_favicon);
        this.tvSource = (TextView) findViewById(R.id.snippet_source);
        this.imageLoadTracker.addImageView(this.imgLinkIcon);
        this.imageLoadTracker.addImageView(this.faviconImg);
    }

    public void setExternalFeed(Feed feed) {
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            LinkSummary linkSummary = new LinkSummary();
            linkSummary.mediaList = blog.mediaList;
            linkSummary.title = blog.title();
            linkSummary.body = blog.content();
            linkSummary.source = blog.getDisplayNickname(getContext());
            setLinkSummary(linkSummary);
            if (this.faviconImg != null) {
                Drawable externalOriginDrawable = blog.getExternalOriginDrawable(getContext());
                this.faviconImg.setImageDrawable(externalOriginDrawable);
                ViewUtils.show(this.faviconImg, externalOriginDrawable != null);
            }
        }
    }

    public void setLinkSummary(LinkSummary linkSummary) {
        ThumbImageView thumbImageView = this.imgLinkIcon;
        if (thumbImageView != null) {
            thumbImageView.setImageMedia(linkSummary.getFirstMedia());
            this.imgLinkIcon.setVisibility(TextUtils.isEmpty(linkSummary.getFirstMediaUrl()) ? 8 : 0);
        }
        TextView textView = this.txtLinkTitle;
        if (textView != null) {
            textView.setText(linkSummary.getTitle());
            this.txtLinkTitle.setVisibility(TextUtils.isEmpty(linkSummary.getTitle()) ? 8 : 0);
        }
        TextView textView2 = this.txtLinkDescription;
        if (textView2 != null) {
            textView2.setText(TextUtils.isEmpty(linkSummary.getBody()) ? linkSummary.getLink() : linkSummary.getBody());
            this.txtLinkDescription.setVisibility(0);
        }
        if (this.faviconImg != null) {
            String showFavIcon = linkSummary.getShowFavIcon();
            this.faviconImg.setImageUrl(showFavIcon);
            ViewUtils.show(this.faviconImg, showFavIcon != null);
        }
        TextView textView3 = this.tvSource;
        if (textView3 != null) {
            textView3.setText(linkSummary.getShowSource());
        }
    }
}
