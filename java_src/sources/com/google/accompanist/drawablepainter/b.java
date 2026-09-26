package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    @NotNull
    private static final m MAIN_HANDLER$delegate = o.b(q.NONE, a.INSTANCE);

    static final class a extends v implements e8.a<Handler> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler d() {
        return (Handler) MAIN_HANDLER$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(Drawable drawable) {
        if (drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0) {
            return SizeKt.a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        return Size.Companion.a();
    }
}
