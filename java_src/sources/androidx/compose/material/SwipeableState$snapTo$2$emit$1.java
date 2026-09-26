package androidx.compose.material;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.compose.material.SwipeableState$snapTo$2", f = "Swipeable.kt", l = {TypedValues.AttributesType.TYPE_PATH_ROTATE}, m = "emit")
final class SwipeableState$snapTo$2$emit$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SwipeableState$snapTo$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$snapTo$2$emit$1(SwipeableState$snapTo$2 swipeableState$snapTo$2, kotlin.coroutines.d<? super SwipeableState$snapTo$2$emit$1> dVar) {
        super(dVar);
        this.this$0 = swipeableState$snapTo$2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
