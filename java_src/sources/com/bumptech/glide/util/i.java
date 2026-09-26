package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class i {
    private Class<?> first;
    private Class<?> second;
    private Class<?> third;

    public i() {
    }

    public void a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        b(cls, cls2, null);
    }

    public void b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.first = cls;
        this.second = cls2;
        this.third = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.first.equals(iVar.first) && this.second.equals(iVar.second) && k.c(this.third, iVar.third);
    }

    public i(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        a(cls, cls2);
    }

    public int hashCode() {
        int iHashCode = ((this.first.hashCode() * 31) + this.second.hashCode()) * 31;
        Class<?> cls = this.third;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.first + ", second=" + this.second + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public i(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        b(cls, cls2, cls3);
    }
}
