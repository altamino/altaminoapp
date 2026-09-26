package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.u;

/* JADX INFO: loaded from: classes8.dex */
public class h {
    @NonNull
    static d a(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? b() : new e();
        }
        return new j();
    }

    @NonNull
    static d b() {
        return new j();
    }

    @NonNull
    static f c() {
        return new f();
    }

    public static void d(@NonNull View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof g) {
            ((g) background).Y(f);
        }
    }

    public static void e(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof g) {
            f(view, (g) background);
        }
    }

    public static void f(@NonNull View view, @NonNull g gVar) {
        if (gVar.Q()) {
            gVar.d0(u.f(view));
        }
    }
}
