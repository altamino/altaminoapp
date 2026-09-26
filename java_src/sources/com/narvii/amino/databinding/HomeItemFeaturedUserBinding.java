package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.MoodView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class HomeItemFeaturedUserBinding implements ViewBinding {

    @NonNull
    public final MoodView mood;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final View onlineStatusOval;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static HomeItemFeaturedUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeItemFeaturedUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.home_item_featured_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HomeItemFeaturedUserBinding(@NonNull FlexLayout flexLayout, @NonNull MoodView moodView, @NonNull NicknameView nicknameView, @NonNull View view) {
        this.rootView = flexLayout;
        this.mood = moodView;
        this.nickname = nicknameView;
        this.onlineStatusOval = view;
    }

    @NonNull
    public static HomeItemFeaturedUserBinding bind(@NonNull View view) {
        int i10 = R.id.mood;
        MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
        if (moodView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.online_status_oval;
                View viewA = ViewBindings.a(view, R.id.online_status_oval);
                if (viewA != null) {
                    return new HomeItemFeaturedUserBinding((FlexLayout) view, moodView, nicknameView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
