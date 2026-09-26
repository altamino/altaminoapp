package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import e8.p;
import kotlin.coroutines.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public interface Composer {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @ComposeCompilerApi
    void A();

    @InternalComposeApi
    void B(@NotNull MovableContent<?> movableContent, @Nullable Object obj);

    @InternalComposeApi
    void C(@NotNull e8.a<l0> aVar);

    void D();

    @Nullable
    RecomposeScope E();

    @ComposeCompilerApi
    void F();

    @ComposeCompilerApi
    void G(int i10);

    @ComposeCompilerApi
    @Nullable
    Object H();

    @NotNull
    CompositionData I();

    @ComposeCompilerApi
    void J();

    @ComposeCompilerApi
    void K(int i10, @Nullable Object obj);

    @ComposeCompilerApi
    void L();

    @ComposeCompilerApi
    <V, T> void M(V v5, @NotNull p<? super T, ? super V, l0> pVar);

    @InternalComposeApi
    void N();

    int O();

    @ComposeCompilerApi
    void P();

    @ComposeCompilerApi
    void Q();

    @ComposeCompilerApi
    void a(boolean z6);

    boolean b();

    @ComposeCompilerApi
    void c();

    @ComposeCompilerApi
    void d();

    @ComposeCompilerApi
    void e();

    @ComposeCompilerApi
    void f(int i10, @Nullable Object obj);

    @ComposeCompilerApi
    void g();

    boolean h();

    @InternalComposeApi
    void i(@NotNull RecomposeScope recomposeScope);

    @InternalComposeApi
    @NotNull
    CompositionContext j();

    @ComposeCompilerApi
    boolean k(@Nullable Object obj);

    @InternalComposeApi
    void l(@NotNull ProvidedValue<?>[] providedValueArr);

    @ComposeCompilerApi
    boolean m(boolean z6);

    @ComposeCompilerApi
    boolean n(float f);

    @ComposeCompilerApi
    void o();

    @ComposeCompilerApi
    boolean p(int i10);

    @ComposeCompilerApi
    boolean q(long j6);

    boolean r();

    @ComposeCompilerApi
    @NotNull
    Composer s(int i10);

    @NotNull
    Applier<?> t();

    @ComposeCompilerApi
    @Nullable
    ScopeUpdateScope u();

    @ComposeCompilerApi
    void v();

    @ComposeCompilerApi
    <T> void w(@NotNull e8.a<? extends T> aVar);

    @InternalComposeApi
    <T> T x(@NotNull CompositionLocal<T> compositionLocal);

    @NotNull
    g y();

    @ComposeCompilerApi
    void z(@Nullable Object obj);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final Object Empty = new Object() { // from class: androidx.compose.runtime.Composer$Companion$Empty$1
            @NotNull
            public String toString() {
                return "Empty";
            }
        };

        @NotNull
        public final Object a() {
            return Empty;
        }

        private Companion() {
        }
    }
}
