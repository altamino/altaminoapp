package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes4.dex */
public final class FeedUserHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView datetime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final RelativeLayout userClick;

    @NonNull
    public static FeedUserHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedUserHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_user_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedUserHeaderBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull RelativeLayout relativeLayout) {
        this.rootView = frameLayout;
        this.datetime = textView;
        this.nickname = nicknameView;
        this.userClick = relativeLayout;
    }

    @NonNull
    public static FeedUserHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.datetime;
        TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.user_click;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.user_click);
                if (relativeLayout != null) {
                    return new FeedUserHeaderBinding((FrameLayout) view, textView, nicknameView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
