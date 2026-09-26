package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidColorFilter_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.s;

/* JADX INFO: loaded from: classes3.dex */
@StabilityInferred
public final class a extends Painter implements RememberObserver {
    public static final int $stable = 8;

    @NotNull
    private final m callback$delegate;

    @NotNull
    private final MutableState drawInvalidateTick$delegate;

    @NotNull
    private final Drawable drawable;

    @NotNull
    private final MutableState drawableIntrinsicSize$delegate;

    /* JADX INFO: renamed from: com.google.accompanist.drawablepainter.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0156a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static final class b extends v implements e8.a<C0157a> {

        /* JADX INFO: renamed from: com.google.accompanist.drawablepainter.a$b$a, reason: collision with other inner class name */
        public static final class C0157a implements Drawable.Callback {
            final /* synthetic */ a this$0;

            C0157a(a aVar) {
                this.this$0 = aVar;
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(@NotNull Drawable d) {
                t.j(d, "d");
                a aVar = this.this$0;
                aVar.u(aVar.r() + 1);
                a aVar2 = this.this$0;
                aVar2.v(com.google.accompanist.drawablepainter.b.c(aVar2.s()));
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(@NotNull Drawable d, @NotNull Runnable what, long j6) {
                t.j(d, "d");
                t.j(what, "what");
                com.google.accompanist.drawablepainter.b.d().postAtTime(what, j6);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(@NotNull Drawable d, @NotNull Runnable what) {
                t.j(d, "d");
                t.j(what, "what");
                com.google.accompanist.drawablepainter.b.d().removeCallbacks(what);
            }
        }

        b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final C0157a invoke() {
            return new C0157a(a.this);
        }
    }

    @NotNull
    public final Drawable s() {
        return this.drawable;
    }

    public a(@NotNull Drawable drawable) {
        t.j(drawable, "drawable");
        this.drawable = drawable;
        this.drawInvalidateTick$delegate = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
        this.drawableIntrinsicSize$delegate = SnapshotStateKt__SnapshotStateKt.e(Size.c(com.google.accompanist.drawablepainter.b.c(drawable)), null, 2, null);
        this.callback$delegate = o.a(new b());
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    private final Drawable.Callback q() {
        return (Drawable.Callback) this.callback$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final int r() {
        return ((Number) this.drawInvalidateTick$delegate.getValue()).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long t() {
        return ((Size) this.drawableIntrinsicSize$delegate.getValue()).m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(int i10) {
        this.drawInvalidateTick$delegate.setValue(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(long j6) {
        this.drawableIntrinsicSize$delegate.setValue(Size.c(j6));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f) {
        this.drawable.setAlpha(j8.o.n(c.c(f * 255), 0, 255));
        return true;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        this.drawable.setCallback(q());
        this.drawable.setVisible(true, true);
        Object obj = this.drawable;
        if (obj instanceof Animatable) {
            ((Animatable) obj).start();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        Object obj = this.drawable;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
        }
        this.drawable.setVisible(false, false);
        this.drawable.setCallback(null);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter != null ? AndroidColorFilter_androidKt.b(colorFilter) : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean f(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        Drawable drawable = this.drawable;
        int i10 = C0156a.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            i11 = 0;
        } else if (i10 != 2) {
            throw new s();
        }
        return drawable.setLayoutDirection(i11);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        Canvas canvasA = drawScope.T().a();
        r();
        this.drawable.setBounds(0, 0, c.c(Size.i(drawScope.c())), c.c(Size.g(drawScope.c())));
        try {
            canvasA.r();
            this.drawable.draw(AndroidCanvas_androidKt.c(canvasA));
        } finally {
            canvasA.n();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        d();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return t();
    }
}
