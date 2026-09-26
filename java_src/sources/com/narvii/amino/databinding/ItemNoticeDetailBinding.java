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
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public final class ItemNoticeDetailBinding implements ViewBinding {

    @NonNull
    public final LinearLayout communityContainer;

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView content;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final TextView label;

    @NonNull
    public final TextView muteTime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemNoticeDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeDetailBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.communityContainer = linearLayout2;
        this.communityIcon = thumbImageView;
        this.communityName = textView;
        this.content = textView2;
        this.datetime = textView3;
        this.label = textView4;
        this.muteTime = textView5;
        this.nickname = nicknameView;
    }

    @NonNull
    public static ItemNoticeDetailBinding bind(@NonNull View view) {
        int i10 = R.id.community_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_container);
        if (linearLayout != null) {
            i10 = R.id.community_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
            if (thumbImageView != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    i10 = R.id.content;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.content);
                    if (textView2 != null) {
                        i10 = R.id.datetime;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.datetime);
                        if (textView3 != null) {
                            i10 = R.id.label;
                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.label);
                            if (textView4 != null) {
                                i10 = R.id.mute_time;
                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.mute_time);
                                if (textView5 != null) {
                                    i10 = R.id.nickname;
                                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                    if (nicknameView != null) {
                                        return new ItemNoticeDetailBinding((LinearLayout) view, linearLayout, thumbImageView, textView, textView2, textView3, textView4, textView5, nicknameView);
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
