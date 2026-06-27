package com.narvii.blog.post;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.LinkSummary;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class LinkPostPreviewLayout extends FrameLayout {
    View contentLayout;
    View failLayout;
    ThumbImageView faviconImg;
    ThumbImageView imgLinkIcon;
    LinkSummary linkSummary;
    View loadingLayout;
    TextView tvSource;
    TextView txtLinkDescription;
    TextView txtLinkTitle;

    public LinkPostPreviewLayout(Context context) {
        super(context);
    }

    public LinkPostPreviewLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.contentLayout = findViewById(R.id.link_preview_content);
        this.loadingLayout = findViewById(R.id.link_preview_loading);
        this.failLayout = findViewById(R.id.link_preview_fail);
        this.imgLinkIcon = (ThumbImageView) this.contentLayout.findViewById(R.id.link_icon);
        this.txtLinkTitle = (TextView) this.contentLayout.findViewById(R.id.link_title);
        this.txtLinkDescription = (TextView) this.contentLayout.findViewById(R.id.link_description);
        this.faviconImg = (ThumbImageView) this.contentLayout.findViewById(R.id.snippet_favicon);
        this.tvSource = (TextView) this.contentLayout.findViewById(R.id.snippet_source);
    }

    public void setLinkSummary(LinkSummary linkSummary) {
        this.linkSummary = linkSummary;
        updateView();
    }

    private void updateView() {
        LinkSummary linkSummary = this.linkSummary;
        if (linkSummary == null) {
            this.imgLinkIcon.setImageUrl(null);
            this.txtLinkTitle.setVisibility(4);
            this.txtLinkDescription.setVisibility(4);
            this.faviconImg.setVisibility(4);
            this.tvSource.setText((CharSequence) null);
            return;
        }
        ThumbImageView thumbImageView = this.imgLinkIcon;
        if (thumbImageView != null) {
            thumbImageView.setImageMedia(linkSummary.getFirstMedia());
            this.imgLinkIcon.setVisibility(TextUtils.isEmpty(this.linkSummary.getFirstMediaUrl()) ? 8 : 0);
        }
        TextView textView = this.txtLinkTitle;
        if (textView != null) {
            textView.setText(this.linkSummary.getTitle());
            this.txtLinkTitle.setVisibility(TextUtils.isEmpty(this.linkSummary.getTitle()) ? 4 : 0);
        }
        TextView textView2 = this.txtLinkDescription;
        if (textView2 != null) {
            textView2.setText(TextUtils.isEmpty(this.linkSummary.getBody()) ? this.linkSummary.getLink() : this.linkSummary.getBody());
            this.txtLinkDescription.setVisibility(0);
        }
        View view = this.failLayout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loadingLayout;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        ThumbImageView thumbImageView2 = this.faviconImg;
        if (thumbImageView2 != null) {
            thumbImageView2.setImageUrl(this.linkSummary.getShowFavIcon());
            this.faviconImg.setVisibility(0);
        }
        TextView textView3 = this.tvSource;
        if (textView3 != null) {
            textView3.setText(this.linkSummary.getShowSource());
        }
    }

    public void showLoading(boolean z) {
        View view = this.loadingLayout;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        View view2 = this.failLayout;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    public void showFail(boolean z) {
        if (z) {
            this.failLayout.setVisibility(0);
            View view = this.loadingLayout;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        ThumbImageView thumbImageView = this.imgLinkIcon;
        if (thumbImageView != null) {
            thumbImageView.setImageUrl(null);
        }
        TextView textView = this.txtLinkTitle;
        if (textView != null) {
            textView.setText((CharSequence) null);
        }
        TextView textView2 = this.txtLinkDescription;
        if (textView2 != null) {
            textView2.setText((CharSequence) null);
        }
    }
}
