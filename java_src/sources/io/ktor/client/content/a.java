package io.ktor.client.content;

import e8.p;
import e8.q;
import io.ktor.client.call.h;
import io.ktor.http.c;
import io.ktor.http.k;
import io.ktor.utils.io.j;
import io.ktor.utils.io.w;
import k7.b;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends b.d {

    @NotNull
    private final g callContext;

    @NotNull
    private final io.ktor.utils.io.g content;

    @NotNull
    private final b delegate;

    @NotNull
    private final q<Long, Long, d<? super l0>, Object> listener;

    /* JADX INFO: renamed from: io.ktor.client.content.a$a, reason: collision with other inner class name */
    @f(c = "io.ktor.client.content.ObservableContent$content$1", f = "ObservableContent.kt", l = {36}, m = "invokeSuspend")
    static final class C0390a extends l implements p<w, d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C0390a(d<? super C0390a> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            C0390a c0390a = a.this.new C0390a(dVar);
            c0390a.L$0 = obj;
            return c0390a;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable d<? super l0> dVar) {
            return ((C0390a) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                w wVar = (w) this.L$0;
                b.e eVar = (b.e) a.this.delegate;
                j jVarMo1642d = wVar.mo1642d();
                this.label = 1;
                if (eVar.d(jVarMo1642d, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull b delegate, @NotNull g callContext, @NotNull q<? super Long, ? super Long, ? super d<? super l0>, ? extends Object> listener) {
        io.ktor.utils.io.g gVarMo1641d;
        t.j(delegate, "delegate");
        t.j(callContext, "callContext");
        t.j(listener, "listener");
        this.delegate = delegate;
        this.callContext = callContext;
        this.listener = listener;
        if (delegate instanceof b.a) {
            gVarMo1641d = io.ktor.utils.io.d.a(((b.a) delegate).d());
        } else {
            if (delegate instanceof b.c) {
                throw new h(delegate);
            }
            if (delegate instanceof b.AbstractC0421b) {
                gVarMo1641d = io.ktor.utils.io.g.Companion.a();
            } else if (delegate instanceof b.d) {
                gVarMo1641d = ((b.d) delegate).d();
            } else {
                if (!(delegate instanceof b.e)) {
                    throw new s();
                }
                gVarMo1641d = io.ktor.utils.io.q.d(t1.INSTANCE, callContext, true, new C0390a(null)).mo1641d();
            }
        }
        this.content = gVarMo1641d;
    }

    @Override // k7.b
    @Nullable
    public Long a() {
        return this.delegate.a();
    }

    @Override // k7.b
    @Nullable
    public c b() {
        return this.delegate.b();
    }

    @Override // k7.b
    @NotNull
    public k c() {
        return this.delegate.c();
    }

    @Override // k7.b.d
    @NotNull
    public io.ktor.utils.io.g d() {
        return io.ktor.client.utils.a.a(this.content, this.callContext, a(), this.listener);
    }
}
