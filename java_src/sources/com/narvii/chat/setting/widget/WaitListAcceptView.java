package com.narvii.chat.setting.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.narvii.amino.databinding.WaitListAcceptViewBinding;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class WaitListAcceptView extends FrameLayout {

    @NotNull
    private final WaitListAcceptViewBinding binding;
    private boolean isRequesting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitListAcceptView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        WaitListAcceptViewBinding waitListAcceptViewBindingInflate = WaitListAcceptViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(waitListAcceptViewBindingInflate, "inflate(...)");
        this.binding = waitListAcceptViewBindingInflate;
    }

    public final boolean isRequesting() {
        return this.isRequesting;
    }

    public final void setRequesting(boolean z6) {
        this.isRequesting = z6;
    }

    public final void updateState(boolean z6, boolean z10, boolean z11) {
        WaitListAcceptViewBinding waitListAcceptViewBinding = this.binding;
        this.isRequesting = z6;
        if (z6) {
            waitListAcceptViewBinding.accept.setVisibility(4);
            waitListAcceptViewBinding.cancel.setVisibility(4);
            waitListAcceptViewBinding.progress.setVisibility(0);
        } else if (z10) {
            waitListAcceptViewBinding.accept.setVisibility(0);
            waitListAcceptViewBinding.cancel.setVisibility(4);
            waitListAcceptViewBinding.progress.setVisibility(4);
        } else if (z11) {
            waitListAcceptViewBinding.accept.setVisibility(4);
            waitListAcceptViewBinding.cancel.setVisibility(0);
            waitListAcceptViewBinding.progress.setVisibility(4);
        } else {
            waitListAcceptViewBinding.accept.setVisibility(4);
            waitListAcceptViewBinding.cancel.setVisibility(4);
            waitListAcceptViewBinding.progress.setVisibility(4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitListAcceptView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        WaitListAcceptViewBinding waitListAcceptViewBindingInflate = WaitListAcceptViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(waitListAcceptViewBindingInflate, "inflate(...)");
        this.binding = waitListAcceptViewBindingInflate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitListAcceptView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        WaitListAcceptViewBinding waitListAcceptViewBindingInflate = WaitListAcceptViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(waitListAcceptViewBindingInflate, "inflate(...)");
        this.binding = waitListAcceptViewBindingInflate;
    }
}
