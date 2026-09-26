package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class VvchatUserDialogBinding implements ViewBinding {

    @NonNull
    public final TintButton flag;

    @NonNull
    public final TextView kick;

    @NonNull
    public final TextView leaveChat;

    @NonNull
    public final LinearLayout leaveChatContainer;

    @NonNull
    public final LinearLayout onHoldContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView speakerActionContainer;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final FlexLayout stub2;

    @NonNull
    public final ImageView stub3;

    @NonNull
    public final View whiteRect;

    @NonNull
    public static VvchatUserDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VvchatUserDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.vvchat_user_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VvchatUserDialogBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.flag = tintButton;
        this.kick = textView;
        this.leaveChat = textView2;
        this.leaveChatContainer = linearLayout;
        this.onHoldContainer = linearLayout2;
        this.speakerActionContainer = textView3;
        this.stub1 = linearLayout3;
        this.stub2 = flexLayout;
        this.stub3 = imageView;
        this.whiteRect = view;
    }

    @NonNull
    public static VvchatUserDialogBinding bind(@NonNull View view) {
        int i10 = R.id.flag;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.flag);
        if (tintButton != null) {
            i10 = R.id.kick;
            TextView textView = (TextView) ViewBindings.a(view, R.id.kick);
            if (textView != null) {
                i10 = R.id.leave_chat;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.leave_chat);
                if (textView2 != null) {
                    i10 = R.id.leave_chat_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.leave_chat_container);
                    if (linearLayout != null) {
                        i10 = R.id.on_hold_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.on_hold_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.speaker_action_container;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.speaker_action_container);
                            if (textView3 != null) {
                                i10 = R.id.stub1;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                                if (linearLayout3 != null) {
                                    i10 = R.id.stub2;
                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.stub2);
                                    if (flexLayout != null) {
                                        i10 = R.id.stub3;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.stub3);
                                        if (imageView != null) {
                                            i10 = R.id.white_rect;
                                            View viewA = ViewBindings.a(view, R.id.white_rect);
                                            if (viewA != null) {
                                                return new VvchatUserDialogBinding((FrameLayout) view, tintButton, textView, textView2, linearLayout, linearLayout2, textView3, linearLayout3, flexLayout, imageView, viewA);
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
