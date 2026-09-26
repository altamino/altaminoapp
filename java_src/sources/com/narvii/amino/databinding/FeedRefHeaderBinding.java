package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedRefHeaderBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.feed_ref_header, viewGroup);
        return bind(viewGroup);
    }

    private FeedRefHeaderBinding(@NonNull View view, @NonNull ThumbImageView thumbImageView, @NonNull NicknameView nicknameView) {
        this.rootView = view;
        this.avatar = thumbImageView;
        this.nickname = nicknameView;
    }

    @NonNull
    public static FeedRefHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                return new FeedRefHeaderBinding(view, thumbImageView, nicknameView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
