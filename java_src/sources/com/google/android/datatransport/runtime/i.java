package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@AutoValue
public abstract class i {
    protected abstract Map<String, String> c();

    @Nullable
    public abstract Integer d();

    public abstract h e();

    public abstract long f();

    public abstract String j();

    public abstract long k();

    @AutoValue.Builder
    public static abstract class a {
        public abstract i d();

        protected abstract Map<String, String> e();

        protected abstract a f(Map<String, String> map);

        public abstract a g(Integer num);

        public abstract a h(h hVar);

        public abstract a i(long j6);

        public abstract a j(String str);

        public abstract a k(long j6);

        public final a a(String str, int i10) {
            e().put(str, String.valueOf(i10));
            return this;
        }

        public final a b(String str, long j6) {
            e().put(str, String.valueOf(j6));
            return this;
        }

        public final a c(String str, String str2) {
            e().put(str, str2);
            return this;
        }
    }

    public static a a() {
        return new b.C0161b().f(new HashMap());
    }

    public a l() {
        return new b.C0161b().j(j()).g(d()).h(e()).i(f()).k(k()).f(new HashMap(c()));
    }

    public final String b(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    public final int g(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final long h(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }

    public final Map<String, String> i() {
        return Collections.unmodifiableMap(c());
    }
}
