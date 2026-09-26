package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes.dex */
public final class DialogLayoutSendBroadcastBinding implements ViewBinding {

    @NonNull
    public final TextView audience;

    @NonNull
    public final TextView audienceTitle;

    @NonNull
    public final TextView cancel;

    @NonNull
    public final EditText content;

    @NonNull
    public final NVImageView postImg;

    @NonNull
    public final LinearLayout postPreview;

    @NonNull
    public final TextView postTitle;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView submit;

    @NonNull
    public final TextView time;

    @NonNull
    public final TextView timeTitle;

    @NonNull
    public static DialogLayoutSendBroadcastBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogLayoutSendBroadcastBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_layout_send_broadcast, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogLayoutSendBroadcastBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull EditText editText, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull FrameLayout frameLayout2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = frameLayout;
        this.audience = textView;
        this.audienceTitle = textView2;
        this.cancel = textView3;
        this.content = editText;
        this.postImg = nVImageView;
        this.postPreview = linearLayout;
        this.postTitle = textView4;
        this.root = frameLayout2;
        this.submit = textView5;
        this.time = textView6;
        this.timeTitle = textView7;
    }

    @NonNull
    public static DialogLayoutSendBroadcastBinding bind(@NonNull View view) {
        int i10 = R.id.audience;
        TextView textView = (TextView) ViewBindings.a(view, R.id.audience);
        if (textView != null) {
            i10 = R.id.audience_title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.audience_title);
            if (textView2 != null) {
                i10 = R.id.cancel;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.cancel);
                if (textView3 != null) {
                    i10 = R.id.content;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.content);
                    if (editText != null) {
                        i10 = R.id.post_img;
                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.post_img);
                        if (nVImageView != null) {
                            i10 = R.id.post_preview;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.post_preview);
                            if (linearLayout != null) {
                                i10 = R.id.post_title;
                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.post_title);
                                if (textView4 != null) {
                                    FrameLayout frameLayout = (FrameLayout) view;
                                    i10 = R.id.submit;
                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.submit);
                                    if (textView5 != null) {
                                        i10 = R.id.time;
                                        TextView textView6 = (TextView) ViewBindings.a(view, R.id.time);
                                        if (textView6 != null) {
                                            i10 = R.id.time_title;
                                            TextView textView7 = (TextView) ViewBindings.a(view, R.id.time_title);
                                            if (textView7 != null) {
                                                return new DialogLayoutSendBroadcastBinding(frameLayout, textView, textView2, textView3, editText, nVImageView, linearLayout, textView4, frameLayout, textView5, textView6, textView7);
                                            }
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
