package j4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c {
    private final String name;
    private final Map<Class<?>, Object> properties;

    public static final class b {
        private final String name;
        private Map<Class<?>, Object> properties = null;

        @NonNull
        public c a() {
            return new c(this.name, this.properties == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.properties)));
        }

        @NonNull
        public <T extends Annotation> b b(@NonNull T t5) {
            if (this.properties == null) {
                this.properties = new HashMap();
            }
            this.properties.put(t5.annotationType(), t5);
            return this;
        }

        b(String str) {
            this.name = str;
        }
    }

    @NonNull
    public String b() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.name.equals(cVar.name) && this.properties.equals(cVar.properties);
    }

    private c(String str, Map<Class<?>, Object> map) {
        this.name = str;
        this.properties = map;
    }

    @NonNull
    public static b a(@NonNull String str) {
        return new b(str);
    }

    @NonNull
    public static c d(@NonNull String str) {
        return new c(str, Collections.emptyMap());
    }

    @Nullable
    public <T extends Annotation> T c(@NonNull Class<T> cls) {
        return (T) this.properties.get(cls);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.properties.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.name + ", properties=" + this.properties.values() + "}";
    }
}
