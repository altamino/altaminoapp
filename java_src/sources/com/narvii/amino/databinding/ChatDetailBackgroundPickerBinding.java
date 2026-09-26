package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBackgroundPickerRecycler;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatDetailBackgroundPickerBinding implements ViewBinding {

    @NonNull
    public final LinearLayout backgroundPickerLayout;

    @NonNull
    public final NVImageView cancel;

    @NonNull
    public final ChatBackgroundPickerRecycler chatBackgroundPicker;

    @NonNull
    public final NVImageView done;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ChatDetailBackgroundPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailBackgroundPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_background_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailBackgroundPickerBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull ChatBackgroundPickerRecycler chatBackgroundPickerRecycler, @NonNull NVImageView nVImageView2) {
        this.rootView = frameLayout;
        this.backgroundPickerLayout = linearLayout;
        this.cancel = nVImageView;
        this.chatBackgroundPicker = chatBackgroundPickerRecycler;
        this.done = nVImageView2;
    }

    @NonNull
    public static ChatDetailBackgroundPickerBinding bind(@NonNull View view) {
        int i10 = R.id.background_picker_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.background_picker_layout);
        if (linearLayout != null) {
            i10 = R.id.cancel;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.cancel);
            if (nVImageView != null) {
                i10 = R.id.chat_background_picker;
                ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = (ChatBackgroundPickerRecycler) ViewBindings.a(view, R.id.chat_background_picker);
                if (chatBackgroundPickerRecycler != null) {
                    i10 = R.id.done;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.done);
                    if (nVImageView2 != null) {
                        return new ChatDetailBackgroundPickerBinding((FrameLayout) view, linearLayout, nVImageView, chatBackgroundPickerRecycler, nVImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
