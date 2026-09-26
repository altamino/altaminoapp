package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemMemberInviteBinding implements ViewBinding {

    @NonNull
    public final TextView lastNotifyTime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final LinearLayout notify;

    @NonNull
    public final ImageView notifyIndicator;

    @NonNull
    public final TextView notifyTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_member_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMemberInviteBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.lastNotifyTime = textView;
        this.nickname = nicknameView;
        this.notify = linearLayout2;
        this.notifyIndicator = imageView;
        this.notifyTitle = textView2;
    }

    @NonNull
    public static ItemMemberInviteBinding bind(@NonNull View view) {
        int i10 = R.id.last_notify_time;
        TextView textView = (TextView) ViewBindings.a(view, R.id.last_notify_time);
        if (textView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.notify;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.notify);
                if (linearLayout != null) {
                    i10 = R.id.notify_indicator;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.notify_indicator);
                    if (imageView != null) {
                        i10 = R.id.notify_title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.notify_title);
                        if (textView2 != null) {
                            return new ItemMemberInviteBinding((LinearLayout) view, textView, nicknameView, linearLayout, imageView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
