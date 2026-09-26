package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes2.dex */
public final class VVIndicatorView extends FrameLayout {
    private int channelType;

    @NotNull
    private final m imgIndicator$delegate;

    @Nullable
    private NVContext nvContext;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.video.view.VVIndicatorView$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;
        final /* synthetic */ View $this_bind;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(View view, int i10) {
            super(0);
            this.$this_bind = view;
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View viewFindViewById = this.$this_bind.findViewById(this.$res);
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.video.view.VVIndicatorView.bind");
            return viewFindViewById;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VVIndicatorView(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VVIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.channelType = -1;
        this.imgIndicator$delegate = bind(this, R.id.indicator);
        this.nvContext = Utils.getNVContext(context);
        View.inflate(context, R.layout.widget_vv_type_indicator, this);
    }

    private final <T extends View> m<T> bind(View view, @IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(view, i10));
    }

    private final NVImageView getImgIndicator() {
        return (NVImageView) this.imgIndicator$delegate.getValue();
    }

    public final void setLiveChannelType(int i10) {
        if (this.channelType == i10) {
            return;
        }
        this.channelType = i10;
        getImgIndicator().setImageUrl("assets://video_white.webp");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = getImgIndicator().getDrawable();
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            if (animationDrawable.isRunning()) {
                animationDrawable.stop();
            }
        }
        this.channelType = -1;
    }
}
