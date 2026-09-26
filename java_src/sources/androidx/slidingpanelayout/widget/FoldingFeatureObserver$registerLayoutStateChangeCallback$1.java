package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", f = "FoldingFeatureObserver.kt", l = {97}, m = "invokeSuspend")
final class FoldingFeatureObserver$registerLayoutStateChangeCallback$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Activity $activity;
    int label;
    final /* synthetic */ FoldingFeatureObserver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FoldingFeatureObserver$registerLayoutStateChangeCallback$1(FoldingFeatureObserver foldingFeatureObserver, Activity activity, d<? super FoldingFeatureObserver$registerLayoutStateChangeCallback$1> dVar) {
        super(2, dVar);
        this.this$0 = foldingFeatureObserver;
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this.this$0, this.$activity, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((FoldingFeatureObserver$registerLayoutStateChangeCallback$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            final g<WindowLayoutInfo> gVarA = this.this$0.windowInfoTracker.a(this.$activity);
            final FoldingFeatureObserver foldingFeatureObserver = this.this$0;
            g gVarO = i.o(new g<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1

                /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements h<WindowLayoutInfo> {
                    final /* synthetic */ h $this_unsafeFlow$inlined;
                    final /* synthetic */ FoldingFeatureObserver this$0;

                    /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                    @f(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "FoldingFeatureObserver.kt", l = {138}, m = "emit")
                    public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(d dVar) {
                            super(dVar);
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(h hVar, FoldingFeatureObserver foldingFeatureObserver) {
                        this.$this_unsafeFlow$inlined = hVar;
                        this.this$0 = foldingFeatureObserver;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public Object emit(WindowLayoutInfo windowLayoutInfo, @NotNull d dVar) {
                        AnonymousClass1 anonymousClass1;
                        if (dVar instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) dVar;
                            int i10 = anonymousClass1.label;
                            if ((i10 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i10 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(dVar);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(dVar);
                        }
                        Object obj = anonymousClass1.result;
                        Object objE = kotlin.coroutines.intrinsics.d.e();
                        int i11 = anonymousClass1.label;
                        if (i11 == 0) {
                            w.b(obj);
                            h hVar = this.$this_unsafeFlow$inlined;
                            FoldingFeature foldingFeatureD = this.this$0.d(windowLayoutInfo);
                            if (foldingFeatureD != null) {
                                anonymousClass1.label = 1;
                                if (hVar.emit(foldingFeatureD, anonymousClass1) == objE) {
                                    return objE;
                                }
                            }
                        } else {
                            if (i11 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            w.b(obj);
                        }
                        return l0.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.g
                @Nullable
                public Object collect(@NotNull h<? super FoldingFeature> hVar, @NotNull d dVar) {
                    Object objCollect = gVarA.collect(new AnonymousClass2(hVar, foldingFeatureObserver), dVar);
                    return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
                }
            });
            final FoldingFeatureObserver foldingFeatureObserver2 = this.this$0;
            h<FoldingFeature> hVar = new h<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public Object emit(FoldingFeature foldingFeature, @NotNull d<? super l0> dVar) {
                    l0 l0Var;
                    FoldingFeature foldingFeature2 = foldingFeature;
                    FoldingFeatureObserver.OnFoldingFeatureChangeListener onFoldingFeatureChangeListener = foldingFeatureObserver2.onFoldingFeatureChangeListener;
                    if (onFoldingFeatureChangeListener == null) {
                        l0Var = null;
                    } else {
                        onFoldingFeatureChangeListener.a(foldingFeature2);
                        l0Var = l0.INSTANCE;
                    }
                    return l0Var == kotlin.coroutines.intrinsics.d.e() ? l0Var : l0.INSTANCE;
                }
            };
            this.label = 1;
            if (gVarO.collect(hVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
