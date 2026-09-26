package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import e8.a;
import e8.p;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@ExperimentalFoundationApi
public final class LazyLayoutItemContentFactory {
    private long constraintsOfCachedLambdas;

    @NotNull
    private Density densityOfCachedLambdas;

    @NotNull
    private final a<LazyLayoutItemProvider> itemProvider;

    @NotNull
    private final Map<Object, CachedItemContent> lambdasCache;

    @NotNull
    private final SaveableStateHolder saveableStateHolder;

    /* JADX INFO: Access modifiers changed from: private */
    final class CachedItemContent {

        @Nullable
        private p<? super Composer, ? super Integer, l0> _content;

        @NotNull
        private final Object key;

        @NotNull
        private final MutableState lastKnownIndex$delegate;
        final /* synthetic */ LazyLayoutItemContentFactory this$0;

        @Nullable
        private final Object type;

        @NotNull
        public final Object e() {
            return this.key;
        }

        @Nullable
        public final Object g() {
            return this.type;
        }

        public CachedItemContent(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, @NotNull int i10, @Nullable Object key, Object obj) {
            t.j(key, "key");
            this.this$0 = lazyLayoutItemContentFactory;
            this.key = key;
            this.type = obj;
            this.lastKnownIndex$delegate = SnapshotStateKt__SnapshotStateKt.e(Integer.valueOf(i10), null, 2, null);
        }

        private final p<Composer, Integer, l0> c() {
            return ComposableLambdaKt.c(1403994769, true, new LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1(this.this$0, this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h(int i10) {
            this.lastKnownIndex$delegate.setValue(Integer.valueOf(i10));
        }

        @NotNull
        public final p<Composer, Integer, l0> d() {
            p pVar = this._content;
            if (pVar != null) {
                return pVar;
            }
            p<Composer, Integer, l0> pVarC = c();
            this._content = pVarC;
            return pVarC;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int f() {
            return ((Number) this.lastKnownIndex$delegate.getValue()).intValue();
        }
    }

    @NotNull
    public final a<LazyLayoutItemProvider> d() {
        return this.itemProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyLayoutItemContentFactory(@NotNull SaveableStateHolder saveableStateHolder, @NotNull a<? extends LazyLayoutItemProvider> itemProvider) {
        t.j(saveableStateHolder, "saveableStateHolder");
        t.j(itemProvider, "itemProvider");
        this.saveableStateHolder = saveableStateHolder;
        this.itemProvider = itemProvider;
        this.lambdasCache = new LinkedHashMap();
        this.densityOfCachedLambdas = DensityKt.a(0.0f, 0.0f);
        this.constraintsOfCachedLambdas = ConstraintsKt.b(0, 0, 0, 0, 15, null);
    }

    @NotNull
    public final p<Composer, Integer, l0> b(int i10, @NotNull Object key) {
        t.j(key, "key");
        CachedItemContent cachedItemContent = this.lambdasCache.get(key);
        Object objA = this.itemProvider.invoke().a(i10);
        if (cachedItemContent != null && cachedItemContent.f() == i10 && t.e(cachedItemContent.g(), objA)) {
            return cachedItemContent.d();
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(this, i10, key, objA);
        this.lambdasCache.put(key, cachedItemContent2);
        return cachedItemContent2.d();
    }

    @Nullable
    public final Object c(@Nullable Object obj) {
        CachedItemContent cachedItemContent = this.lambdasCache.get(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.g();
        }
        LazyLayoutItemProvider lazyLayoutItemProviderInvoke = this.itemProvider.invoke();
        Integer num = lazyLayoutItemProviderInvoke.c().get(obj);
        if (num != null) {
            return lazyLayoutItemProviderInvoke.a(num.intValue());
        }
        return null;
    }

    public final void e(@NotNull Density density, long j6) {
        t.j(density, "density");
        if (t.e(density, this.densityOfCachedLambdas) && Constraints.g(j6, this.constraintsOfCachedLambdas)) {
            return;
        }
        this.densityOfCachedLambdas = density;
        this.constraintsOfCachedLambdas = j6;
        this.lambdasCache.clear();
    }
}
