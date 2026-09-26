package com.google.firebase.components;

import com.narvii.chat.input.MentionedEditText;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes9.dex */
public final class g0<T> {
    private final Class<? extends Annotation> qualifier;
    private final Class<T> type;

    private @interface a {
    }

    public static <T> g0<T> a(Class<? extends Annotation> cls, Class<T> cls2) {
        return new g0<>(cls, cls2);
    }

    public static <T> g0<T> b(Class<T> cls) {
        return new g0<>(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.type.equals(g0Var.type)) {
            return this.qualifier.equals(g0Var.qualifier);
        }
        return false;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.qualifier.hashCode();
    }

    public String toString() {
        if (this.qualifier == a.class) {
            return this.type.getName();
        }
        return MentionedEditText.DEFAULT_METION_TAG + this.qualifier.getName() + " " + this.type.getName();
    }

    public g0(Class<? extends Annotation> cls, Class<T> cls2) {
        this.qualifier = cls;
        this.type = cls2;
    }
}
