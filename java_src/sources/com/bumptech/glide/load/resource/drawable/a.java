package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private static volatile boolean shouldCallAppCompatResources = true;

    public static Drawable b(Context context, Context context2, @DrawableRes int i10) {
        return c(context, context2, i10, null);
    }

    private static Drawable c(Context context, Context context2, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        try {
            if (shouldCallAppCompatResources) {
                return e(context2, i10, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i10);
        } catch (NoClassDefFoundError unused2) {
            shouldCallAppCompatResources = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return d(context2, i10, theme);
    }

    private static Drawable e(Context context, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        if (theme != null) {
            context = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.b(context, i10);
    }

    public static Drawable a(Context context, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        return c(context, context, i10, theme);
    }

    private static Drawable d(Context context, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        return ResourcesCompat.e(context.getResources(), i10, theme);
    }
}
