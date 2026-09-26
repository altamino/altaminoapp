package retrofit2;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes7.dex */
class Platform {
    private static final Platform PLATFORM = findPlatform();
    private final boolean hasJava8Types;
    private final Constructor<MethodHandles.Lookup> lookupConstructor;

    static final class Android extends Platform {

        static final class MainThreadExecutor implements Executor {
            private final Handler handler = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.handler.post(runnable);
            }

            MainThreadExecutor() {
            }
        }

        Android() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        @Override // retrofit2.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }

        @Override // retrofit2.Platform
        Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return super.invokeDefaultMethod(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }
    }

    static Platform get() {
        return PLATFORM;
    }

    int defaultCallAdapterFactoriesSize() {
        return this.hasJava8Types ? 2 : 1;
    }

    Executor defaultCallbackExecutor() {
        return null;
    }

    int defaultConverterFactoriesSize() {
        return this.hasJava8Types ? 1 : 0;
    }

    private static Platform findPlatform() {
        return "Dalvik".equals(System.getProperty("java.vm.name")) ? new Android() : new Platform(true);
    }

    List<? extends CallAdapter.Factory> defaultCallAdapterFactories(Executor executor) {
        DefaultCallAdapterFactory defaultCallAdapterFactory = new DefaultCallAdapterFactory(executor);
        return this.hasJava8Types ? Arrays.asList(CompletableFutureCallAdapterFactory.INSTANCE, defaultCallAdapterFactory) : Collections.singletonList(defaultCallAdapterFactory);
    }

    List<? extends Converter.Factory> defaultConverterFactories() {
        return this.hasJava8Types ? Collections.singletonList(OptionalConverterFactory.INSTANCE) : Collections.emptyList();
    }

    @IgnoreJRERequirement
    Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        Constructor<MethodHandles.Lookup> constructor = this.lookupConstructor;
        return (constructor != null ? i.a(constructor.newInstance(cls, -1)) : MethodHandles.lookup()).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }

    @IgnoreJRERequirement
    boolean isDefaultMethod(Method method) {
        return this.hasJava8Types && method.isDefault();
    }

    Platform(boolean z6) {
        this.hasJava8Types = z6;
        Constructor<MethodHandles.Lookup> declaredConstructor = null;
        if (z6) {
            try {
                declaredConstructor = g.a().getDeclaredConstructor(Class.class, Integer.TYPE);
                declaredConstructor.setAccessible(true);
            } catch (NoClassDefFoundError | NoSuchMethodException unused) {
            }
        }
        this.lookupConstructor = declaredConstructor;
    }
}
