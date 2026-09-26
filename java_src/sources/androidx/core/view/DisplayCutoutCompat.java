package androidx.core.view;

import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class DisplayCutoutCompat {
    private final DisplayCutout mDisplayCutout;

    @RequiresApi
    static class Api28Impl {
        @DoNotInline
        static DisplayCutout a(Rect rect, List<Rect> list) {
            return new DisplayCutout(rect, list);
        }

        private Api28Impl() {
        }

        @DoNotInline
        static List<Rect> b(DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }

        @DoNotInline
        static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        @DoNotInline
        static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        @DoNotInline
        static int e(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        @DoNotInline
        static int f(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4);
        }

        private Api29Impl() {
        }
    }

    @RequiresApi
    static class Api30Impl {
        @DoNotInline
        static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        private Api30Impl() {
        }

        @DoNotInline
        static Insets b(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    public DisplayCutoutCompat(@Nullable Rect rect, @Nullable List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? Api28Impl.a(rect, list) : null);
    }

    public DisplayCutoutCompat(@NonNull androidx.core.graphics.Insets insets, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Rect rect3, @Nullable Rect rect4, @NonNull androidx.core.graphics.Insets insets2) {
        this(a(insets, rect, rect2, rect3, rect4, insets2));
    }

    private static DisplayCutout a(@NonNull androidx.core.graphics.Insets insets, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Rect rect3, @Nullable Rect rect4, @NonNull androidx.core.graphics.Insets insets2) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            return Api30Impl.a(insets.e(), rect, rect2, rect3, rect4, insets2.e());
        }
        if (i10 >= 29) {
            return Api29Impl.a(insets.e(), rect, rect2, rect3, rect4);
        }
        if (i10 < 28) {
            return null;
        }
        Rect rect5 = new Rect(insets.left, insets.top, insets.right, insets.bottom);
        ArrayList arrayList = new ArrayList();
        if (rect != null) {
            arrayList.add(rect);
        }
        if (rect2 != null) {
            arrayList.add(rect2);
        }
        if (rect3 != null) {
            arrayList.add(rect3);
        }
        if (rect4 != null) {
            arrayList.add(rect4);
        }
        return Api28Impl.a(rect5, arrayList);
    }

    static DisplayCutoutCompat g(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompat(displayCutout);
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.c(this.mDisplayCutout);
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.d(this.mDisplayCutout);
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.e(this.mDisplayCutout);
        }
        return 0;
    }

    public int e() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.f(this.mDisplayCutout);
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return ObjectsCompat.a(this.mDisplayCutout, ((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    @NonNull
    public androidx.core.graphics.Insets f() {
        return Build.VERSION.SDK_INT >= 30 ? androidx.core.graphics.Insets.d(Api30Impl.b(this.mDisplayCutout)) : androidx.core.graphics.Insets.NONE;
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.mDisplayCutout;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    @NonNull
    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }

    private DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.mDisplayCutout = displayCutout;
    }
}
