package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
public final class ScrollableKt$scrollableNestedScrollConnection$1 implements NestedScrollConnection {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ State<ScrollingLogic> $scrollLogic;

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ Object c(long j6, d dVar) {
        return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public /* synthetic */ long d(long j6, int i10) {
        return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i10);
    }

    ScrollableKt$scrollableNestedScrollConnection$1(boolean z6, State<ScrollingLogic> state) {
        this.$enabled = z6;
        this.$scrollLogic = state;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object a(long j6, long j10, @NotNull d<? super Velocity> dVar) {
        ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;
        long jA;
        if (dVar instanceof ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1) {
            scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 = (ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1) dVar;
            int i10 = scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 = new ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1(this, dVar);
            }
        } else {
            scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 = new ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1(this, dVar);
        }
        Object objB = scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.label;
        if (i11 == 0) {
            w.b(objB);
            if (this.$enabled) {
                ScrollingLogic value = this.$scrollLogic.getValue();
                scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.J$0 = j10;
                scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.label = 1;
                objB = value.b(j10, scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1);
                if (objB == objE) {
                    return objE;
                }
            } else {
                jA = Velocity.Companion.a();
            }
            return Velocity.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        j10 = scrollableKt$scrollableNestedScrollConnection$1$onPostFling$1.J$0;
        w.b(objB);
        jA = Velocity.k(j10, ((Velocity) objB).n());
        return Velocity.b(jA);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long b(long j6, long j10, int i10) {
        return this.$enabled ? this.$scrollLogic.getValue().f(j10) : Offset.Companion.c();
    }
}
