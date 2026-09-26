package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.ImageView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
public class ImageViewCompat {

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static ColorStateList a(ImageView imageView) {
            return imageView.getImageTintList();
        }

        @DoNotInline
        static PorterDuff.Mode b(ImageView imageView) {
            return imageView.getImageTintMode();
        }

        @DoNotInline
        static void c(ImageView imageView, ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
        }

        @DoNotInline
        static void d(ImageView imageView, PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
        }
    }

    private ImageViewCompat() {
    }

    @Nullable
    public static ColorStateList a(@NonNull ImageView imageView) {
        return Api21Impl.a(imageView);
    }

    @Nullable
    public static PorterDuff.Mode b(@NonNull ImageView imageView) {
        return Api21Impl.b(imageView);
    }

    public static void c(@NonNull ImageView imageView, @Nullable ColorStateList colorStateList) {
        Api21Impl.c(imageView, colorStateList);
    }

    public static void d(@NonNull ImageView imageView, @Nullable PorterDuff.Mode mode) {
        Api21Impl.d(imageView, mode);
    }
}
