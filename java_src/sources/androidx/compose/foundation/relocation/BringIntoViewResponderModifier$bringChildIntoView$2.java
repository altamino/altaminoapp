package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.narvii.util.http.ApiService;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2", f = "BringIntoViewResponder.kt", l = {214, 223, ApiService.API_ERR_USER_NOT_IN_COMMUNITY}, m = "invokeSuspend")
final class BringIntoViewResponderModifier$bringChildIntoView$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ LayoutCoordinates $childCoordinates;
    final /* synthetic */ Rect $rect;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ BringIntoViewResponderModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewResponderModifier$bringChildIntoView$2(BringIntoViewResponderModifier bringIntoViewResponderModifier, LayoutCoordinates layoutCoordinates, Rect rect, d<? super BringIntoViewResponderModifier$bringChildIntoView$2> dVar) {
        super(2, dVar);
        this.this$0 = bringIntoViewResponderModifier;
        this.$childCoordinates = layoutCoordinates;
        this.$rect = rect;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        BringIntoViewResponderModifier$bringChildIntoView$2 bringIntoViewResponderModifier$bringChildIntoView$2 = new BringIntoViewResponderModifier$bringChildIntoView$2(this.this$0, this.$childCoordinates, this.$rect, dVar);
        bringIntoViewResponderModifier$bringChildIntoView$2.L$0 = obj;
        return bringIntoViewResponderModifier$bringChildIntoView$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((BringIntoViewResponderModifier$bringChildIntoView$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b0 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:15:0x0032, B:39:0x00a8, B:41:0x00b0), top: B:76:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:63:0x0107  */
    /* JADX WARN: Code duplicated, block: B:66:0x0114  */
    /* JADX WARN: Code duplicated, block: B:70:0x0128  */
    /* JADX WARN: Code duplicated, block: B:73:0x0135  */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        LayoutCoordinates layoutCoordinates;
        u uVar;
        u uVar2;
        u uVar3;
        BringIntoViewResponderModifier bringIntoViewResponderModifier;
        u uVar4;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            uVar4 = (u) this.L$0;
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        uVar2 = (u) this.L$2;
                        uVar = (u) this.L$1;
                        layoutCoordinates = (LayoutCoordinates) this.L$0;
                        try {
                            w.b(obj);
                            if (this.this$0.newestDispatchedRequest == uVar2) {
                                bringIntoViewResponderModifier = this.this$0;
                                this.L$0 = uVar;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.label = 3;
                                if (bringIntoViewResponderModifier.j(uVar, layoutCoordinates, this) == objE) {
                                    return objE;
                                }
                                uVar4 = uVar;
                            }
                        } catch (Throwable th) {
                            th = th;
                            objE = uVar;
                            if (this.this$0.newestDispatchedRequest == this.this$0.newestReceivedRequest) {
                                this.this$0.newestDispatchedRequest = null;
                            }
                            if (this.this$0.newestReceivedRequest == objE) {
                                this.this$0.newestReceivedRequest = null;
                            }
                            throw th;
                        }
                    }
                    uVar = uVar4;
                } else {
                    uVar3 = (u) this.L$0;
                    w.b(obj);
                    l0 l0Var = l0.INSTANCE;
                    if (this.this$0.newestDispatchedRequest == this.this$0.newestReceivedRequest) {
                        this.this$0.newestDispatchedRequest = null;
                    }
                    if (this.this$0.newestReceivedRequest == uVar3) {
                        this.this$0.newestReceivedRequest = null;
                    }
                    return l0Var;
                }
            } else {
                w.b(obj);
                o0 o0Var = (o0) this.L$0;
                LayoutCoordinates layoutCoordinatesB = this.this$0.b();
                if (layoutCoordinatesB == null) {
                    return l0.INSTANCE;
                }
                if (this.$childCoordinates.Q()) {
                    Rect rectE = BringIntoViewResponderKt.e(layoutCoordinatesB, this.$childCoordinates, this.$rect);
                    u uVar5 = new u(rectE, f2.l(o0Var.getCoroutineContext()));
                    u uVar6 = this.this$0.newestReceivedRequest;
                    this.this$0.newestReceivedRequest = uVar5;
                    if (uVar6 != null) {
                        try {
                            if (BringIntoViewResponderKt.d((Rect) uVar6.c(), rectE)) {
                                b2 b2Var = (b2) uVar6.d();
                                this.L$0 = layoutCoordinatesB;
                                this.L$1 = uVar5;
                                this.L$2 = uVar6;
                                this.label = 2;
                                if (b2Var.t0(this) == objE) {
                                    return objE;
                                }
                                layoutCoordinates = layoutCoordinatesB;
                                uVar = uVar5;
                                uVar2 = uVar6;
                                if (this.this$0.newestDispatchedRequest == uVar2) {
                                    bringIntoViewResponderModifier = this.this$0;
                                    this.L$0 = uVar;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.label = 3;
                                    if (bringIntoViewResponderModifier.j(uVar, layoutCoordinates, this) == objE) {
                                        return objE;
                                    }
                                    uVar4 = uVar;
                                    uVar = uVar4;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            objE = uVar5;
                            if (this.this$0.newestDispatchedRequest == this.this$0.newestReceivedRequest) {
                                this.this$0.newestDispatchedRequest = null;
                            }
                            if (this.this$0.newestReceivedRequest == objE) {
                                this.this$0.newestReceivedRequest = null;
                            }
                            throw th;
                        }
                    }
                    BringIntoViewResponderModifier bringIntoViewResponderModifier2 = this.this$0;
                    this.L$0 = uVar5;
                    this.label = 1;
                    if (bringIntoViewResponderModifier2.j(uVar5, layoutCoordinatesB, this) == objE) {
                        return objE;
                    }
                    uVar3 = uVar5;
                    l0 l0Var2 = l0.INSTANCE;
                    if (this.this$0.newestDispatchedRequest == this.this$0.newestReceivedRequest) {
                        this.this$0.newestDispatchedRequest = null;
                    }
                    if (this.this$0.newestReceivedRequest == uVar3) {
                        this.this$0.newestReceivedRequest = null;
                    }
                    return l0Var2;
                }
                return l0.INSTANCE;
            }
            if (this.this$0.newestDispatchedRequest == this.this$0.newestReceivedRequest) {
                this.this$0.newestDispatchedRequest = null;
            }
            if (this.this$0.newestReceivedRequest == uVar) {
                this.this$0.newestReceivedRequest = null;
            }
            return l0.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
