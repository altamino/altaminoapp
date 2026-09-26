package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class QuizeShareContentLayoutBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView answer1;

    @NonNull
    public final AutoSizingTextView answer2;

    @NonNull
    public final AutoSizingTextView answer3;

    @NonNull
    public final AutoSizingTextView answer4;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final View divider;

    @NonNull
    public final TextView nickname;

    @NonNull
    public final FlexLayout realShareLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ThumbImageView shareBg;

    @NonNull
    public final View shareBgOverlay;

    @NonNull
    public final EditText shareCustomTitle;

    @NonNull
    public final AutoSizingTextView shareQuestionTitle;

    @NonNull
    public final TextView shareQuizPlayedTime;

    @NonNull
    public final AutoSizingTextView shareQuizTitle;

    @NonNull
    public final NVImageView topBigOverlay;

    @NonNull
    public final NVImageView topSmallOverlay;

    private QuizeShareContentLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull AutoSizingTextView autoSizingTextView4, @NonNull ThumbImageView thumbImageView, @NonNull View view, @NonNull TextView textView, @NonNull FlexLayout flexLayout2, @NonNull ThumbImageView thumbImageView2, @NonNull View view2, @NonNull EditText editText, @NonNull AutoSizingTextView autoSizingTextView5, @NonNull TextView textView2, @NonNull AutoSizingTextView autoSizingTextView6, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2) {
        this.rootView = flexLayout;
        this.answer1 = autoSizingTextView;
        this.answer2 = autoSizingTextView2;
        this.answer3 = autoSizingTextView3;
        this.answer4 = autoSizingTextView4;
        this.avatar = thumbImageView;
        this.divider = view;
        this.nickname = textView;
        this.realShareLayout = flexLayout2;
        this.shareBg = thumbImageView2;
        this.shareBgOverlay = view2;
        this.shareCustomTitle = editText;
        this.shareQuestionTitle = autoSizingTextView5;
        this.shareQuizPlayedTime = textView2;
        this.shareQuizTitle = autoSizingTextView6;
        this.topBigOverlay = nVImageView;
        this.topSmallOverlay = nVImageView2;
    }

    @NonNull
    public static QuizeShareContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizeShareContentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.answer_1;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.answer_1);
        if (autoSizingTextView != null) {
            i10 = R.id.answer_2;
            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.answer_2);
            if (autoSizingTextView2 != null) {
                i10 = R.id.answer_3;
                AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.answer_3);
                if (autoSizingTextView3 != null) {
                    i10 = R.id.answer_4;
                    AutoSizingTextView autoSizingTextView4 = (AutoSizingTextView) ViewBindings.a(view, R.id.answer_4);
                    if (autoSizingTextView4 != null) {
                        i10 = R.id.avatar;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
                        if (thumbImageView != null) {
                            i10 = R.id.divider;
                            View viewA = ViewBindings.a(view, R.id.divider);
                            if (viewA != null) {
                                i10 = R.id.nickname;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.nickname);
                                if (textView != null) {
                                    i10 = R.id.real_share_layout;
                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.real_share_layout);
                                    if (flexLayout != null) {
                                        i10 = R.id.share_bg;
                                        ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.share_bg);
                                        if (thumbImageView2 != null) {
                                            i10 = R.id.share_bg_overlay;
                                            View viewA2 = ViewBindings.a(view, R.id.share_bg_overlay);
                                            if (viewA2 != null) {
                                                i10 = R.id.share_custom_title;
                                                EditText editText = (EditText) ViewBindings.a(view, R.id.share_custom_title);
                                                if (editText != null) {
                                                    i10 = R.id.share_question_title;
                                                    AutoSizingTextView autoSizingTextView5 = (AutoSizingTextView) ViewBindings.a(view, R.id.share_question_title);
                                                    if (autoSizingTextView5 != null) {
                                                        i10 = R.id.share_quiz_played_time;
                                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.share_quiz_played_time);
                                                        if (textView2 != null) {
                                                            i10 = R.id.share_quiz_title;
                                                            AutoSizingTextView autoSizingTextView6 = (AutoSizingTextView) ViewBindings.a(view, R.id.share_quiz_title);
                                                            if (autoSizingTextView6 != null) {
                                                                i10 = R.id.top_big_overlay;
                                                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.top_big_overlay);
                                                                if (nVImageView != null) {
                                                                    i10 = R.id.top_small_overlay;
                                                                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.top_small_overlay);
                                                                    if (nVImageView2 != null) {
                                                                        return new QuizeShareContentLayoutBinding((FlexLayout) view, autoSizingTextView, autoSizingTextView2, autoSizingTextView3, autoSizingTextView4, thumbImageView, viewA, textView, flexLayout, thumbImageView2, viewA2, editText, autoSizingTextView5, textView2, autoSizingTextView6, nVImageView, nVImageView2);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    @NonNull
    public static QuizeShareContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quize_share_content_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
