package com.narvii.influencer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public abstract class InfluencerPostIndicator extends LinearLayout {
    private int defaultColor;

    @NotNull
    private final m lockIndicator$delegate;

    @NotNull
    private final m tvFansOnly$delegate;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.influencer.InfluencerPostIndicator$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View viewFindViewById = InfluencerPostIndicator.this.findViewById(this.$res);
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.influencer.InfluencerPostIndicator.bind");
            return viewFindViewById;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
    }

    public int getDefaultColor() {
        return this.defaultColor;
    }

    public void setDefaultColor(int i10) {
        this.defaultColor = i10;
    }

    public abstract void setIsFansOnly(boolean z6);

    @NotNull
    protected final <T extends View> m<T> bind(@NotNull InfluencerPostIndicator influencerPostIndicator, @IdRes int i10) {
        t.j(influencerPostIndicator, "<this>");
        return o.b(q.NONE, influencerPostIndicator.new AnonymousClass1(i10));
    }

    @NotNull
    protected final TintButton getLockIndicator() {
        return (TintButton) this.lockIndicator$delegate.getValue();
    }

    @NotNull
    protected final TextView getTvFansOnly() {
        return (TextView) this.tvFansOnly$delegate.getValue();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.lockIndicator$delegate = bind(this, R.id.influencer_lock);
        this.tvFansOnly$delegate = bind(this, R.id.fans_only);
        this.defaultColor = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.InfluencerPostIndicator);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        setDefaultColor(typedArrayObtainStyledAttributes.getColor(R.styleable.InfluencerPostIndicator_infulencer_default_color, -1));
        typedArrayObtainStyledAttributes.recycle();
    }
}
