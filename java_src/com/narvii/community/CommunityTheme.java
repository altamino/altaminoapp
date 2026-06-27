package com.narvii.community;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigTheme;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class CommunityTheme implements ConfigTheme {
    private int communityId;
    private NVContext context;
    private final float[] hsv = new float[3];
    private ThemePackService themePack;

    public CommunityTheme(NVContext nVContext, int i) {
        this.context = nVContext;
        this.communityId = i;
        this.themePack = (ThemePackService) nVContext.getService("themePack");
    }

    @Override // com.narvii.config.ConfigTheme
    public int colorPrimary() {
        ThemeInfo themeInfo = this.themePack.getThemeInfo(this.communityId);
        return themeInfo == null ? this.context.getContext().getResources().getColor(R.color.color_default) : themeInfo.themeColor;
    }

    @Override // com.narvii.config.ConfigTheme
    public int colorHighlight() {
        int iColorPrimary = colorPrimary();
        Color.RGBToHSV(Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary), this.hsv);
        float[] fArr = this.hsv;
        fArr[1] = 0.16f;
        fArr[2] = 1.0f;
        return Color.HSVToColor(Color.alpha(iColorPrimary), this.hsv);
    }

    @Override // com.narvii.config.ConfigTheme
    public Drawable actionbarBackground() {
        if (this.themePack.getThemeInfo(this.communityId) != null) {
            int i = this.context.getContext().getResources().getDisplayMetrics().widthPixels;
            int actionBarHeight = Utils.getActionBarHeight(this.context.getContext());
            Drawable drawable = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.TITLEBAR, i, actionBarHeight, true);
            if (drawable != null) {
                return drawable;
            }
            Drawable drawable2 = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.OLDTITLEBAR, i, actionBarHeight);
            if (drawable2 != null) {
                return drawable2;
            }
        }
        return new ColorDrawable(colorPrimary());
    }

    @Override // com.narvii.config.ConfigTheme
    public Drawable logoImage() throws Resources.NotFoundException {
        if (this.themePack.getThemeInfo(this.communityId) == null) {
            return null;
        }
        Drawable drawable = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.LOGO, 0, this.context.getContext().getResources().getDimensionPixelSize(R.dimen.drawer_left_logo_max_height));
        if (drawable != null) {
            return drawable;
        }
        return null;
    }

    @Override // com.narvii.config.ConfigTheme
    public Drawable drawerImage() throws Resources.NotFoundException {
        if (this.themePack.getThemeInfo(this.communityId) != null) {
            Drawable drawable = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.BACKGROUND, this.context.getContext().getResources().getDimensionPixelSize(R.dimen.drawer_left_content_width), this.context.getContext().getResources().getDimensionPixelSize(R.dimen.drawer_left_top_height));
            if (drawable != null) {
                return drawable;
            }
        }
        return new ColorDrawable(colorPrimary());
    }

    @Override // com.narvii.config.ConfigTheme
    public Drawable fakeActionbarBackground() {
        if (this.themePack.getThemeInfo(this.communityId) != null) {
            int i = this.context.getContext().getResources().getDisplayMetrics().widthPixels;
            int actionBarHeight = Utils.getActionBarHeight(this.context.getContext()) + Utils.getStatusBarHeight(this.context.getContext());
            Drawable drawable = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.TITLEBAR, i, actionBarHeight, true);
            if (drawable != null) {
                return drawable;
            }
            Drawable drawable2 = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.OLDTITLEBAR, i, actionBarHeight);
            if (drawable2 != null) {
                return drawable2;
            }
        }
        return new ColorDrawable(colorPrimary());
    }

    @Override // com.narvii.config.ConfigTheme
    public Drawable pageBackground() {
        if (this.themePack.getThemeInfo(this.communityId) == null) {
            return null;
        }
        Drawable drawable = this.themePack.getDrawable(this.communityId, ThemePackService.ThemeObject.TITLEBAR, this.context.getContext().getResources().getDisplayMetrics().widthPixels, this.context.getContext().getResources().getDisplayMetrics().heightPixels);
        if (drawable != null) {
            return drawable;
        }
        return null;
    }
}
