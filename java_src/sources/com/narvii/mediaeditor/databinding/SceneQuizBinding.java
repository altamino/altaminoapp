package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.scene.quiz.SceneQuizAnswerParent;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.GradientView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes11.dex */
public final class SceneQuizBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView alarm;

    @NonNull
    public final AutoSizingTextView alarmAnim;

    @NonNull
    public final SceneQuizItemBinding answer1;

    @NonNull
    public final SceneQuizItemBinding answer2;

    @NonNull
    public final SceneQuizItemBinding answer3;

    @NonNull
    public final SceneQuizItemBinding answer4;

    @NonNull
    public final FrameLayout countDownLayout;

    @NonNull
    public final LinearLayout grid;

    @NonNull
    public final CircleProgressBar progress;

    @NonNull
    public final AutoSizingTextView question;

    @NonNull
    public final GradientView redAlert;

    @NonNull
    private final SceneQuizAnswerParent rootView;

    @NonNull
    public final SceneQuizAnswerParent sceneQuizAnswerParent;

    @NonNull
    public final TextView skipHint;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public final View stub1;

    private SceneQuizBinding(@NonNull SceneQuizAnswerParent sceneQuizAnswerParent, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull SceneQuizItemBinding sceneQuizItemBinding, @NonNull SceneQuizItemBinding sceneQuizItemBinding2, @NonNull SceneQuizItemBinding sceneQuizItemBinding3, @NonNull SceneQuizItemBinding sceneQuizItemBinding4, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull CircleProgressBar circleProgressBar, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull GradientView gradientView, @NonNull SceneQuizAnswerParent sceneQuizAnswerParent2, @NonNull TextView textView, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull View view) {
        this.rootView = sceneQuizAnswerParent;
        this.alarm = autoSizingTextView;
        this.alarmAnim = autoSizingTextView2;
        this.answer1 = sceneQuizItemBinding;
        this.answer2 = sceneQuizItemBinding2;
        this.answer3 = sceneQuizItemBinding3;
        this.answer4 = sceneQuizItemBinding4;
        this.countDownLayout = frameLayout;
        this.grid = linearLayout;
        this.progress = circleProgressBar;
        this.question = autoSizingTextView3;
        this.redAlert = gradientView;
        this.sceneQuizAnswerParent = sceneQuizAnswerParent2;
        this.skipHint = textView;
        this.statusBarPlaceholder = statusBarPlaceHolder;
        this.stub1 = view;
    }

    @NonNull
    public static SceneQuizBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SceneQuizAnswerParent getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SceneQuizBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.alarm;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
        if (autoSizingTextView != null) {
            i10 = R.id.alarm_anim;
            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, i10);
            if (autoSizingTextView2 != null && (viewA = ViewBindings.a(view, (i10 = R.id.answer_1))) != null) {
                SceneQuizItemBinding sceneQuizItemBindingBind = SceneQuizItemBinding.bind(viewA);
                i10 = R.id.answer_2;
                View viewA3 = ViewBindings.a(view, i10);
                if (viewA3 != null) {
                    SceneQuizItemBinding sceneQuizItemBindingBind2 = SceneQuizItemBinding.bind(viewA3);
                    i10 = R.id.answer_3;
                    View viewA4 = ViewBindings.a(view, i10);
                    if (viewA4 != null) {
                        SceneQuizItemBinding sceneQuizItemBindingBind3 = SceneQuizItemBinding.bind(viewA4);
                        i10 = R.id.answer_4;
                        View viewA5 = ViewBindings.a(view, i10);
                        if (viewA5 != null) {
                            SceneQuizItemBinding sceneQuizItemBindingBind4 = SceneQuizItemBinding.bind(viewA5);
                            i10 = R.id.count_down_layout;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R.id.grid;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R.id.progress;
                                    CircleProgressBar circleProgressBar = (CircleProgressBar) ViewBindings.a(view, i10);
                                    if (circleProgressBar != null) {
                                        i10 = R.id.question;
                                        AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, i10);
                                        if (autoSizingTextView3 != null) {
                                            i10 = R.id.red_alert;
                                            GradientView gradientView = (GradientView) ViewBindings.a(view, i10);
                                            if (gradientView != null) {
                                                SceneQuizAnswerParent sceneQuizAnswerParent = (SceneQuizAnswerParent) view;
                                                i10 = R.id.skip_hint;
                                                TextView textView = (TextView) ViewBindings.a(view, i10);
                                                if (textView != null) {
                                                    i10 = R.id.status_bar_placeholder;
                                                    StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                                                    if (statusBarPlaceHolder != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.stub1))) != null) {
                                                        return new SceneQuizBinding(sceneQuizAnswerParent, autoSizingTextView, autoSizingTextView2, sceneQuizItemBindingBind, sceneQuizItemBindingBind2, sceneQuizItemBindingBind3, sceneQuizItemBindingBind4, frameLayout, linearLayout, circleProgressBar, autoSizingTextView3, gradientView, sceneQuizAnswerParent, textView, statusBarPlaceHolder, viewA2);
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
    public static SceneQuizBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scene_quiz, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
