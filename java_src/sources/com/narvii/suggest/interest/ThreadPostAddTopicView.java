package com.narvii.suggest.interest;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import com.narvii.widget.TagRoundView;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadPostAddTopicView extends TagRoundView {
    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadPostAddTopicView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
    }

    @Override // com.narvii.widget.TagRoundView
    @NotNull
    protected String getName() {
        String string = getResources().getString(R.string.add_topic);
        t.i(string, "getString(...)");
        return string;
    }

    public final void setUp() {
        updateView();
        updateBackground();
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateBackground() {
        super.updateBackground();
        GradientDrawable backgroundDrawable = getBackgroundDrawable();
        backgroundDrawable.setColor(0);
        backgroundDrawable.setStroke((int) Utils.dpToPx(getContext(), 1.0f), -1);
        setBackground(backgroundDrawable);
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateView() {
        super.updateView();
        this.topicText.setVisibility(0);
    }
}
