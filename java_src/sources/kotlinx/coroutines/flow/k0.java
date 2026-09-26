package kotlinx.coroutines.flow;

import java.util.List;
import kotlinx.coroutines.y0;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class k0 implements h0 {
    private final long replayExpiration;
    private final long stopTimeout;

    @NotNull
    public String toString() {
        List listD = kotlin.collections.u.d(2);
        if (this.stopTimeout > 0) {
            listD.add("stopTimeout=" + this.stopTimeout + "ms");
        }
        if (this.replayExpiration < Long.MAX_VALUE) {
            listD.add("replayExpiration=" + this.replayExpiration + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + kotlin.collections.d0.t0(kotlin.collections.u.a(listD), null, null, null, 0, null, null, 63, null) + ')';
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {178, 180, 182, 183, 185}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<h<? super f0>, Integer, kotlin.coroutines.d<? super w7.l0>, Object> {
        /* synthetic */ int I$0;
        private /* synthetic */ Object L$0;
        int label;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(3, dVar);
        }

        @Nullable
        public final Object f(@NotNull h<? super f0> hVar, int i10, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            a aVar = k0.this.new a(dVar);
            aVar.L$0 = hVar;
            aVar.I$0 = i10;
            return aVar.invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ Object invoke(h<? super f0> hVar, Integer num, kotlin.coroutines.d<? super w7.l0> dVar) {
            return f(hVar, num.intValue(), dVar);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0070  */
        /* JADX WARN: Code duplicated, block: B:28:0x007c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:31:0x008d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:34:0x009b A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            h hVar;
            f0 f0Var;
            long j6;
            f0 f0Var2;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                hVar = (h) this.L$0;
                                w7.w.b(obj);
                            }
                        } else {
                            hVar = (h) this.L$0;
                            w7.w.b(obj);
                            j6 = k0.this.replayExpiration;
                            this.L$0 = hVar;
                            this.label = 4;
                            if (y0.a(j6, this) == objE) {
                                return objE;
                            }
                        }
                    } else {
                        hVar = (h) this.L$0;
                        w7.w.b(obj);
                        if (k0.this.replayExpiration > 0) {
                            f0Var = f0.STOP;
                            this.L$0 = hVar;
                            this.label = 3;
                            if (hVar.emit(f0Var, this) == objE) {
                                return objE;
                            }
                            j6 = k0.this.replayExpiration;
                            this.L$0 = hVar;
                            this.label = 4;
                            if (y0.a(j6, this) == objE) {
                                return objE;
                            }
                        }
                    }
                    f0Var2 = f0.STOP_AND_RESET_REPLAY_CACHE;
                    this.L$0 = null;
                    this.label = 5;
                    if (hVar.emit(f0Var2, this) == objE) {
                        return objE;
                    }
                }
                w7.w.b(obj);
            } else {
                w7.w.b(obj);
                hVar = (h) this.L$0;
                if (this.I$0 <= 0) {
                    long j10 = k0.this.stopTimeout;
                    this.L$0 = hVar;
                    this.label = 2;
                    if (y0.a(j10, this) == objE) {
                        return objE;
                    }
                    if (k0.this.replayExpiration > 0) {
                        f0Var = f0.STOP;
                        this.L$0 = hVar;
                        this.label = 3;
                        if (hVar.emit(f0Var, this) == objE) {
                            return objE;
                        }
                        j6 = k0.this.replayExpiration;
                        this.L$0 = hVar;
                        this.label = 4;
                        if (y0.a(j6, this) == objE) {
                            return objE;
                        }
                    }
                    f0Var2 = f0.STOP_AND_RESET_REPLAY_CACHE;
                    this.L$0 = null;
                    this.label = 5;
                    if (hVar.emit(f0Var2, this) == objE) {
                        return objE;
                    }
                } else {
                    f0 f0Var3 = f0.START;
                    this.label = 1;
                    if (hVar.emit(f0Var3, this) == objE) {
                        return objE;
                    }
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", l = {}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.p<f0, kotlin.coroutines.d<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            b bVar = new b(dVar);
            bVar.L$0 = obj;
            return bVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull f0 f0Var, @Nullable kotlin.coroutines.d<? super Boolean> dVar) {
            return ((b) create(f0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean z6;
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w7.w.b(obj);
                if (((f0) this.L$0) != f0.START) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                return kotlin.coroutines.jvm.internal.b.a(z6);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // kotlinx.coroutines.flow.h0
    @NotNull
    public g<f0> a(@NotNull l0<Integer> l0Var) {
        return i.o(i.p(i.M(l0Var, new a(null)), new b(null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof k0) {
            k0 k0Var = (k0) obj;
            if (this.stopTimeout == k0Var.stopTimeout && this.replayExpiration == k0Var.replayExpiration) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return (i.a.a(this.stopTimeout) * 31) + i.a.a(this.replayExpiration);
    }

    public k0(long j6, long j10) {
        this.stopTimeout = j6;
        this.replayExpiration = j10;
        if (j6 >= 0) {
            if (j10 >= 0) {
                return;
            }
            throw new IllegalArgumentException(("replayExpiration(" + j10 + " ms) cannot be negative").toString());
        }
        throw new IllegalArgumentException(("stopTimeout(" + j6 + " ms) cannot be negative").toString());
    }
}
