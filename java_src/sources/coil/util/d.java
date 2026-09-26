package coil.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    @Nullable
    public static final Lifecycle c(@Nullable Context context) {
        Object baseContext = context;
        while (!(baseContext instanceof LifecycleOwner)) {
            if (!(baseContext instanceof ContextWrapper)) {
                return null;
            }
            baseContext = ((ContextWrapper) baseContext).getBaseContext();
        }
        return ((LifecycleOwner) baseContext).getLifecycle();
    }

    @NotNull
    public static final Drawable a(@NotNull Context context, @DrawableRes int i10) {
        Drawable drawableB = AppCompatResources.b(context, i10);
        if (drawableB != null) {
            return drawableB;
        }
        throw new IllegalStateException(("Invalid resource ID: " + i10).toString());
    }

    @NotNull
    public static final Drawable b(@NotNull Resources resources, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        Drawable drawableE = ResourcesCompat.e(resources, i10, theme);
        if (drawableE != null) {
            return drawableE;
        }
        throw new IllegalStateException(("Invalid resource ID: " + i10).toString());
    }

    @NotNull
    public static final Drawable d(@NotNull Context context, @NotNull Resources resources, @XmlRes int i10) throws XmlPullParserException, IOException {
        XmlResourceParser xml = resources.getXml(i10);
        int next = xml.next();
        while (next != 2 && next != 1) {
            next = xml.next();
        }
        if (next == 2) {
            if (Build.VERSION.SDK_INT < 24) {
                String name = xml.getName();
                if (kotlin.jvm.internal.t.e(name, "vector")) {
                    return VectorDrawableCompat.c(resources, xml, Xml.asAttributeSet(xml), context.getTheme());
                }
                if (kotlin.jvm.internal.t.e(name, "animated-vector")) {
                    return AnimatedVectorDrawableCompat.a(context, resources, xml, Xml.asAttributeSet(xml), context.getTheme());
                }
            }
            return b(resources, i10, context.getTheme());
        }
        throw new XmlPullParserException("No start tag found.");
    }

    public static final boolean e(@NotNull Context context, @NotNull String str) {
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return true;
        }
        return false;
    }
}
