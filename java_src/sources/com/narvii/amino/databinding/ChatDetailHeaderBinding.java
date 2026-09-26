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
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView stub1;

    @NonNull
    public final TextView stub2;

    @NonNull
    public final View stub5;

    @NonNull
    public static ChatDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailHeaderBinding(@NonNull RelativeLayout relativeLayout, @NonNull NicknameView nicknameView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view) {
        this.rootView = relativeLayout;
        this.nickname = nicknameView;
        this.stub1 = textView;
        this.stub2 = textView2;
        this.stub5 = view;
    }

    @NonNull
    public static ChatDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.nickname;
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
        if (nicknameView != null) {
            i10 = R.id.stub1;
            TextView textView = (TextView) ViewBindings.a(view, R.id.stub1);
            if (textView != null) {
                i10 = R.id.stub2;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.stub2);
                if (textView2 != null) {
                    i10 = R.id.stub5;
                    View viewA = ViewBindings.a(view, R.id.stub5);
                    if (viewA != null) {
                        return new ChatDetailHeaderBinding((RelativeLayout) view, nicknameView, textView, textView2, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
