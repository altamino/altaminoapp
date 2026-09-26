package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DoNotInline;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class StaticLayoutFactoryPre21 implements StaticLayoutFactoryImpl {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean isInitialized;

    @Nullable
    private static Constructor<StaticLayout> staticLayoutConstructor;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Constructor<StaticLayout> b() {
            if (StaticLayoutFactoryPre21.isInitialized) {
                return StaticLayoutFactoryPre21.staticLayoutConstructor;
            }
            StaticLayoutFactoryPre21.isInitialized = true;
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                StaticLayoutFactoryPre21.staticLayoutConstructor = StaticLayout.class.getConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
            } catch (NoSuchMethodException unused) {
                StaticLayoutFactoryPre21.staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to collect necessary constructor.");
            }
            return StaticLayoutFactoryPre21.staticLayoutConstructor;
        }
    }

    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    @DoNotInline
    @NotNull
    public StaticLayout a(@NotNull StaticLayoutParams params) {
        t.j(params, "params");
        Constructor constructorB = Companion.b();
        StaticLayout staticLayout = null;
        if (constructorB != null) {
            try {
                staticLayout = (StaticLayout) constructorB.newInstance(params.p(), Integer.valueOf(params.o()), Integer.valueOf(params.e()), params.m(), Integer.valueOf(params.s()), params.a(), params.q(), Float.valueOf(params.k()), Float.valueOf(params.j()), Boolean.valueOf(params.g()), params.c(), Integer.valueOf(params.d()), Integer.valueOf(params.l()));
            } catch (IllegalAccessException unused) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            } catch (InstantiationException unused2) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            } catch (InvocationTargetException unused3) {
                staticLayoutConstructor = null;
                Log.e("StaticLayoutFactory", "unable to call constructor");
            }
        }
        return staticLayout != null ? staticLayout : new StaticLayout(params.p(), params.o(), params.e(), params.m(), params.s(), params.a(), params.k(), params.j(), params.g(), params.c(), params.d());
    }
}
