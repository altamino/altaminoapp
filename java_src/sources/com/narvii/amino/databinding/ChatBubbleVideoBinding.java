package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatFlexSizeImageView;
import com.narvii.chat.ChatImageView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SmoothProgressBar;

/* JADX INFO: loaded from: classes6.dex */
public final class ChatBubbleVideoBinding implements ViewBinding {

    @NonNull
    public final FrameLayout attachContent;

    @NonNull
    public final TextView duration;

    @NonNull
    public final ChatImageView image;

    @NonNull
    public final ChatFlexSizeImageView placeholder;

    @NonNull
    public final SmoothProgressBar progress;

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public final FontAwesomeView videoPlay;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_video, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleVideoBinding(@NonNull View view, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ChatImageView chatImageView, @NonNull ChatFlexSizeImageView chatFlexSizeImageView, @NonNull SmoothProgressBar smoothProgressBar, @NonNull View view2, @NonNull TextView textView2, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = view;
        this.attachContent = frameLayout;
        this.duration = textView;
        this.image = chatImageView;
        this.placeholder = chatFlexSizeImageView;
        this.progress = smoothProgressBar;
        this.stub1 = view2;
        this.text = textView2;
        this.videoPlay = fontAwesomeView;
    }

    @NonNull
    public static ChatBubbleVideoBinding bind(@NonNull View view) {
        int i10 = R.id.attach_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.attach_content);
        if (frameLayout != null) {
            i10 = R.id.duration;
            TextView textView = (TextView) ViewBindings.a(view, R.id.duration);
            if (textView != null) {
                i10 = R.id.image;
                ChatImageView chatImageView = (ChatImageView) ViewBindings.a(view, R.id.image);
                if (chatImageView != null) {
                    i10 = R.id.placeholder;
                    ChatFlexSizeImageView chatFlexSizeImageView = (ChatFlexSizeImageView) ViewBindings.a(view, R.id.placeholder);
                    if (chatFlexSizeImageView != null) {
                        i10 = R.id.progress;
                        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) ViewBindings.a(view, R.id.progress);
                        if (smoothProgressBar != null) {
                            i10 = R.id.stub1;
                            View viewA = ViewBindings.a(view, R.id.stub1);
                            if (viewA != null) {
                                i10 = R.id.text;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView2 != null) {
                                    i10 = R.id.video_play;
                                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.video_play);
                                    if (fontAwesomeView != null) {
                                        return new ChatBubbleVideoBinding(view, frameLayout, textView, chatImageView, chatFlexSizeImageView, smoothProgressBar, viewA, textView2, fontAwesomeView);
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
