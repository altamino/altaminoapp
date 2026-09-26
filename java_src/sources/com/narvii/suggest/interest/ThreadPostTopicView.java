package com.narvii.suggest.interest;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import com.narvii.widget.TagRoundView;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ThreadPostTopicView extends TagRoundView {
    private boolean checked;

    @Nullable
    private StoryTopic storyTopic;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int UNCHECKED_COLOR = Color.parseColor("#41C4A7");
    private static final int CHECKED_COLOR = Color.parseColor("#45ba96");
    private static final int UNCHECKED_BG_COLOR = Color.parseColor("#44000000");

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        return CHECKED_COLOR;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    @Nullable
    public final StoryTopic getStoryTopic() {
        return this.storyTopic;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadPostTopicView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
    }

    @Override // com.narvii.widget.TagRoundView
    @Nullable
    protected String getName() {
        StoryTopic storyTopic = this.storyTopic;
        if (storyTopic != null) {
            return storyTopic.getDisplayName();
        }
        return null;
    }

    public final void setChecked(boolean z6) {
        this.checked = z6;
        updateBackground();
    }

    public final void setStoryTopic(@Nullable StoryTopic storyTopic) {
        this.storyTopic = storyTopic;
        updateView();
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateBackground() {
        super.updateBackground();
        GradientDrawable backgroundDrawable = getBackgroundDrawable();
        if (!this.checked) {
            backgroundDrawable.setColor(UNCHECKED_BG_COLOR);
            int iDpToPx = (int) Utils.dpToPx(getContext(), 1.0f);
            int i10 = UNCHECKED_COLOR;
            backgroundDrawable.setStroke(iDpToPx, i10);
            this.topicText.setTextColor(i10);
        } else {
            backgroundDrawable.setColor(getAutoBackgroundColor());
            this.topicText.setTextColor(-1);
        }
        setBackground(backgroundDrawable);
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateView() {
        super.updateView();
        this.topicText.setVisibility(0);
    }
}
