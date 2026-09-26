package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCompositionLocals_androidKt {

    @NotNull
    private static final ProvidableCompositionLocal<Configuration> LocalConfiguration = CompositionLocalKt.c(SnapshotStateKt.i(), AndroidCompositionLocals_androidKt$LocalConfiguration$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<Context> LocalContext = CompositionLocalKt.e(AndroidCompositionLocals_androidKt$LocalContext$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<ImageVectorCache> LocalImageVectorCache = CompositionLocalKt.e(AndroidCompositionLocals_androidKt$LocalImageVectorCache$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<LifecycleOwner> LocalLifecycleOwner = CompositionLocalKt.e(AndroidCompositionLocals_androidKt$LocalLifecycleOwner$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<SavedStateRegistryOwner> LocalSavedStateRegistryOwner = CompositionLocalKt.e(AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<View> LocalView = CompositionLocalKt.e(AndroidCompositionLocals_androidKt$LocalView$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Configuration> f() {
        return LocalConfiguration;
    }

    @NotNull
    public static final ProvidableCompositionLocal<Context> g() {
        return LocalContext;
    }

    @NotNull
    public static final ProvidableCompositionLocal<ImageVectorCache> h() {
        return LocalImageVectorCache;
    }

    @NotNull
    public static final ProvidableCompositionLocal<LifecycleOwner> i() {
        return LocalLifecycleOwner;
    }

    @NotNull
    public static final ProvidableCompositionLocal<SavedStateRegistryOwner> j() {
        return LocalSavedStateRegistryOwner;
    }

    @NotNull
    public static final ProvidableCompositionLocal<View> k() {
        return LocalView;
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull AndroidComposeView owner, @NotNull e8.p<? super Composer, ? super Integer, w7.l0> content, @Nullable Composer composer, int i10) {
        kotlin.jvm.internal.t.j(owner, "owner");
        kotlin.jvm.internal.t.j(content, "content");
        Composer composerS = composer.s(1396852028);
        Context context = owner.getContext();
        composerS.G(-492369756);
        Object objH = composerS.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt.g(context.getResources().getConfiguration(), SnapshotStateKt.i());
            composerS.z(objH);
        }
        composerS.Q();
        MutableState mutableState = (MutableState) objH;
        composerS.G(1157296644);
        boolean zK = composerS.k(mutableState);
        Object objH2 = composerS.H();
        if (zK || objH2 == companion.a()) {
            objH2 = new AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1(mutableState);
            composerS.z(objH2);
        }
        composerS.Q();
        owner.setConfigurationChangeObserver((e8.l) objH2);
        composerS.G(-492369756);
        Object objH3 = composerS.H();
        if (objH3 == companion.a()) {
            kotlin.jvm.internal.t.i(context, "context");
            objH3 = new AndroidUriHandler(context);
            composerS.z(objH3);
        }
        composerS.Q();
        AndroidUriHandler androidUriHandler = (AndroidUriHandler) objH3;
        AndroidComposeView.ViewTreeOwners viewTreeOwners = owner.getViewTreeOwners();
        if (viewTreeOwners == null) {
            throw new IllegalStateException("Called when the ViewTreeOwnersAvailability is not yet in Available state");
        }
        composerS.G(-492369756);
        Object objH4 = composerS.H();
        if (objH4 == companion.a()) {
            objH4 = DisposableSaveableStateRegistry_androidKt.a(owner, viewTreeOwners.b());
            composerS.z(objH4);
        }
        composerS.Q();
        DisposableSaveableStateRegistry disposableSaveableStateRegistry = (DisposableSaveableStateRegistry) objH4;
        EffectsKt.a(w7.l0.INSTANCE, new AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2(disposableSaveableStateRegistry), composerS, 0);
        kotlin.jvm.internal.t.i(context, "context");
        ImageVectorCache imageVectorCacheM = m(context, b(mutableState), composerS, 72);
        ProvidableCompositionLocal<Configuration> providableCompositionLocal = LocalConfiguration;
        Configuration configuration = b(mutableState);
        kotlin.jvm.internal.t.i(configuration, "configuration");
        CompositionLocalKt.b(new ProvidedValue[]{providableCompositionLocal.c(configuration), LocalContext.c(context), LocalLifecycleOwner.c(viewTreeOwners.a()), LocalSavedStateRegistryOwner.c(viewTreeOwners.b()), SaveableStateRegistryKt.b().c(disposableSaveableStateRegistry), LocalView.c(owner.getView()), LocalImageVectorCache.c(imageVectorCacheM)}, ComposableLambdaKt.b(composerS, 1471621628, true, new AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3(owner, androidUriHandler, content, i10)), composerS, 56);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4(owner, content, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void l(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }

    private static final Configuration b(MutableState<Configuration> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(MutableState<Configuration> mutableState, Configuration configuration) {
        mutableState.setValue(configuration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Stable
    @Composable
    private static final ImageVectorCache m(Context context, Configuration configuration, Composer composer, int i10) {
        T t5;
        composer.G(-485908294);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = new ImageVectorCache();
            composer.z(objH);
        }
        composer.Q();
        final ImageVectorCache imageVectorCache = (ImageVectorCache) objH;
        final kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            composer.z(configuration);
            t5 = configuration;
        } else {
            t5 = objH2;
        }
        composer.Q();
        p0Var.element = t5;
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = new ComponentCallbacks2() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(@NotNull Configuration configuration2) {
                    kotlin.jvm.internal.t.j(configuration2, "configuration");
                    Configuration configuration3 = p0Var.element;
                    imageVectorCache.c(configuration3 != null ? configuration3.updateFrom(configuration2) : -1);
                    p0Var.element = configuration2;
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                    imageVectorCache.a();
                }

                @Override // android.content.ComponentCallbacks2
                public void onTrimMemory(int i11) {
                    imageVectorCache.a();
                }
            };
            composer.z(objH3);
        }
        composer.Q();
        EffectsKt.a(imageVectorCache, new AndroidCompositionLocals_androidKt$obtainImageVectorCache$1(context, (AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1) objH3), composer, 8);
        composer.Q();
        return imageVectorCache;
    }
}
