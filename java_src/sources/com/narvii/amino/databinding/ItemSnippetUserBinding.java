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

/* JADX INFO: loaded from: classes9.dex */
public final class ItemSnippetUserBinding implements ViewBinding {

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final TextView profile;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemSnippetUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetUserBinding(@NonNull LinearLayout linearLayout, @NonNull NicknameView nicknameView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.nickname = nicknameView;
        this.profile = textView;
    }

    @NonNull
    public static ItemSnippetUserBinding bind(@NonNull View view) {
        int i10 = R.id.nickname;
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
        if (nicknameView != null) {
            i10 = R.id.profile;
            TextView textView = (TextView) ViewBindings.a(view, R.id.profile);
            if (textView != null) {
                return new ItemSnippetUserBinding((LinearLayout) view, nicknameView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
