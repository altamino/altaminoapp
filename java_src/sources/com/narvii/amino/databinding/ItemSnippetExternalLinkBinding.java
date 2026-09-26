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
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSnippetExternalLinkBinding implements ViewBinding {

    @NonNull
    public final TextView linkDescription;

    @NonNull
    public final ThumbImageView linkIcon;

    @NonNull
    public final TextView linkTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVImageView snippetFavicon;

    @NonNull
    public final TextView snippetSource;

    @NonNull
    public static ItemSnippetExternalLinkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetExternalLinkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_external_link, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetExternalLinkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView2, @NonNull NVImageView nVImageView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.linkDescription = textView;
        this.linkIcon = thumbImageView;
        this.linkTitle = textView2;
        this.snippetFavicon = nVImageView;
        this.snippetSource = textView3;
    }

    @NonNull
    public static ItemSnippetExternalLinkBinding bind(@NonNull View view) {
        int i10 = R.id.link_description;
        TextView textView = (TextView) ViewBindings.a(view, R.id.link_description);
        if (textView != null) {
            i10 = R.id.link_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.link_icon);
            if (thumbImageView != null) {
                i10 = R.id.link_title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.link_title);
                if (textView2 != null) {
                    i10 = R.id.snippet_favicon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.snippet_favicon);
                    if (nVImageView != null) {
                        i10 = R.id.snippet_source;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.snippet_source);
                        if (textView3 != null) {
                            return new ItemSnippetExternalLinkBinding((LinearLayout) view, textView, thumbImageView, textView2, nVImageView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
