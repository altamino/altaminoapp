package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
final class CrossfadeKt$Crossfade$3$1<T> extends v implements l<T, Boolean> {
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CrossfadeKt$Crossfade$3$1(Transition<T> transition) {
        super(1);
        this.$this_Crossfade = transition;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(T t5) {
        return Boolean.valueOf(!t.e(t5, this.$this_Crossfade.m()));
    }
}
