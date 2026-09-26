package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatBubbleAttachBinding implements ViewBinding {

    @NonNull
    public final TextView attachContent;

    @NonNull
    public final View attachDivider;

    @NonNull
    public final NVImageView attachImage;

    @NonNull
    public final TextView attachTitle;

    @NonNull
    public final LinearLayout chatAttachment;

    @NonNull
    private final View rootView;

    @NonNull
    public final Button strikeButton;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleAttachBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_attach, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleAttachBinding(@NonNull View view, @NonNull TextView textView, @NonNull View view2, @NonNull NVImageView nVImageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull Button button) {
        this.rootView = view;
        this.attachContent = textView;
        this.attachDivider = view2;
        this.attachImage = nVImageView;
        this.attachTitle = textView2;
        this.chatAttachment = linearLayout;
        this.strikeButton = button;
    }

    @NonNull
    public static ChatBubbleAttachBinding bind(@NonNull View view) {
        int i10 = R.id.attach_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.attach_content);
        if (textView != null) {
            i10 = R.id.attach_divider;
            View viewA = ViewBindings.a(view, R.id.attach_divider);
            if (viewA != null) {
                i10 = R.id.attach_image;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.attach_image);
                if (nVImageView != null) {
                    i10 = R.id.attach_title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.attach_title);
                    if (textView2 != null) {
                        i10 = R.id.chat_attachment;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.chat_attachment);
                        if (linearLayout != null) {
                            i10 = R.id.strike_button;
                            Button button = (Button) ViewBindings.a(view, R.id.strike_button);
                            if (button != null) {
                                return new ChatBubbleAttachBinding(view, textView, viewA, nVImageView, textView2, linearLayout, button);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
