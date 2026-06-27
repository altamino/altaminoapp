package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* loaded from: classes4.dex */
public interface CallAdapter<R, T> {
    T adapt(Call<R> call);

    Type responseType();

    public static abstract class Factory {
        public abstract CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);

        protected static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
