package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.p;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class SavedStateViewModelFactoryKt {

    @NotNull
    private static final List<Class<?>> ANDROID_VIEWMODEL_SIGNATURE = v.p(Application.class, SavedStateHandle.class);

    @NotNull
    private static final List<Class<?>> VIEWMODEL_SIGNATURE = u.e(SavedStateHandle.class);

    @Nullable
    public static final <T> Constructor<T> c(@NotNull Class<T> modelClass, @NotNull List<? extends Class<?>> signature) {
        t.j(modelClass, "modelClass");
        t.j(signature, "signature");
        Object[] constructors = modelClass.getConstructors();
        t.i(constructors, "modelClass.constructors");
        for (Object obj : constructors) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            t.i(parameterTypes, "constructor.parameterTypes");
            List listT0 = p.t0(parameterTypes);
            if (t.e(signature, listT0)) {
                t.h(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactoryKt.findMatchingConstructor>");
                return constructor;
            }
            if (signature.size() == listT0.size() && listT0.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final <T extends ViewModel> T d(@NotNull Class<T> modelClass, @NotNull Constructor<T> constructor, @NotNull Object... params) {
        t.j(modelClass, "modelClass");
        t.j(constructor, "constructor");
        t.j(params, "params");
        try {
            return constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Failed to access " + modelClass, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e6.getCause());
        }
    }
}
