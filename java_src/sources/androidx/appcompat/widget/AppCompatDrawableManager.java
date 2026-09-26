package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String TAG = "AppCompatDrawableManag";
    private ResourceManagerInternal mResourceManager;

    public synchronized Drawable c(@NonNull Context context, @DrawableRes int i10) {
        return this.mResourceManager.j(context, i10);
    }

    synchronized Drawable d(@NonNull Context context, @DrawableRes int i10, boolean z6) {
        return this.mResourceManager.k(context, i10, z6);
    }

    synchronized ColorStateList f(@NonNull Context context, @DrawableRes int i10) {
        return this.mResourceManager.m(context, i10);
    }

    public synchronized void g(@NonNull Context context) {
        this.mResourceManager.s(context);
    }

    public static synchronized AppCompatDrawableManager b() {
        try {
            if (INSTANCE == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        return ResourceManagerInternal.l(i10, mode);
    }

    public static synchronized void h() {
        if (INSTANCE == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            INSTANCE = appCompatDrawableManager;
            appCompatDrawableManager.mResourceManager = ResourceManagerInternal.h();
            INSTANCE.mResourceManager.u(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1
                private final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                private final int[] TINT_COLOR_CONTROL_NORMAL = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                private final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                private final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                private final int[] TINT_COLOR_CONTROL_STATE_LIST = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                private final int[] TINT_CHECKABLE_BUTTON_LIST = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

                private boolean f(int[] iArr, int i10) {
                    for (int i11 : iArr) {
                        if (i11 == i10) {
                            return true;
                        }
                    }
                    return false;
                }

                private ColorStateList g(@NonNull Context context) {
                    return h(context, 0);
                }

                private ColorStateList h(@NonNull Context context, @ColorInt int i10) {
                    int iC = ThemeUtils.c(context, R.attr.colorControlHighlight);
                    return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.b(context, R.attr.colorButtonNormal), ColorUtils.j(iC, i10), ColorUtils.j(iC, i10), i10});
                }

                private ColorStateList k(Context context) {
                    int[][] iArr = new int[3][];
                    int[] iArr2 = new int[3];
                    int i10 = R.attr.colorSwitchThumbNormal;
                    ColorStateList colorStateListE = ThemeUtils.e(context, i10);
                    if (colorStateListE == null || !colorStateListE.isStateful()) {
                        iArr[0] = ThemeUtils.DISABLED_STATE_SET;
                        iArr2[0] = ThemeUtils.b(context, i10);
                        iArr[1] = ThemeUtils.CHECKED_STATE_SET;
                        iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                        iArr[2] = ThemeUtils.EMPTY_STATE_SET;
                        iArr2[2] = ThemeUtils.c(context, i10);
                    } else {
                        int[] iArr3 = ThemeUtils.DISABLED_STATE_SET;
                        iArr[0] = iArr3;
                        iArr2[0] = colorStateListE.getColorForState(iArr3, 0);
                        iArr[1] = ThemeUtils.CHECKED_STATE_SET;
                        iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                        iArr[2] = ThemeUtils.EMPTY_STATE_SET;
                        iArr2[2] = colorStateListE.getDefaultColor();
                    }
                    return new ColorStateList(iArr, iArr2);
                }

                private ColorStateList i(@NonNull Context context) {
                    return h(context, ThemeUtils.c(context, R.attr.colorAccent));
                }

                private ColorStateList j(@NonNull Context context) {
                    return h(context, ThemeUtils.c(context, R.attr.colorButtonNormal));
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public Drawable a(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i10) {
                    if (i10 == R.drawable.abc_cab_background_top_material) {
                        return new LayerDrawable(new Drawable[]{resourceManagerInternal.j(context, R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.j(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
                    }
                    if (i10 == R.drawable.abc_ratingbar_material) {
                        return l(resourceManagerInternal, context, R.dimen.abc_star_big);
                    }
                    if (i10 == R.drawable.abc_ratingbar_indicator_material) {
                        return l(resourceManagerInternal, context, R.dimen.abc_star_medium);
                    }
                    if (i10 == R.drawable.abc_ratingbar_small_material) {
                        return l(resourceManagerInternal, context, R.dimen.abc_star_small);
                    }
                    return null;
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public ColorStateList b(@NonNull Context context, int i10) {
                    if (i10 == R.drawable.abc_edit_text_material) {
                        return AppCompatResources.a(context, R.color.abc_tint_edittext);
                    }
                    if (i10 == R.drawable.abc_switch_track_mtrl_alpha) {
                        return AppCompatResources.a(context, R.color.abc_tint_switch_track);
                    }
                    if (i10 == R.drawable.abc_switch_thumb_material) {
                        return k(context);
                    }
                    if (i10 == R.drawable.abc_btn_default_mtrl_shape) {
                        return j(context);
                    }
                    if (i10 == R.drawable.abc_btn_borderless_material) {
                        return g(context);
                    }
                    if (i10 == R.drawable.abc_btn_colored_material) {
                        return i(context);
                    }
                    if (i10 == R.drawable.abc_spinner_mtrl_am_alpha || i10 == R.drawable.abc_spinner_textfield_background_material) {
                        return AppCompatResources.a(context, R.color.abc_tint_spinner);
                    }
                    if (f(this.TINT_COLOR_CONTROL_NORMAL, i10)) {
                        return ThemeUtils.e(context, R.attr.colorControlNormal);
                    }
                    if (f(this.TINT_COLOR_CONTROL_STATE_LIST, i10)) {
                        return AppCompatResources.a(context, R.color.abc_tint_default);
                    }
                    if (f(this.TINT_CHECKABLE_BUTTON_LIST, i10)) {
                        return AppCompatResources.a(context, R.color.abc_tint_btn_checkable);
                    }
                    if (i10 == R.drawable.abc_seekbar_thumb_material) {
                        return AppCompatResources.a(context, R.color.abc_tint_seek_thumb);
                    }
                    return null;
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public PorterDuff.Mode c(int i10) {
                    if (i10 == R.drawable.abc_switch_thumb_material) {
                        return PorterDuff.Mode.MULTIPLY;
                    }
                    return null;
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public boolean d(@NonNull Context context, int i10, @NonNull Drawable drawable) {
                    if (i10 == R.drawable.abc_seekbar_track_material) {
                        LayerDrawable layerDrawable = (LayerDrawable) drawable;
                        Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                        int i11 = R.attr.colorControlNormal;
                        m(drawableFindDrawableByLayerId, ThemeUtils.c(context, i11), AppCompatDrawableManager.DEFAULT_MODE);
                        m(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.c(context, i11), AppCompatDrawableManager.DEFAULT_MODE);
                        m(layerDrawable.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(context, R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                        return true;
                    }
                    if (i10 != R.drawable.abc_ratingbar_material && i10 != R.drawable.abc_ratingbar_indicator_material && i10 != R.drawable.abc_ratingbar_small_material) {
                        return false;
                    }
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    m(layerDrawable2.findDrawableByLayerId(android.R.id.background), ThemeUtils.b(context, R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                    Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress);
                    int i12 = R.attr.colorControlActivated;
                    m(drawableFindDrawableByLayerId2, ThemeUtils.c(context, i12), AppCompatDrawableManager.DEFAULT_MODE);
                    m(layerDrawable2.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(context, i12), AppCompatDrawableManager.DEFAULT_MODE);
                    return true;
                }

                private LayerDrawable l(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DimenRes int i10) {
                    BitmapDrawable bitmapDrawable;
                    BitmapDrawable bitmapDrawable2;
                    BitmapDrawable bitmapDrawable3;
                    int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
                    Drawable drawableJ = resourceManagerInternal.j(context, R.drawable.abc_star_black_48dp);
                    Drawable drawableJ2 = resourceManagerInternal.j(context, R.drawable.abc_star_half_black_48dp);
                    if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                        bitmapDrawable = (BitmapDrawable) drawableJ;
                        bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
                    } else {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                        drawableJ.draw(canvas);
                        bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                        bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
                    }
                    bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
                    if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                        bitmapDrawable3 = (BitmapDrawable) drawableJ2;
                    } else {
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                        drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                        drawableJ2.draw(canvas2);
                        bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
                    }
                    LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
                    layerDrawable.setId(0, android.R.id.background);
                    layerDrawable.setId(1, android.R.id.secondaryProgress);
                    layerDrawable.setId(2, android.R.id.progress);
                    return layerDrawable;
                }

                private void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
                    if (DrawableUtils.a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    if (mode == null) {
                        mode = AppCompatDrawableManager.DEFAULT_MODE;
                    }
                    drawable.setColorFilter(AppCompatDrawableManager.e(i10, mode));
                }

                /* JADX WARN: Code duplicated, block: B:22:0x0051  */
                /* JADX WARN: Code duplicated, block: B:24:0x0057  */
                /* JADX WARN: Code duplicated, block: B:27:0x0068  */
                /* JADX WARN: Code duplicated, block: B:29:0x006c A[RETURN] */
                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public boolean e(@NonNull Context context, int i10, @NonNull Drawable drawable) {
                    int i11;
                    boolean z6;
                    int iRound;
                    PorterDuff.Mode mode = AppCompatDrawableManager.DEFAULT_MODE;
                    if (f(this.COLORFILTER_TINT_COLOR_CONTROL_NORMAL, i10)) {
                        i11 = R.attr.colorControlNormal;
                    } else {
                        if (f(this.COLORFILTER_COLOR_CONTROL_ACTIVATED, i10)) {
                            i11 = R.attr.colorControlActivated;
                        } else {
                            if (f(this.COLORFILTER_COLOR_BACKGROUND_MULTIPLY, i10)) {
                                mode = PorterDuff.Mode.MULTIPLY;
                            } else if (i10 == R.drawable.abc_list_divider_mtrl_alpha) {
                                z6 = true;
                                iRound = Math.round(40.8f);
                                i11 = 16842800;
                                mode = mode;
                            } else if (i10 != R.drawable.abc_dialog_material_background) {
                                i11 = 0;
                                z6 = false;
                                iRound = -1;
                            }
                            mode = mode;
                            iRound = -1;
                            i11 = 16842801;
                            z6 = true;
                        }
                        if (z6) {
                            return false;
                        }
                        if (DrawableUtils.a(drawable)) {
                            drawable = drawable.mutate();
                        }
                        drawable.setColorFilter(AppCompatDrawableManager.e(ThemeUtils.c(context, i11), mode));
                        if (iRound != -1) {
                            drawable.setAlpha(iRound);
                        }
                        return true;
                    }
                    z6 = true;
                    iRound = -1;
                    if (z6) {
                        return false;
                    }
                    if (DrawableUtils.a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(AppCompatDrawableManager.e(ThemeUtils.c(context, i11), mode));
                    if (iRound != -1) {
                        drawable.setAlpha(iRound);
                    }
                    return true;
                }
            });
        }
    }

    static void i(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.w(drawable, tintInfo, iArr);
    }
}
