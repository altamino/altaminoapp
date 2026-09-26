package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedLinkPostItemBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedImage3SecretBinding feedImages;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    public final TintButton icon;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final ThumbImageView snippetFavicon;

    @NonNull
    public final LinearLayout snippetSiteLayout;

    @NonNull
    public final TextView snippetSource;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedLinkPostItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedLinkPostItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_link_post_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedLinkPostItemBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedImage3SecretBinding feedImage3SecretBinding, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull TintButton tintButton, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedImages = feedImage3SecretBinding;
        this.feedToolbar = feedToolbarBinding;
        this.icon = tintButton;
        this.snippetFavicon = thumbImageView;
        this.snippetSiteLayout = linearLayout;
        this.snippetSource = textView2;
        this.title = textView3;
        this.userHead = feedUserHeaderBinding;
    }

    @NonNull
    public static FeedLinkPostItemBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_images;
            View viewA = ViewBindings.a(view, R.id.feed_images);
            if (viewA != null) {
                FeedImage3SecretBinding feedImage3SecretBindingBind = FeedImage3SecretBinding.bind(viewA);
                i10 = R.id.feed_toolbar;
                View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA2 != null) {
                    FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA2);
                    i10 = R.id.icon;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                    if (tintButton != null) {
                        i10 = R.id.snippet_favicon;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.snippet_favicon);
                        if (thumbImageView != null) {
                            i10 = R.id.snippet_site_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.snippet_site_layout);
                            if (linearLayout != null) {
                                i10 = R.id.snippet_source;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.snippet_source);
                                if (textView2 != null) {
                                    i10 = R.id.title;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                    if (textView3 != null) {
                                        i10 = R.id.user_head;
                                        View viewA3 = ViewBindings.a(view, R.id.user_head);
                                        if (viewA3 != null) {
                                            return new FeedLinkPostItemBinding((FeedListItem) view, textView, feedImage3SecretBindingBind, feedToolbarBindingBind, tintButton, thumbImageView, linearLayout, textView2, textView3, FeedUserHeaderBinding.bind(viewA3));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
