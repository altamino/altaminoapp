package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import e8.b;
import e8.c;
import e8.e;
import e8.f;
import e8.g;
import e8.h;
import e8.i;
import e8.j;
import e8.k;
import e8.m;
import e8.n;
import e8.p;
import e8.q;
import e8.r;
import e8.s;
import e8.u;
import e8.w;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@Stable
public final class ComposableLambdaImpl implements ComposableLambda {

    @Nullable
    private Object _block;
    private final int key;

    @Nullable
    private RecomposeScope scope;

    @Nullable
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Object obj, int i10) {
            super(2);
            this.$p1 = obj;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.b(this.$p1, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$10, reason: invalid class name */
    static final class AnonymousClass10 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass10(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl composableLambdaImpl = ComposableLambdaImpl.this;
            Object obj = this.$p1;
            Object obj2 = this.$p2;
            Object obj3 = this.$p3;
            Object obj4 = this.$p4;
            Object obj5 = this.$p5;
            Object obj6 = this.$p6;
            Object obj7 = this.$p7;
            Object obj8 = this.$p8;
            Object obj9 = this.$p9;
            Object obj10 = this.$p10;
            int i11 = this.$changed;
            composableLambdaImpl.k(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, nc, i11 | 1, i11);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$11, reason: invalid class name */
    static final class AnonymousClass11 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass11(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.l(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$12, reason: invalid class name */
    static final class AnonymousClass12 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass12(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.m(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$13, reason: invalid class name */
    static final class AnonymousClass13 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass13(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.n(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$14, reason: invalid class name */
    static final class AnonymousClass14 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p14;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass14(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$p14 = obj14;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.o(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, this.$p14, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$15, reason: invalid class name */
    static final class AnonymousClass15 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p14;
        final /* synthetic */ Object $p15;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass15(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$p14 = obj14;
            this.$p15 = obj15;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.q(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, this.$p14, this.$p15, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$16, reason: invalid class name */
    static final class AnonymousClass16 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p14;
        final /* synthetic */ Object $p15;
        final /* synthetic */ Object $p16;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass16(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$p14 = obj14;
            this.$p15 = obj15;
            this.$p16 = obj16;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.r(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, this.$p14, this.$p15, this.$p16, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$17, reason: invalid class name */
    static final class AnonymousClass17 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p14;
        final /* synthetic */ Object $p15;
        final /* synthetic */ Object $p16;
        final /* synthetic */ Object $p17;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass17(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$p14 = obj14;
            this.$p15 = obj15;
            this.$p16 = obj16;
            this.$p17 = obj17;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.s(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, this.$p14, this.$p15, this.$p16, this.$p17, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$18, reason: invalid class name */
    static final class AnonymousClass18 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ int $changed1;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p10;
        final /* synthetic */ Object $p11;
        final /* synthetic */ Object $p12;
        final /* synthetic */ Object $p13;
        final /* synthetic */ Object $p14;
        final /* synthetic */ Object $p15;
        final /* synthetic */ Object $p16;
        final /* synthetic */ Object $p17;
        final /* synthetic */ Object $p18;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass18(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, int i10, int i11) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$p10 = obj10;
            this.$p11 = obj11;
            this.$p12 = obj12;
            this.$p13 = obj13;
            this.$p14 = obj14;
            this.$p15 = obj15;
            this.$p16 = obj16;
            this.$p17 = obj17;
            this.$p18 = obj18;
            this.$changed = i10;
            this.$changed1 = i11;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.t(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, this.$p10, this.$p11, this.$p12, this.$p13, this.$p14, this.$p15, this.$p16, this.$p17, this.$p18, nc, this.$changed | 1, this.$changed1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Object obj, Object obj2, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.c(this.$p1, this.$p2, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Object obj, Object obj2, Object obj3, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.d(this.$p1, this.$p2, this.$p3, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.e(this.$p1, this.$p2, this.$p3, this.$p4, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.f(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$6, reason: invalid class name */
    static final class AnonymousClass6 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.g(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$7, reason: invalid class name */
    static final class AnonymousClass7 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.h(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$8, reason: invalid class name */
    static final class AnonymousClass8 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.i(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$9, reason: invalid class name */
    static final class AnonymousClass9 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $changed;
        final /* synthetic */ Object $p1;
        final /* synthetic */ Object $p2;
        final /* synthetic */ Object $p3;
        final /* synthetic */ Object $p4;
        final /* synthetic */ Object $p5;
        final /* synthetic */ Object $p6;
        final /* synthetic */ Object $p7;
        final /* synthetic */ Object $p8;
        final /* synthetic */ Object $p9;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass9(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i10) {
            super(2);
            this.$p1 = obj;
            this.$p2 = obj2;
            this.$p3 = obj3;
            this.$p4 = obj4;
            this.$p5 = obj5;
            this.$p6 = obj6;
            this.$p7 = obj7;
            this.$p8 = obj8;
            this.$p9 = obj9;
            this.$changed = i10;
        }

        public final void a(@NotNull Composer nc, int i10) {
            t.j(nc, "nc");
            ComposableLambdaImpl.this.j(this.$p1, this.$p2, this.$p3, this.$p4, this.$p5, this.$p6, this.$p7, this.$p8, this.$p9, nc, this.$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    @Override // e8.k
    public /* bridge */ /* synthetic */ Object H(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Composer composer, Integer num, Integer num2) {
        return r(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composer, num.intValue(), num2.intValue());
    }

    @Override // e8.n
    public /* bridge */ /* synthetic */ Object U(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, Composer composer, Integer num, Integer num2) {
        return t(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composer, num.intValue(), num2.intValue());
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(Composer composer, Integer num) {
        return a(composer, num.intValue());
    }

    @Override // e8.u
    public /* bridge */ /* synthetic */ Object l0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        return f(obj, obj2, obj3, obj4, obj5, composer, num.intValue());
    }

    @Nullable
    public Object m(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(12) : ComposableLambdaKt.f(12));
        Object obj13 = this._block;
        if (obj13 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function15<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objR0 = ((g) v0.e(obj13, 15)).r0(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass12(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, i10, i11));
        }
        return objR0;
    }

    @Nullable
    public Object r(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @Nullable Object obj14, @Nullable Object obj15, @Nullable Object obj16, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(16) : ComposableLambdaKt.f(16));
        Object obj17 = this._block;
        if (obj17 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function19<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'p14')] kotlin.Any?, @[ParameterName(name = 'p15')] kotlin.Any?, @[ParameterName(name = 'p16')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objH = ((k) v0.e(obj17, 19)).H(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass16(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, i10, i11));
        }
        return objH;
    }

    @Override // e8.g
    public /* bridge */ /* synthetic */ Object r0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Composer composer, Integer num, Integer num2) {
        return m(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composer, num.intValue(), num2.intValue());
    }

    @Nullable
    public Object s(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @Nullable Object obj14, @Nullable Object obj15, @Nullable Object obj16, @Nullable Object obj17, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(17) : ComposableLambdaKt.f(17));
        Object obj18 = this._block;
        if (obj18 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function20<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'p14')] kotlin.Any?, @[ParameterName(name = 'p15')] kotlin.Any?, @[ParameterName(name = 'p16')] kotlin.Any?, @[ParameterName(name = 'p17')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objU = ((m) v0.e(obj18, 20)).u(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass17(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, i10, i11));
        }
        return objU;
    }

    @Nullable
    public Object t(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @Nullable Object obj14, @Nullable Object obj15, @Nullable Object obj16, @Nullable Object obj17, @Nullable Object obj18, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(18) : ComposableLambdaKt.f(18));
        Object obj19 = this._block;
        if (obj19 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function21<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'p14')] kotlin.Any?, @[ParameterName(name = 'p15')] kotlin.Any?, @[ParameterName(name = 'p16')] kotlin.Any?, @[ParameterName(name = 'p17')] kotlin.Any?, @[ParameterName(name = 'p18')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objU = ((n) v0.e(obj19, 21)).U(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass18(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, i10, i11));
        }
        return objU;
    }

    @Override // e8.m
    public /* bridge */ /* synthetic */ Object u(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Composer composer, Integer num, Integer num2) {
        return s(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composer, num.intValue(), num2.intValue());
    }

    private final void v(Composer composer) {
        RecomposeScope recomposeScopeE;
        if (!this.tracked || (recomposeScopeE = composer.E()) == null) {
            return;
        }
        composer.i(recomposeScopeE);
        if (ComposableLambdaKt.e(this.scope, recomposeScopeE)) {
            this.scope = recomposeScopeE;
            return;
        }
        List<RecomposeScope> list = this.scopes;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.scopes = arrayList;
            arrayList.add(recomposeScopeE);
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (ComposableLambdaKt.e(list.get(i10), recomposeScopeE)) {
                list.set(i10, recomposeScopeE);
                return;
            }
        }
        list.add(recomposeScopeE);
    }

    private final void w() {
        if (this.tracked) {
            RecomposeScope recomposeScope = this.scope;
            if (recomposeScope != null) {
                recomposeScope.invalidate();
                this.scope = null;
            }
            List<RecomposeScope> list = this.scopes;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.get(i10).invalidate();
                }
                list.clear();
            }
        }
    }

    @Override // e8.h
    public /* bridge */ /* synthetic */ Object I(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Composer composer, Integer num, Integer num2) {
        return n(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composer, num.intValue(), num2.intValue());
    }

    @Override // e8.w
    public /* bridge */ /* synthetic */ Object J0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Composer composer, Integer num) {
        return h(obj, obj2, obj3, obj4, obj5, obj6, obj7, composer, num.intValue());
    }

    @Override // e8.b
    public /* bridge */ /* synthetic */ Object O0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Composer composer, Integer num) {
        return i(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composer, num.intValue());
    }

    @Nullable
    public Object a(@NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(0) : ComposableLambdaKt.f(0));
        Object obj = this._block;
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function2<@[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objInvoke = ((p) v0.e(obj, 2)).invoke(composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a((p) v0.e(this, 2));
        }
        return objInvoke;
    }

    @Nullable
    public Object b(@Nullable Object obj, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = (composerS.k(this) ? ComposableLambdaKt.d(1) : ComposableLambdaKt.f(1)) | i10;
        Object obj2 = this._block;
        if (obj2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objInvoke = ((q) v0.e(obj2, 3)).invoke(obj, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass1(obj, i10));
        }
        return objInvoke;
    }

    @Nullable
    public Object c(@Nullable Object obj, @Nullable Object obj2, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = (composerS.k(this) ? ComposableLambdaKt.d(2) : ComposableLambdaKt.f(2)) | i10;
        Object obj3 = this._block;
        if (obj3 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function4<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objInvoke = ((r) v0.e(obj3, 4)).invoke(obj, obj2, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass2(obj, obj2, i10));
        }
        return objInvoke;
    }

    @Nullable
    public Object d(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = (composerS.k(this) ? ComposableLambdaKt.d(3) : ComposableLambdaKt.f(3)) | i10;
        Object obj4 = this._block;
        if (obj4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function5<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objInvoke = ((s) v0.e(obj4, 5)).invoke(obj, obj2, obj3, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass3(obj, obj2, obj3, i10));
        }
        return objInvoke;
    }

    @Nullable
    public Object e(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = (composerS.k(this) ? ComposableLambdaKt.d(4) : ComposableLambdaKt.f(4)) | i10;
        Object obj5 = this._block;
        if (obj5 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function6<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objInvoke = ((e8.t) v0.e(obj5, 6)).invoke(obj, obj2, obj3, obj4, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass4(obj, obj2, obj3, obj4, i10));
        }
        return objInvoke;
    }

    @Override // e8.v
    public /* bridge */ /* synthetic */ Object e0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Composer composer, Integer num) {
        return g(obj, obj2, obj3, obj4, obj5, obj6, composer, num.intValue());
    }

    @Nullable
    public Object f(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(5) : ComposableLambdaKt.f(5));
        Object obj6 = this._block;
        if (obj6 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function7<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objL0 = ((u) v0.e(obj6, 7)).l0(obj, obj2, obj3, obj4, obj5, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass5(obj, obj2, obj3, obj4, obj5, i10));
        }
        return objL0;
    }

    @Override // e8.f
    public /* bridge */ /* synthetic */ Object f0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Composer composer, Integer num, Integer num2) {
        return l(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composer, num.intValue(), num2.intValue());
    }

    @Nullable
    public Object g(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(6) : ComposableLambdaKt.f(6));
        Object obj7 = this._block;
        if (obj7 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function8<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objE0 = ((e8.v) v0.e(obj7, 8)).e0(obj, obj2, obj3, obj4, obj5, obj6, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass6(obj, obj2, obj3, obj4, obj5, obj6, i10));
        }
        return objE0;
    }

    @Override // e8.i
    public /* bridge */ /* synthetic */ Object g0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Composer composer, Integer num, Integer num2) {
        return o(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composer, num.intValue(), num2.intValue());
    }

    @Nullable
    public Object h(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(7) : ComposableLambdaKt.f(7));
        Object obj8 = this._block;
        if (obj8 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function9<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objJ0 = ((w) v0.e(obj8, 9)).J0(obj, obj2, obj3, obj4, obj5, obj6, obj7, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass7(obj, obj2, obj3, obj4, obj5, obj6, obj7, i10));
        }
        return objJ0;
    }

    @Nullable
    public Object i(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(8) : ComposableLambdaKt.f(8));
        Object obj9 = this._block;
        if (obj9 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function10<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objO0 = ((b) v0.e(obj9, 10)).O0(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass8(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, i10));
        }
        return objO0;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Composer composer, Integer num) {
        return b(obj, composer, num.intValue());
    }

    @Nullable
    public Object j(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @NotNull Composer c7, int i10) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i10 | (composerS.k(this) ? ComposableLambdaKt.d(9) : ComposableLambdaKt.f(9));
        Object obj10 = this._block;
        if (obj10 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function11<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, kotlin.Any?>");
        }
        Object objP = ((c) v0.e(obj10, 11)).p(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composerS, Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass9(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, i10));
        }
        return objP;
    }

    @Nullable
    public Object k(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(10) : ComposableLambdaKt.f(10));
        Object obj11 = this._block;
        if (obj11 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function13<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objX = ((e) v0.e(obj11, 13)).x(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass10(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, i10));
        }
        return objX;
    }

    @Nullable
    public Object l(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(11) : ComposableLambdaKt.f(11));
        Object obj12 = this._block;
        if (obj12 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function14<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objF0 = ((f) v0.e(obj12, 14)).f0(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass11(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, i10, i11));
        }
        return objF0;
    }

    @Nullable
    public Object n(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(13) : ComposableLambdaKt.f(13));
        Object obj14 = this._block;
        if (obj14 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function16<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objI = ((h) v0.e(obj14, 16)).I(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass13(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, i10, i11));
        }
        return objI;
    }

    @Nullable
    public Object o(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @Nullable Object obj14, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(14) : ComposableLambdaKt.f(14));
        Object obj15 = this._block;
        if (obj15 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function17<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'p14')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objG0 = ((i) v0.e(obj15, 17)).g0(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass14(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, i10, i11));
        }
        return objG0;
    }

    @Override // e8.c
    public /* bridge */ /* synthetic */ Object p(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Composer composer, Integer num) {
        return j(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composer, num.intValue());
    }

    @Nullable
    public Object q(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8, @Nullable Object obj9, @Nullable Object obj10, @Nullable Object obj11, @Nullable Object obj12, @Nullable Object obj13, @Nullable Object obj14, @Nullable Object obj15, @NotNull Composer c7, int i10, int i11) {
        t.j(c7, "c");
        Composer composerS = c7.s(this.key);
        v(composerS);
        int iD = i11 | (composerS.k(this) ? ComposableLambdaKt.d(15) : ComposableLambdaKt.f(15));
        Object obj16 = this._block;
        if (obj16 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Function18<@[ParameterName(name = 'p1')] kotlin.Any?, @[ParameterName(name = 'p2')] kotlin.Any?, @[ParameterName(name = 'p3')] kotlin.Any?, @[ParameterName(name = 'p4')] kotlin.Any?, @[ParameterName(name = 'p5')] kotlin.Any?, @[ParameterName(name = 'p6')] kotlin.Any?, @[ParameterName(name = 'p7')] kotlin.Any?, @[ParameterName(name = 'p8')] kotlin.Any?, @[ParameterName(name = 'p9')] kotlin.Any?, @[ParameterName(name = 'p10')] kotlin.Any?, @[ParameterName(name = 'p11')] kotlin.Any?, @[ParameterName(name = 'p12')] kotlin.Any?, @[ParameterName(name = 'p13')] kotlin.Any?, @[ParameterName(name = 'p14')] kotlin.Any?, @[ParameterName(name = 'p15')] kotlin.Any?, @[ParameterName(name = 'c')] androidx.compose.runtime.Composer, @[ParameterName(name = 'changed')] kotlin.Int, @[ParameterName(name = 'changed1')] kotlin.Int, kotlin.Any?>");
        }
        Object objW0 = ((j) v0.e(obj16, 18)).w0(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composerS, Integer.valueOf(i10), Integer.valueOf(iD));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AnonymousClass15(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, i10, i11));
        }
        return objW0;
    }

    @Override // e8.j
    public /* bridge */ /* synthetic */ Object w0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Composer composer, Integer num, Integer num2) {
        return q(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composer, num.intValue(), num2.intValue());
    }

    @Override // e8.e
    public /* bridge */ /* synthetic */ Object x(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Composer composer, Integer num, Integer num2) {
        return k(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composer, num.intValue(), num2.intValue());
    }

    public final void y(@NotNull Object block) {
        t.j(block, "block");
        if (t.e(this._block, block)) {
            return;
        }
        boolean z6 = this._block == null;
        this._block = block;
        if (z6) {
            return;
        }
        w();
    }

    public ComposableLambdaImpl(int i10, boolean z6) {
        this.key = i10;
        this.tracked = z6;
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Composer composer, Integer num) {
        return c(obj, obj2, composer, num.intValue());
    }

    @Override // e8.s
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
        return d(obj, obj2, obj3, composer, num.intValue());
    }

    @Override // e8.t
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
        return e(obj, obj2, obj3, obj4, composer, num.intValue());
    }
}
