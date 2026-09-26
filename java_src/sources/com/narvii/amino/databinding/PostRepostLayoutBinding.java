package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PostRepostLayoutBinding implements ViewBinding {

    @NonNull
    public final EditText content;

    @NonNull
    public final SecretImageView icon;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final RelativeLayout stub1;

    @NonNull
    public final TextView text2;

    @NonNull
    public final TextView title;

    @NonNull
    public static PostRepostLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostRepostLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_repost_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostRepostLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull EditText editText, @NonNull SecretImageView secretImageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.content = editText;
        this.icon = secretImageView;
        this.stub1 = relativeLayout2;
        this.text2 = textView;
        this.title = textView2;
    }

    @NonNull
    public static PostRepostLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditText editText = (EditText) ViewBindings.a(view, R.id.content);
        if (editText != null) {
            i10 = R.id.icon;
            SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.icon);
            if (secretImageView != null) {
                i10 = R.id.stub1;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.stub1);
                if (relativeLayout != null) {
                    i10 = R.id.text2;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.text2);
                    if (textView != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new PostRepostLayoutBinding((RelativeLayout) view, editText, secretImageView, relativeLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
