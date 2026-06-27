package com.narvii.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;

/* loaded from: classes3.dex */
class ContextWrapperNoEdgeEffect extends ContextWrapper {
    private ResourcesNoEdgeEffect mResourcesEdgeEffect;

    public ContextWrapperNoEdgeEffect(Context context) {
        super(context);
        Resources resources = context.getResources();
        this.mResourcesEdgeEffect = new ResourcesNoEdgeEffect(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mResourcesEdgeEffect;
    }

    private class ResourcesNoEdgeEffect extends Resources {
        private final Drawable emptyDrawable;
        private final int overscroll_edge;
        private final int overscroll_glow;

        public ResourcesNoEdgeEffect(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration) {
            super(assetManager, displayMetrics, configuration);
            this.overscroll_edge = getDrawableId("overscroll_edge");
            this.overscroll_glow = getDrawableId("overscroll_glow");
            this.emptyDrawable = new ColorDrawable(0);
        }

        private int getDrawableId(String str) {
            try {
                return ((Integer) Class.forName("com.android.internal.R$drawable").getField(str).get(null)).intValue();
            } catch (Exception unused) {
                return 0;
            }
        }

        @Override // android.content.res.Resources
        public Drawable getDrawable(int i) throws Resources.NotFoundException {
            if (i == this.overscroll_edge) {
                return this.emptyDrawable;
            }
            if (i == this.overscroll_glow) {
                return this.emptyDrawable;
            }
            return super.getDrawable(i);
        }
    }
}
