package com.narvii.suggest.interest;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import com.narvii.widget.TagRoundView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThreadPostAddTopicView.kt */
/* loaded from: classes3.dex */
public final class ThreadPostAddTopicView extends TagRoundView {
    private HashMap _$_findViewCache;

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

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadPostAddTopicView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public final void setUp() {
        updateView();
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
        backgroundDrawable.setColor(0);
        backgroundDrawable.setStroke((int) Utils.dpToPx(getContext(), 1.0f), -1);
        setBackground(backgroundDrawable);
    }

    @Override // com.narvii.widget.TagRoundView
    protected String getName() throws Resources.NotFoundException {
        String string = getResources().getString(R.string.add_topic);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.string.add_topic)");
        return string;
    }
}
