package androidx.compose.material;

import e8.a;
import java.util.Map;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
final class SwipeableState$latestNonEmptyAnchorsFlow$1<T> extends v implements a<Map<Float, ? extends T>> {
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$latestNonEmptyAnchorsFlow$1(SwipeableState<T> swipeableState) {
        super(0);
        this.this$0 = swipeableState;
    }

    @Override // e8.a
    @NotNull
    public final Map<Float, T> invoke() {
        return this.this$0.m();
    }
}
