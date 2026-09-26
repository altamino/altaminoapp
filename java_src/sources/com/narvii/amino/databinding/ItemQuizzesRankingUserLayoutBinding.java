package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.Color3DTextView;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemQuizzesRankingUserLayoutBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final ImageView quizFinish;

    @NonNull
    public final EmojioneView quizHellFinish;

    @NonNull
    public final TextView rankingNo;

    @NonNull
    public final ImageView rankingNoIcon;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final Color3DTextView scores;

    @NonNull
    public static ItemQuizzesRankingUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemQuizzesRankingUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_quizzes_ranking_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemQuizzesRankingUserLayoutBinding(@NonNull RadiusLayout radiusLayout, @NonNull View view, @NonNull NicknameView nicknameView, @NonNull ImageView imageView, @NonNull EmojioneView emojioneView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull Color3DTextView color3DTextView) {
        this.rootView = radiusLayout;
        this.divider = view;
        this.nickname = nicknameView;
        this.quizFinish = imageView;
        this.quizHellFinish = emojioneView;
        this.rankingNo = textView;
        this.rankingNoIcon = imageView2;
        this.scores = color3DTextView;
    }

    @NonNull
    public static ItemQuizzesRankingUserLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.quiz_finish;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.quiz_finish);
                if (imageView != null) {
                    i10 = R.id.quiz_hell_finish;
                    EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.quiz_hell_finish);
                    if (emojioneView != null) {
                        i10 = R.id.ranking_no;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.ranking_no);
                        if (textView != null) {
                            i10 = R.id.ranking_no_icon;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.ranking_no_icon);
                            if (imageView2 != null) {
                                i10 = R.id.scores;
                                Color3DTextView color3DTextView = (Color3DTextView) ViewBindings.a(view, R.id.scores);
                                if (color3DTextView != null) {
                                    return new ItemQuizzesRankingUserLayoutBinding((RadiusLayout) view, viewA, nicknameView, imageView, emojioneView, textView, imageView2, color3DTextView);
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
