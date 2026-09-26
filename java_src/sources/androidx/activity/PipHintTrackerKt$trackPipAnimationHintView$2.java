package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class PipHintTrackerKt$trackPipAnimationHintView$2<T> implements kotlinx.coroutines.flow.h {
    final /* synthetic */ Activity $this_trackPipAnimationHintView;

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object emit(@NotNull Rect rect, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Api26Impl.INSTANCE.a(this.$this_trackPipAnimationHintView, rect);
        return l0.INSTANCE;
    }
}
