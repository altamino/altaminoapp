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
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailPageSnippetBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView snippetContent;

    @NonNull
    public final ThumbImageView snippetFavicon;

    @NonNull
    public final ThumbImageView snippetImage;

    @NonNull
    public final TextView snippetSource;

    @NonNull
    public final TextView snippetTitle;

    @NonNull
    public static DetailPageSnippetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailPageSnippetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_page_snippet, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailPageSnippetBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.snippetContent = textView;
        this.snippetFavicon = thumbImageView;
        this.snippetImage = thumbImageView2;
        this.snippetSource = textView2;
        this.snippetTitle = textView3;
    }

    @NonNull
    public static DetailPageSnippetBinding bind(@NonNull View view) {
        int i10 = R.id.snippet_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.snippet_content);
        if (textView != null) {
            i10 = R.id.snippet_favicon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.snippet_favicon);
            if (thumbImageView != null) {
                i10 = R.id.snippet_image;
                ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.snippet_image);
                if (thumbImageView2 != null) {
                    i10 = R.id.snippet_source;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.snippet_source);
                    if (textView2 != null) {
                        i10 = R.id.snippet_title;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.snippet_title);
                        if (textView3 != null) {
                            return new DetailPageSnippetBinding((LinearLayout) view, textView, thumbImageView, thumbImageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
