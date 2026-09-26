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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemRankingUserNormalBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView scores;

    @NonNull
    public final NicknameView userName;

    @NonNull
    public final AutoSizingTextView userRankingNo;

    @NonNull
    public static ItemRankingUserNormalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRankingUserNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_ranking_user_normal, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRankingUserNormalBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = linearLayout;
        this.scores = textView;
        this.userName = nicknameView;
        this.userRankingNo = autoSizingTextView;
    }

    @NonNull
    public static ItemRankingUserNormalBinding bind(@NonNull View view) {
        int i10 = R.id.scores;
        TextView textView = (TextView) ViewBindings.a(view, R.id.scores);
        if (textView != null) {
            i10 = R.id.user_name;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.user_name);
            if (nicknameView != null) {
                i10 = R.id.user_ranking_no;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.user_ranking_no);
                if (autoSizingTextView != null) {
                    return new ItemRankingUserNormalBinding((LinearLayout) view, textView, nicknameView, autoSizingTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
