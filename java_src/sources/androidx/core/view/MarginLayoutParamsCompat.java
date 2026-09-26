package androidx.core.view;

import android.view.ViewGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class MarginLayoutParamsCompat {

    @RequiresApi
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getLayoutDirection();
        }

        @DoNotInline
        static int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginEnd();
        }

        @DoNotInline
        static int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginStart();
        }

        @DoNotInline
        static boolean d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.isMarginRelative();
        }

        @DoNotInline
        static void e(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.resolveLayoutDirection(i10);
        }

        @DoNotInline
        static void f(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setLayoutDirection(i10);
        }

        @DoNotInline
        static void g(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setMarginEnd(i10);
        }

        @DoNotInline
        static void h(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
            marginLayoutParams.setMarginStart(i10);
        }
    }

    private MarginLayoutParamsCompat() {
    }

    public static int a(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Api17Impl.b(marginLayoutParams);
    }

    public static int b(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Api17Impl.c(marginLayoutParams);
    }

    public static void c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.g(marginLayoutParams, i10);
    }

    public static void d(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        Api17Impl.h(marginLayoutParams, i10);
    }
}
