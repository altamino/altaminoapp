package r3;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;
import d3.b;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final int[] ANDROID_THEME_OVERLAY_ATTRS = {R.attr.theme, b.theme};
    private static final int[] MATERIAL_THEME_OVERLAY_ATTR = {b.materialThemeOverlay};

    @StyleRes
    private static int a(@NonNull Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ANDROID_THEME_OVERLAY_ATTRS);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    @StyleRes
    private static int b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, MATERIAL_THEME_OVERLAY_ATTR, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    @NonNull
    public static Context c(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        boolean z6;
        int iB = b(context, attributeSet, i10, i11);
        if ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).c() == iB) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (iB != 0 && !z6) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, iB);
            int iA = a(context, attributeSet);
            if (iA != 0) {
                contextThemeWrapper.getTheme().applyStyle(iA, true);
            }
            return contextThemeWrapper;
        }
        return context;
    }
}
