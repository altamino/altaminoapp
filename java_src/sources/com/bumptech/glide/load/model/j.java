package com.bumptech.glide.load.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class j implements h {
    private volatile Map<String, String> combinedHeaders;
    private final Map<String, List<i>> headers;

    public static final class a {
        private static final Map<String, List<i>> DEFAULT_HEADERS;
        private static final String DEFAULT_USER_AGENT;
        private static final String USER_AGENT_HEADER = "User-Agent";
        private boolean copyOnModify = true;
        private Map<String, List<i>> headers = DEFAULT_HEADERS;
        private boolean isUserAgentDefault = true;

        public j a() {
            this.copyOnModify = true;
            return new j(this.headers);
        }

        @VisibleForTesting
        static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = property.charAt(i10);
                if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                    sb.append(cCharAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        static {
            String strB = b();
            DEFAULT_USER_AGENT = strB;
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(strB)) {
                map.put(USER_AGENT_HEADER, Collections.singletonList(new b(strB)));
            }
            DEFAULT_HEADERS = Collections.unmodifiableMap(map);
        }
    }

    static final class b implements i {

        @NonNull
        private final String value;

        @Override // com.bumptech.glide.load.model.i
        public String a() {
            return this.value;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.value.equals(((b) obj).value);
            }
            return false;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.value + '\'' + kotlinx.serialization.json.internal.b.END_OBJ;
        }

        b(@NonNull String str) {
            this.value = str;
        }
    }

    @NonNull
    private String a(@NonNull List<i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String strA = list.get(i10).a();
            if (!TextUtils.isEmpty(strA)) {
                sb.append(strA);
                if (i10 != list.size() - 1) {
                    sb.append(kotlinx.serialization.json.internal.b.COMMA);
                }
            }
        }
        return sb.toString();
    }

    private Map<String, String> b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.headers.entrySet()) {
            String strA = a(entry.getValue());
            if (!TextUtils.isEmpty(strA)) {
                map.put(entry.getKey(), strA);
            }
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.headers.equals(((j) obj).headers);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.h
    public Map<String, String> getHeaders() {
        if (this.combinedHeaders == null) {
            synchronized (this) {
                try {
                    if (this.combinedHeaders == null) {
                        this.combinedHeaders = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.combinedHeaders;
    }

    public int hashCode() {
        return this.headers.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.headers + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    j(Map<String, List<i>> map) {
        this.headers = Collections.unmodifiableMap(map);
    }
}
