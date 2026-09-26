package androidx.compose.runtime;

import e8.l;
import e8.p;
import java.util.Arrays;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class EffectsKt {

    @NotNull
    private static final String DisposableEffectNoParamError = "DisposableEffect must provide one or more 'key' parameters that define the identity of the DisposableEffect and determine when its previous effect should be disposed and a new effect started for the new key.";

    @NotNull
    private static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();

    @NotNull
    private static final String LaunchedEffectNoParamError = "LaunchedEffect must provide one or more 'key' parameters that define the identity of the LaunchedEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key.";

    @Composable
    public static final void a(@Nullable Object obj, @NotNull l<? super DisposableEffectScope, ? extends DisposableEffectResult> effect, @Nullable Composer composer, int i10) {
        t.j(effect, "effect");
        composer.G(-1371986847);
        composer.G(1157296644);
        boolean zK = composer.k(obj);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new DisposableEffectImpl(effect));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void b(@Nullable Object obj, @Nullable Object obj2, @NotNull l<? super DisposableEffectScope, ? extends DisposableEffectResult> effect, @Nullable Composer composer, int i10) {
        t.j(effect, "effect");
        composer.G(1429097729);
        composer.G(511388516);
        boolean zK = composer.k(obj) | composer.k(obj2);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new DisposableEffectImpl(effect));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void c(@NotNull p<? super o0, ? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        t.j(block, "block");
        Composer composerS = composer.s(-805415771);
        if ((i10 & 1) != 0 || !composerS.b()) {
            throw new IllegalStateException(LaunchedEffectNoParamError.toString());
        }
        composerS.g();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new EffectsKt$LaunchedEffect$1(block, i10));
    }

    @Composable
    public static final void d(@Nullable Object obj, @NotNull p<? super o0, ? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        t.j(block, "block");
        composer.G(1179185413);
        g gVarY = composer.y();
        composer.G(1157296644);
        boolean zK = composer.k(obj);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new LaunchedEffectImpl(gVarY, block));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void e(@Nullable Object obj, @Nullable Object obj2, @NotNull p<? super o0, ? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        t.j(block, "block");
        composer.G(590241125);
        g gVarY = composer.y();
        composer.G(511388516);
        boolean zK = composer.k(obj) | composer.k(obj2);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new LaunchedEffectImpl(gVarY, block));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void f(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull p<? super o0, ? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        t.j(block, "block");
        composer.G(-54093371);
        g gVarY = composer.y();
        composer.G(1618982084);
        boolean zK = composer.k(obj) | composer.k(obj2) | composer.k(obj3);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new LaunchedEffectImpl(gVarY, block));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void g(@NotNull Object[] keys, @NotNull p<? super o0, ? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        t.j(keys, "keys");
        t.j(block, "block");
        composer.G(-139560008);
        g gVarY = composer.y();
        Object[] objArrCopyOf = Arrays.copyOf(keys, keys.length);
        composer.G(-568225417);
        boolean zK = false;
        for (Object obj : objArrCopyOf) {
            zK |= composer.k(obj);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            composer.z(new LaunchedEffectImpl(gVarY, block));
        }
        composer.Q();
        composer.Q();
    }

    @Composable
    public static final void h(@NotNull e8.a<l0> effect, @Nullable Composer composer, int i10) {
        t.j(effect, "effect");
        composer.G(-1288466761);
        composer.C(effect);
        composer.Q();
    }

    @NotNull
    public static final o0 j(@NotNull g coroutineContext, @NotNull Composer composer) {
        t.j(coroutineContext, "coroutineContext");
        t.j(composer, "composer");
        b2.b bVar = b2.Key;
        if (coroutineContext.get(bVar) == null) {
            g gVarY = composer.y();
            return p0.a(gVarY.plus(f2.a((b2) gVarY.get(bVar))).plus(coroutineContext));
        }
        a0 a0VarB = h2.b(null, 1, null);
        a0VarB.a(new IllegalArgumentException("CoroutineContext supplied to rememberCoroutineScope may not include a parent job"));
        return p0.a(a0VarB);
    }
}
