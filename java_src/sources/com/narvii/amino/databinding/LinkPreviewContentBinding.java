package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class LinkPreviewContentBinding implements ViewBinding {

    @NonNull
    public final TextView linkDescription;

    @NonNull
    public final ThumbImageView linkIcon;

    @NonNull
    public final RelativeLayout linkPreview;

    @NonNull
    public final TextView linkTitle;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final ThumbImageView snippetFavicon;

    @NonNull
    public final TextView snippetSource;

    @NonNull
    public static LinkPreviewContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkPreviewContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_preview_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkPreviewContentBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.linkDescription = textView;
        this.linkIcon = thumbImageView;
        this.linkPreview = relativeLayout2;
        this.linkTitle = textView2;
        this.snippetFavicon = thumbImageView2;
        this.snippetSource = textView3;
    }

    @NonNull
    public static LinkPreviewContentBinding bind(@NonNull View view) {
        int i10 = R.id.link_description;
        TextView textView = (TextView) ViewBindings.a(view, R.id.link_description);
        if (textView != null) {
            i10 = R.id.link_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.link_icon);
            if (thumbImageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i10 = R.id.link_title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.link_title);
                if (textView2 != null) {
                    i10 = R.id.snippet_favicon;
                    ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.snippet_favicon);
                    if (thumbImageView2 != null) {
                        i10 = R.id.snippet_source;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.snippet_source);
                        if (textView3 != null) {
                            return new LinkPreviewContentBinding(relativeLayout, textView, thumbImageView, relativeLayout, textView2, thumbImageView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
