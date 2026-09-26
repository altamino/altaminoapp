package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class FeedRefUserHeaderBinding implements ViewBinding {

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefUserHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.feed_ref_user_header, viewGroup);
        return bind(viewGroup);
    }

    private FeedRefUserHeaderBinding(@NonNull View view, @NonNull NicknameView nicknameView) {
        this.rootView = view;
        this.nickname = nicknameView;
    }

    @NonNull
    public static FeedRefUserHeaderBinding bind(@NonNull View view) {
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
        if (nicknameView != null) {
            return new FeedRefUserHeaderBinding(view, nicknameView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.nickname)));
    }
}
