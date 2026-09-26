package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemNoticeSystemMessageBinding implements ViewBinding {

    @NonNull
    public final NVThemeTextView content;

    @NonNull
    public final NVThemeTextView datetime;

    @NonNull
    public final ImageView indicator;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final NVThemeTextView noticeTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemNoticeSystemMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeSystemMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_system_message, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeSystemMessageBinding(@NonNull LinearLayout linearLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull ImageView imageView, @NonNull NicknameView nicknameView, @NonNull NVThemeTextView nVThemeTextView3) {
        this.rootView = linearLayout;
        this.content = nVThemeTextView;
        this.datetime = nVThemeTextView2;
        this.indicator = imageView;
        this.nickname = nicknameView;
        this.noticeTitle = nVThemeTextView3;
    }

    @NonNull
    public static ItemNoticeSystemMessageBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.content);
        if (nVThemeTextView != null) {
            i10 = R.id.datetime;
            NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.datetime);
            if (nVThemeTextView2 != null) {
                i10 = R.id.indicator;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.indicator);
                if (imageView != null) {
                    i10 = R.id.nickname;
                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                    if (nicknameView != null) {
                        i10 = R.id.notice_title;
                        NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, R.id.notice_title);
                        if (nVThemeTextView3 != null) {
                            return new ItemNoticeSystemMessageBinding((LinearLayout) view, nVThemeTextView, nVThemeTextView2, imageView, nicknameView, nVThemeTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
