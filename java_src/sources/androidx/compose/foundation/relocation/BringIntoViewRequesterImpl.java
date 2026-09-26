package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalFoundationApi
final class BringIntoViewRequesterImpl implements BringIntoViewRequester {

    @NotNull
    private final MutableVector<BringIntoViewRequesterModifier> modifiers = new MutableVector<>(new BringIntoViewRequesterModifier[16], 0);

    @NotNull
    public final MutableVector<BringIntoViewRequesterModifier> b() {
        return this.modifiers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
    
        if (r8 >= r2) goto L22;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0064 -> B:20:0x0067). Please report as a decompilation issue!!! */
    @Override // androidx.compose.foundation.relocation.BringIntoViewRequester
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object a(@Nullable Rect rect, @NotNull d<? super l0> dVar) {
        BringIntoViewRequesterImpl$bringIntoView$1 bringIntoViewRequesterImpl$bringIntoView$1;
        int iN;
        Rect rect2;
        int i10;
        Object[] objArr;
        if (dVar instanceof BringIntoViewRequesterImpl$bringIntoView$1) {
            bringIntoViewRequesterImpl$bringIntoView$1 = (BringIntoViewRequesterImpl$bringIntoView$1) dVar;
            int i11 = bringIntoViewRequesterImpl$bringIntoView$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bringIntoViewRequesterImpl$bringIntoView$1.label = i11 - Integer.MIN_VALUE;
            } else {
                bringIntoViewRequesterImpl$bringIntoView$1 = new BringIntoViewRequesterImpl$bringIntoView$1(this, dVar);
            }
        } else {
            bringIntoViewRequesterImpl$bringIntoView$1 = new BringIntoViewRequesterImpl$bringIntoView$1(this, dVar);
        }
        Object obj = bringIntoViewRequesterImpl$bringIntoView$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = bringIntoViewRequesterImpl$bringIntoView$1.label;
        if (i12 == 0) {
            w.b(obj);
            MutableVector<BringIntoViewRequesterModifier> mutableVector = this.modifiers;
            iN = mutableVector.n();
            if (iN > 0) {
                BringIntoViewRequesterModifier[] bringIntoViewRequesterModifierArrM = mutableVector.m();
                rect2 = rect;
                i10 = 0;
                objArr = bringIntoViewRequesterModifierArrM;
                BringIntoViewRequesterModifier bringIntoViewRequesterModifier = (BringIntoViewRequesterModifier) objArr[i10];
                bringIntoViewRequesterImpl$bringIntoView$1.L$0 = rect2;
                bringIntoViewRequesterImpl$bringIntoView$1.L$1 = objArr;
                bringIntoViewRequesterImpl$bringIntoView$1.I$0 = iN;
                bringIntoViewRequesterImpl$bringIntoView$1.I$1 = i10;
                bringIntoViewRequesterImpl$bringIntoView$1.label = 1;
                if (bringIntoViewRequesterModifier.d(rect2, bringIntoViewRequesterImpl$bringIntoView$1) == objE) {
                    return objE;
                }
                i10++;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = bringIntoViewRequesterImpl$bringIntoView$1.I$1;
            iN = bringIntoViewRequesterImpl$bringIntoView$1.I$0;
            objArr = (Object[]) bringIntoViewRequesterImpl$bringIntoView$1.L$1;
            Rect rect3 = (Rect) bringIntoViewRequesterImpl$bringIntoView$1.L$0;
            w.b(obj);
            rect2 = rect3;
            i10++;
        }
        return l0.INSTANCE;
    }
}
