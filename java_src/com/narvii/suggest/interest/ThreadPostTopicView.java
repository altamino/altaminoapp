package com.narvii.suggest.interest;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import com.narvii.widget.TagRoundView;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThreadPostTopicView.kt */
/* loaded from: classes3.dex */
public class ThreadPostTopicView extends TagRoundView {
    private HashMap _$_findViewCache;
    private boolean checked;
    private StoryTopic storyTopic;
    public static final Companion Companion = new Companion(null);
    private static final int UNCHECKED_COLOR = Color.parseColor("#41C4A7");
    private static final int CHECKED_COLOR = Color.parseColor("#45ba96");
    private static final int UNCHECKED_BG_COLOR = Color.parseColor("#44000000");

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadPostTopicView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public final StoryTopic getStoryTopic() {
        return this.storyTopic;
    }

    public final void setStoryTopic(StoryTopic storyTopic) {
        this.storyTopic = storyTopic;
        updateView();
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
        updateBackground();
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateView() {
        super.updateView();
        TextView topicText = this.topicText;
        Intrinsics.checkExpressionValueIsNotNull(topicText, "topicText");
        topicText.setVisibility(0);
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateBackground() {
        super.updateBackground();
        GradientDrawable backgroundDrawable = getBackgroundDrawable();
        if (!this.checked) {
            backgroundDrawable.setColor(UNCHECKED_BG_COLOR);
            backgroundDrawable.setStroke((int) Utils.dpToPx(getContext(), 1.0f), UNCHECKED_COLOR);
            this.topicText.setTextColor(UNCHECKED_COLOR);
        } else {
            backgroundDrawable.setColor(getAutoBackgroundColor());
            this.topicText.setTextColor(-1);
        }
        setBackground(backgroundDrawable);
    }

    @Override // com.narvii.widget.TagRoundView
    protected String getName() {
        StoryTopic storyTopic = this.storyTopic;
        if (storyTopic != null) {
            return storyTopic.getDisplayName();
        }
        return null;
    }

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        return CHECKED_COLOR;
    }

    /* compiled from: ThreadPostTopicView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
