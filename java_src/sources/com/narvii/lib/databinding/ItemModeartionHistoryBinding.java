package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemModeartionHistoryBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView logtime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final TextView note;

    @NonNull
    public final TextView operationName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout targetContainer;

    @NonNull
    public final TextView targetName;

    @NonNull
    public static ItemModeartionHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemModeartionHistoryBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
        if (thumbImageView != null) {
            i10 = R.id.logtime;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, i10);
                if (nicknameView != null) {
                    i10 = R.id.note;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        i10 = R.id.operation_name;
                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                        if (textView3 != null) {
                            i10 = R.id.target_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R.id.target_name;
                                TextView textView4 = (TextView) ViewBindings.a(view, i10);
                                if (textView4 != null) {
                                    return new ItemModeartionHistoryBinding((LinearLayout) view, thumbImageView, textView, nicknameView, textView2, textView3, linearLayout, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemModeartionHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_modeartion_history, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemModeartionHistoryBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.logtime = textView;
        this.nickname = nicknameView;
        this.note = textView2;
        this.operationName = textView3;
        this.targetContainer = linearLayout2;
        this.targetName = textView4;
    }
}
