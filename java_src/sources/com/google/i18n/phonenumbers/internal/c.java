package com.google.i18n.phonenumbers.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    private a<String, Pattern> cache;

    private static class a<K, V> {
        private LinkedHashMap<K, V> map;
        private int size;

        /* JADX INFO: renamed from: com.google.i18n.phonenumbers.internal.c$a$a, reason: collision with other inner class name */
        class C0273a extends LinkedHashMap<K, V> {
            C0273a(int i10, float f, boolean z6) {
                super(i10, f, z6);
            }

            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                if (size() > a.this.size) {
                    return true;
                }
                return false;
            }
        }

        public synchronized V b(K k) {
            return this.map.get(k);
        }

        public synchronized void c(K k, V v5) {
            this.map.put(k, v5);
        }

        public a(int i10) {
            this.size = i10;
            this.map = new C0273a(((i10 * 4) / 3) + 1, 0.75f, true);
        }
    }

    public Pattern a(String str) {
        Pattern patternB = this.cache.b(str);
        if (patternB != null) {
            return patternB;
        }
        Pattern patternCompile = Pattern.compile(str);
        this.cache.c(str, patternCompile);
        return patternCompile;
    }

    public c(int i10) {
        this.cache = new a<>(i10);
    }
}
