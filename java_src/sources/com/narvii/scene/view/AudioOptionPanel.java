package com.narvii.scene.view;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.mediaeditor.databinding.AudioOptionPanelBinding;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AudioOptionPanel extends RelativeLayout {

    @NotNull
    private final AudioOptionPanelBinding binding;

    @Nullable
    private OnOptionClickListener onOptionClickListener;

    public interface OnOptionClickListener {
        void onOptionDelete(@NotNull View view);

        void onOptionSubmit(@NotNull View view);
    }

    public AudioOptionPanel(@Nullable Context context) {
        super(context);
        AudioOptionPanelBinding audioOptionPanelBindingInflate = AudioOptionPanelBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(audioOptionPanelBindingInflate, "inflate(...)");
        this.binding = audioOptionPanelBindingInflate;
    }

    public final void setOnOptionClickListener(@NotNull OnOptionClickListener onOptionClickListener) {
        t.j(onOptionClickListener, "onOptionClickListener");
        this.onOptionClickListener = onOptionClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioOptionPanel(@Nullable Context context, @NotNull AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(attributeSet, "attributeSet");
        AudioOptionPanelBinding audioOptionPanelBindingInflate = AudioOptionPanelBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(audioOptionPanelBindingInflate, "inflate(...)");
        this.binding = audioOptionPanelBindingInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$0(AudioOptionPanel this$0, View view) {
        t.j(this$0, "this$0");
        OnOptionClickListener onOptionClickListener = this$0.onOptionClickListener;
        if (onOptionClickListener != null) {
            ImageView optionDone = this$0.binding.optionDone;
            t.i(optionDone, "optionDone");
            onOptionClickListener.onOptionSubmit(optionDone);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$1(AudioOptionPanel this$0, View view) {
        t.j(this$0, "this$0");
        OnOptionClickListener onOptionClickListener = this$0.onOptionClickListener;
        if (onOptionClickListener != null) {
            ImageView optionCancel = this$0.binding.optionCancel;
            t.i(optionCancel, "optionCancel");
            onOptionClickListener.onOptionDelete(optionCancel);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.binding.optionDone.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioOptionPanel.onFinishInflate$lambda$0(this.f2704a, view);
            }
        });
        this.binding.optionCancel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioOptionPanel.onFinishInflate$lambda$1(this.f2705a, view);
            }
        });
    }

    public final void setData(@Nullable String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            this.binding.optionTitle.setText(str2);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str + " - " + str2);
        StyleSpan styleSpan = new StyleSpan(1);
        t.g(str);
        spannableStringBuilder.setSpan(styleSpan, 0, str.length(), 0);
        this.binding.optionTitle.setText(spannableStringBuilder);
    }
}
