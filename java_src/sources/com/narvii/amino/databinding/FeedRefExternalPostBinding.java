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
import com.narvii.feed.FeedListItem;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class FeedRefExternalPostBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView content;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final LinearLayout userInfoContainer;

    @NonNull
    public static FeedRefExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_external_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefExternalPostBinding(@NonNull FeedListItem feedListItem, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout) {
        this.rootView = feedListItem;
        this.avatar = thumbImageView;
        this.content = textView;
        this.nickname = nicknameView;
        this.title = textView2;
        this.userInfoContainer = linearLayout;
    }

    @NonNull
    public static FeedRefExternalPostBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.content);
            if (textView != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        i10 = R.id.user_info_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.user_info_container);
                        if (linearLayout != null) {
                            return new FeedRefExternalPostBinding((FeedListItem) view, thumbImageView, textView, nicknameView, textView2, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
