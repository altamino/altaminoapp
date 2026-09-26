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
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogWelcomeMessageContentBinding implements ViewBinding {

    @NonNull
    public final LinearLayout agentLayout;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final LinearLayout fillContent;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public static DialogWelcomeMessageContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogWelcomeMessageContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_welcome_message_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogWelcomeMessageContentBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull NicknameView nicknameView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.agentLayout = linearLayout2;
        this.content = linearLayout3;
        this.fillContent = linearLayout4;
        this.nickname = nicknameView;
        this.text = textView;
        this.title = textView2;
    }

    @NonNull
    public static DialogWelcomeMessageContentBinding bind(@NonNull View view) {
        int i10 = R.id.agent_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.agent_layout);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) view;
            i10 = R.id.fill_content;
            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.fill_content);
            if (linearLayout3 != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                    if (textView != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new DialogWelcomeMessageContentBinding(linearLayout2, linearLayout, linearLayout2, linearLayout3, nicknameView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
