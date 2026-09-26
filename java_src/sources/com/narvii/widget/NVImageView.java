package com.narvii.widget;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.drawables.webp.NVWebPDrawable;
import com.narvii.util.drawables.webp.WebPLoader;
import com.narvii.util.drawables.webp.WrapWebPDrawable;
import com.narvii.util.image.NVImageLoader;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class NVImageView extends AppCompatImageView implements ImageLoader.ImageListener {
    public static final int CORNER_BOTTOM_LEFT = 8;
    public static final int CORNER_BOTTOM_RIGHT = 4;
    public static final int CORNER_TOP_LEFT = 1;
    public static final int CORNER_TOP_RIGHT = 2;
    public static final int STATUS_EMPTY = 3;
    public static final int STATUS_ERROR = 2;
    public static final int STATUS_FINISHED = 4;
    public static final int STATUS_LOADING = 1;
    public static final String TYPE_CHAT_BACKGROUND = "chat-background";
    public static final String TYPE_CHAT_COVER = "chat-cover";
    public static final String TYPE_CHAT_MESSAGE = "chat-message";
    public static final String TYPE_COMMUNITY_ICON = "community-icon";
    public static final String TYPE_COMMUNITY_LAUNCH_IMAGE = "community-launch-image";
    public static final String TYPE_FULLSCREEN_BACKGROUND_IMAGE = "fullscreen-background-image";
    public static final String TYPE_LEADERBOARD_BACKGROUND_IMAGE = "leaderboard-background-image";
    public static final String TYPE_P2A_AVATAR = "p2a-avatar";
    public static final String TYPE_POST_BACKGROUND = "post-background";
    public static final String TYPE_SHARED_FOLDER_IMAGE = "shared-folder-image";
    public static final String TYPE_STICKER = "sticker";
    public static final String TYPE_STORY_COVER = "story-cover";
    static int defaultShadowColor;
    private static int displaySize;
    private static int memoryClass;
    private static ColorFilter monochromeFilter;
    static int pressedMaskColor;
    static Paint pressedMaskPaint;
    static RectF ytBgMaskRect;
    static Paint ytBgPaint;
    static int ytMaxSize;
    static int ytMinSize;
    static Paint ytPaint;
    static String ytSymbol;
    private WeakReference<Bitmap> bitmapRef;
    private BitmapShader bitmapShader;
    ImageLoader.ImageContainer container;
    public int cornerMask;
    public int cornerRadius;
    public Drawable defaultDrawable;
    public int defaultDrawableId;
    private DrawableLoaderListener drawableLoaderListener;
    public Drawable errorDrawable;
    public int errorDrawableId;
    private boolean fixStroke;
    public boolean forceShowPlayButton;
    private GifLoader gifLoader;
    public int groundingColor;
    private Paint groundingColorPaint;
    private boolean hasGroundingColor;
    public boolean hidePlayButton;
    private ImageLoader imageLoader;
    boolean imageRetrieve;
    public String imageType;
    private OnImageChangedListener listener;
    public Drawable loadingDrawable;
    public int loadingDrawableId;
    private int loopCount;
    private boolean makeWebpRtl;
    private Matrix matrix;
    public float maxHeightPercentage;
    protected Media media;
    public boolean monochrome;
    private final Runnable onErrorRunnable;
    private final Runnable onResponseRunnable;
    private final Paint paint;
    private Path path;
    ImageView.ScaleType placeholderSavedScaleType;
    private float[] radii;
    private final RectF rect;
    protected String requestUrl;
    public boolean scalePlaceholder;
    boolean showPressedMask;
    protected int status;
    public int strokeColor;
    public float strokeWidth;
    protected boolean visible;
    private WebPLoader webpLoader;
    private Bitmap ytBitmap;
    private RectF ytRectF;

    private class DrawableListener implements DrawableLoaderListener {
        private DrawableListener() {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
            if (Utils.isEqualsNotNull(str, NVImageView.this.requestUrl)) {
                NVImageView.this.setImageStatus(2, true);
            }
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z6) {
            if (Utils.isEqualsNotNull(str, NVImageView.this.requestUrl)) {
                NVImageView.this.setImageDrawable(drawable, 4);
            }
        }
    }

    public interface OnImageChangedListener {
        void onImageChanged(NVImageView nVImageView, int i10, Media media);
    }

    public interface OnShareButtonClickedListener {
        void onShareButtonClicked(NVImageView nVImageView);
    }

    public NVImageView(Context context) {
        this(context, null, 0);
    }

    private void drawRoundRect(Canvas canvas, RectF rectF, float f, int i10, Paint paint) {
        if (f > 0.0f && i10 == 0) {
            canvas.drawRoundRect(rectF, f, f, paint);
            return;
        }
        if (f <= 0.0f) {
            canvas.drawRect(rectF, paint);
            return;
        }
        Path path = this.path;
        if (path == null) {
            this.path = new Path();
        } else {
            path.reset();
        }
        drawRoundPath(this.path, rectF, f, i10);
        canvas.drawPath(this.path, paint);
    }

    /* JADX WARN: Code duplicated, block: B:90:0x0112  */
    public static String fitSize(String str, String str2, int i10, int i11) {
        int i12 = i10 > i11 ? i10 : i11;
        if (TextUtils.isEmpty(str2)) {
            if (isGif(str)) {
                if (i12 > 480) {
                    return replaceUrl(str, "hq");
                }
                if (i12 > 192) {
                    return str;
                }
                return i12 > 96 ? replaceUrl(str, "128") : replaceUrl(str, "68");
            }
            if (i12 > 768) {
                return replaceUrl(str, "hq");
            }
            if (i12 > 192) {
                return str;
            }
            return i12 > 96 ? replaceUrl(str, "128") : replaceUrl(str, "68");
        }
        if (TYPE_CHAT_COVER.equals(str2)) {
            if (isGif(str)) {
                return i12 > 192 ? str : replaceUrl(str, "128");
            }
            return i12 > 192 ? str : replaceUrl(str, "128");
        }
        if (TYPE_CHAT_MESSAGE.equals(str2)) {
            if (isGif(str)) {
                return i12 > 480 ? replaceUrl(str, "hq") : str;
            }
            return i12 > 768 ? replaceUrl(str, "hq") : str;
        }
        if (TYPE_CHAT_BACKGROUND.equals(str2)) {
            return str;
        }
        if (TYPE_COMMUNITY_ICON.equals(str2)) {
            if (i12 <= 180) {
                return replaceUrl(str, "120");
            }
            return i12 <= 270 ? replaceUrl(str, "180") : str;
        }
        String str3 = "375";
        if (TYPE_COMMUNITY_LAUNCH_IMAGE.equals(str2)) {
            if (i10 > 375 || i11 > 667) {
                return str;
            }
            return (i10 > 188 || i11 > 335) ? replaceUrl(str, "375") : replaceUrl(str, "188");
        }
        if (TYPE_FULLSCREEN_BACKGROUND_IMAGE.equals(str2)) {
            if (displaySize == 0) {
                DisplayMetrics displayMetrics = NVApplication.instance().getResources().getDisplayMetrics();
                displaySize = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            if (memoryClass == 0) {
                memoryClass = ((ActivityManager) NVApplication.instance().getSystemService("activity")).getMemoryClass();
            }
            int i13 = displaySize;
            if (i13 <= 400) {
                str3 = "188";
            } else if (i13 <= 800) {
                if (memoryClass < 48) {
                    str3 = "188";
                }
            } else if (memoryClass >= 64) {
                str3 = null;
            }
            return str3 != null ? replaceUrl(str, str3) : str;
        }
        if (TYPE_SHARED_FOLDER_IMAGE.equals(str2)) {
            if (isGif(str)) {
                if (i12 > 480) {
                    return replaceUrl(str, "hq");
                }
                return i12 < 300 ? replaceUrl(str, "280") : str;
            }
            if (i12 > 1200) {
                return replaceUrl(str, "hq");
            }
            return i12 < 480 ? replaceUrl(str, "280") : str;
        }
        if ("sticker".equals(str2)) {
            if (i12 <= 100) {
                return replaceUrl(str, "50");
            }
            return i12 <= 200 ? replaceUrl(str, "120") : str;
        }
        if (TYPE_STORY_COVER.equals(str2)) {
            return i12 >= 1100 ? replaceUrl(str, "hq") : str;
        }
        Log.w("unknown image type " + str2);
        return str;
    }

    protected void _setImageDrawable(Drawable drawable) {
        this.bitmapShader = null;
        this.bitmapRef = null;
        super.setImageDrawable(drawable);
    }

    protected int getImageRequestHeight(int i10) {
        return i10;
    }

    protected int getImageRequestWidth(int i10) {
        return i10;
    }

    public Media getMedia() {
        return this.media;
    }

    protected String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        if (media == null) {
            return null;
        }
        String str = media.coverImage;
        if (str == null) {
            str = media.url;
        }
        if (!isGif(str) && !isWebP(str)) {
            String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str);
            return youtubeVideoIdFromUrl != null ? YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl) : str;
        }
        if (z6) {
            return str;
        }
        return null;
    }

    public int getStatus() {
        return this.status;
    }

    public boolean isMonochrome() {
        return this.monochrome;
    }

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (Utils.isGif(str)) {
            if (getGifLoader() == null) {
                return false;
            }
            return getGifLoader().isUrlCached(str);
        }
        if (Utils.isWebP(str)) {
            if (getWebPLoader() == null) {
                return false;
            }
            return getWebPLoader().isUrlCached(str);
        }
        if (getImageLoader() instanceof NVImageLoader) {
            return ((NVImageLoader) getImageLoader()).isUrlCached(str);
        }
        return false;
    }

    public void makeWebpRtl(boolean z6) {
        this.makeWebpRtl = z6;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:26:0x009d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapDraw;
        float f;
        float f6;
        float f7;
        if (!this.visible && isShown()) {
            this.visible = true;
            if (this.media != null && this.requestUrl == null) {
                require();
            }
        }
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(Math.min(width / 2, height / 2), this.cornerRadius);
        if (this.cornerRadius != 0 || this.monochrome) {
            Drawable drawable = getDrawable();
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap() != null) {
                    bitmapDraw = bitmapDrawable.getBitmap();
                } else if (drawable instanceof WrapGifDrawable) {
                    bitmapDraw = ((WrapGifDrawable) drawable).draw();
                } else if (drawable instanceof NVGifDrawable) {
                    bitmapDraw = ((NVGifDrawable) drawable).draw();
                } else if (drawable instanceof WrapWebPDrawable) {
                    bitmapDraw = ((WrapWebPDrawable) drawable).draw();
                } else if (drawable instanceof NVWebPDrawable) {
                    bitmapDraw = ((NVWebPDrawable) drawable).draw();
                } else {
                    bitmapDraw = null;
                }
            } else if (drawable instanceof WrapGifDrawable) {
                bitmapDraw = ((WrapGifDrawable) drawable).draw();
            } else if (drawable instanceof NVGifDrawable) {
                bitmapDraw = ((NVGifDrawable) drawable).draw();
            } else if (drawable instanceof WrapWebPDrawable) {
                bitmapDraw = ((WrapWebPDrawable) drawable).draw();
            } else if (drawable instanceof NVWebPDrawable) {
                bitmapDraw = ((NVWebPDrawable) drawable).draw();
            } else {
                bitmapDraw = null;
            }
            if (bitmapDraw != null) {
                this.paint.reset();
                this.paint.setAntiAlias(true);
                this.paint.setFilterBitmap(true);
                this.paint.setStyle(Paint.Style.FILL);
                if (this.monochrome) {
                    this.paint.setColorFilter(getMonochromeFilter());
                } else {
                    this.paint.setColorFilter(null);
                }
                int width2 = bitmapDraw.getWidth();
                int height2 = bitmapDraw.getHeight();
                if (width2 * height > width * height2) {
                    f = height / height2;
                    f7 = (width - (width2 * f)) * 0.5f;
                    f6 = 0.0f;
                } else {
                    f = width / width2;
                    f6 = (height - (height2 * f)) * 0.5f;
                    f7 = 0.0f;
                }
                if (this.matrix == null) {
                    this.matrix = new Matrix();
                }
                this.matrix.setScale(f, f);
                this.matrix.postTranslate((int) (f7 + 0.5f), (int) (f6 + 0.5f));
                if (this.bitmapShader != null) {
                    WeakReference<Bitmap> weakReference = this.bitmapRef;
                    if ((weakReference == null ? null : weakReference.get()) != bitmapDraw) {
                        this.bitmapShader = null;
                    }
                }
                if (this.bitmapShader == null) {
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    this.bitmapShader = new BitmapShader(bitmapDraw, tileMode, tileMode);
                    this.bitmapRef = new WeakReference<>(bitmapDraw);
                }
                this.bitmapShader.setLocalMatrix(this.matrix);
                this.paint.setShader(this.bitmapShader);
                RectF rectF = this.rect;
                rectF.left = 0.0f;
                rectF.top = 0.0f;
                rectF.right = width;
                rectF.bottom = height;
                canvas.save();
                canvas.translate(getPaddingLeft(), getPaddingTop());
                float f10 = iMin;
                drawGroundingColor(canvas, this.rect, f10, this.cornerMask);
                drawRoundRect(canvas, this.rect, f10, this.cornerMask, this.paint);
                canvas.restore();
            } else if (drawable instanceof ColorDrawable) {
                this.paint.reset();
                this.paint.setAntiAlias(true);
                this.paint.setStyle(Paint.Style.FILL);
                this.paint.setColor(((ColorDrawable) drawable).getColor());
                this.paint.setShader(null);
                this.paint.setColorFilter(null);
                this.rect.left = getPaddingLeft();
                this.rect.top = getPaddingTop();
                RectF rectF2 = this.rect;
                rectF2.right = rectF2.left + width;
                rectF2.bottom = rectF2.top + height;
                float f11 = iMin;
                drawGroundingColor(canvas, rectF2, f11, this.cornerMask);
                drawRoundRect(canvas, this.rect, f11, this.cornerMask, this.paint);
            } else {
                if (this.hasGroundingColor) {
                    drawGroundingColor(canvas, this.rect, iMin, this.cornerMask);
                }
                super.onDraw(canvas);
            }
        } else {
            int iSave = canvas.save();
            canvas.clipRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            if (this.hasGroundingColor) {
                canvas.drawColor(this.groundingColor);
            }
            super.onDraw(canvas);
            canvas.restoreToCount(iSave);
        }
        if (!this.hidePlayButton && ((isVideo(this.media) || this.forceShowPlayButton) && width > 0 && height > 0)) {
            if (ytBgPaint == null) {
                Paint paint = new Paint();
                ytBgPaint = paint;
                paint.setAntiAlias(true);
                ytBgPaint.setColor(Color.parseColor("#22000000"));
            }
            if (ytBgMaskRect == null) {
                ytBgMaskRect = new RectF();
            }
            ytBgMaskRect.set(0.0f, 0.0f, getWidth(), getHeight());
            RectF rectF3 = ytBgMaskRect;
            int i10 = this.cornerRadius;
            canvas.drawRoundRect(rectF3, i10, i10, ytBgPaint);
            if (ytPaint == null) {
                Paint paint2 = new Paint();
                ytPaint = paint2;
                paint2.setAntiAlias(true);
                ytPaint.setFlags(2);
                ytSymbol = getContext().getString(R.string.fa_play);
                ytMinSize = getResources().getDimensionPixelSize(R.dimen.video_play_min_size);
                ytMaxSize = getResources().getDimensionPixelSize(R.dimen.video_play_max_size);
            }
            if (this.ytBitmap == null) {
                this.ytBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_sr_media_play);
                this.ytRectF = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
            }
            int i11 = (int) ((height < width ? height : width) * 0.75f);
            int i12 = ytMinSize;
            if (i11 < i12) {
                i11 = i12;
            }
            int i13 = ytMaxSize;
            if (i11 > i13) {
                i11 = i13;
            }
            this.ytRectF.set((width - i11) >> 1, (height - i11) >> 1, (width + i11) >> 1, (i11 + height) >> 1);
            canvas.drawBitmap(this.ytBitmap, (Rect) null, this.ytRectF, ytPaint);
        }
        if (this.strokeWidth > 0.0f) {
            this.paint.reset();
            this.paint.setAntiAlias(true);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(this.strokeWidth);
            this.paint.setColor(this.strokeColor);
            this.paint.setShader(null);
            this.paint.setColorFilter(null);
            float f12 = this.fixStroke ? this.strokeWidth / 2.0f : 0.0f;
            this.rect.left = getPaddingLeft() + f12;
            this.rect.top = getPaddingTop() + f12;
            RectF rectF4 = this.rect;
            float f13 = f12 * 2.0f;
            rectF4.right = (rectF4.left + width) - f13;
            rectF4.bottom = (rectF4.top + height) - f13;
            drawRoundRect(canvas, rectF4, iMin, this.cornerMask, this.paint);
        }
        boolean z6 = false;
        for (int i14 : getDrawableState()) {
            if (i14 == 16842919) {
                z6 = true;
            }
        }
        if (this.showPressedMask && z6) {
            if (pressedMaskPaint == null) {
                pressedMaskColor = getResources().getColor(R.color.mask_pressed);
                Paint paint3 = new Paint();
                pressedMaskPaint = paint3;
                paint3.setStyle(Paint.Style.FILL);
                pressedMaskPaint.setColor(pressedMaskColor);
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            if (iMin <= 0) {
                canvas.drawRect(paddingLeft, paddingTop, paddingLeft + width, paddingTop + height, pressedMaskPaint);
                return;
            }
            RectF rectF5 = this.rect;
            float f14 = paddingLeft;
            rectF5.left = f14;
            float f15 = paddingTop;
            rectF5.top = f15;
            float f16 = paddingLeft + width;
            rectF5.right = f16;
            float f17 = paddingTop + height;
            rectF5.bottom = f17;
            float f18 = this.fixStroke ? 0.0f : this.strokeWidth / 2.0f;
            if (this.strokeWidth > 0.0f) {
                rectF5.left = f14 - f18;
                rectF5.right = f16 + f18;
                rectF5.top = f15 - f18;
                rectF5.bottom = f17 + f18;
                iMin = (int) (iMin + f18);
            }
            drawRoundRect(canvas, rectF5, iMin, this.cornerMask, pressedMaskPaint);
        }
    }

    protected void setImageDrawable(Drawable drawable, int i10) {
        String str;
        if (i10 == 4 && (str = this.requestUrl) != null) {
            CrashlyticsUtils.images.add(str);
        }
        setImageStatus(i10, false);
        _setImageDrawable(drawable);
        this.imageRetrieve = i10 == 4;
        dispatchImageChanged(i10, this.media);
    }

    public void setOnImageChangedListener(OnImageChangedListener onImageChangedListener) {
        this.listener = onImageChangedListener;
    }

    public void setShowPressedMask(boolean z6) {
        this.showPressedMask = z6;
    }

    public NVImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void drawGroundingColor(Canvas canvas, RectF rectF, float f, int i10) {
        if (this.hasGroundingColor) {
            drawRoundRect(canvas, rectF, f, i10, this.groundingColorPaint);
        }
    }

    private void drawRoundPath(Path path, RectF rectF, float f, int i10) {
        if (this.radii == null) {
            this.radii = new float[8];
        }
        if ((i10 & 1) != 0) {
            float[] fArr = this.radii;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
        } else {
            float[] fArr2 = this.radii;
            fArr2[0] = f;
            fArr2[1] = f;
        }
        if ((i10 & 2) != 0) {
            float[] fArr3 = this.radii;
            fArr3[2] = 0.0f;
            fArr3[3] = 0.0f;
        } else {
            float[] fArr4 = this.radii;
            fArr4[2] = f;
            fArr4[3] = f;
        }
        if ((i10 & 4) != 0) {
            float[] fArr5 = this.radii;
            fArr5[4] = 0.0f;
            fArr5[5] = 0.0f;
        } else {
            float[] fArr6 = this.radii;
            fArr6[4] = f;
            fArr6[5] = f;
        }
        if ((i10 & 8) != 0) {
            float[] fArr7 = this.radii;
            fArr7[6] = 0.0f;
            fArr7[7] = 0.0f;
        } else {
            float[] fArr8 = this.radii;
            fArr8[6] = f;
            fArr8[7] = f;
        }
        path.addRoundRect(rectF, this.radii, Path.Direction.CCW);
    }

    private ColorFilter getMonochromeFilter() {
        if (monochromeFilter == null) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            monochromeFilter = new ColorMatrixColorFilter(colorMatrix);
        }
        return monochromeFilter;
    }

    private void innerSetGroundingColor() {
        if (this.groundingColor != -1) {
            this.hasGroundingColor = true;
            Paint paint = new Paint();
            this.groundingColorPaint = paint;
            paint.setAntiAlias(true);
            this.groundingColorPaint.setColor(this.groundingColor);
            this.groundingColorPaint.setStyle(Paint.Style.FILL);
        }
    }

    private boolean isVideo(Media media) {
        int i10;
        return media != null && ((i10 = media.type) == 102 || i10 == 123 || YoutubeUtils.getYoutubeVideoIdFromUrl(media.url) != null);
    }

    public static String replaceUrl(String str, String str2) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf("_00.");
        if (iIndexOf <= 0) {
            return str;
        }
        return str.substring(0, iIndexOf + 1) + str2 + str.substring(iIndexOf + 3);
    }

    public static String replaceVideoCoverUrl(String str, String str2) {
        int iIndexOf = str.indexOf("_raw.");
        if (iIndexOf <= 0) {
            return str;
        }
        return str.substring(0, iIndexOf + 1) + str2 + str.substring(iIndexOf + 4);
    }

    protected void discard() {
        ImageLoader.ImageContainer imageContainer = this.container;
        if (imageContainer != null && Utils.isEquals(imageContainer.getRequestUrl(), this.requestUrl)) {
            this.container.cancelRequest();
            this.container = null;
            this.requestUrl = null;
            this.imageRetrieve = false;
        }
        String str = this.requestUrl;
        if (str == null || this.drawableLoaderListener == null) {
            return;
        }
        if (isGif(str)) {
            getGifLoader().abort(this.requestUrl, this.drawableLoaderListener);
            this.requestUrl = null;
            this.imageRetrieve = false;
        } else if (isWebP(this.requestUrl)) {
            getWebPLoader().abort(this.requestUrl, this.drawableLoaderListener);
            this.requestUrl = null;
            this.imageRetrieve = false;
        }
    }

    protected void dispatchImageChanged(int i10, Media media) {
        OnImageChangedListener onImageChangedListener = this.listener;
        if (onImageChangedListener != null) {
            onImageChangedListener.onImageChanged(this, i10, media);
        }
    }

    protected int getFixedHeight(int i10) {
        int screenHeight;
        float f = this.maxHeightPercentage;
        return (f <= 0.0f || f >= 1.0f || i10 <= (screenHeight = (int) ((((float) Utils.getScreenHeight(getContext())) * this.maxHeightPercentage) + 0.5f))) ? i10 : screenHeight;
    }

    public GifLoader getGifLoader() {
        NVContext nVContext;
        if (this.gifLoader == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.gifLoader = (GifLoader) nVContext.getService("gifLoader");
        }
        GifLoader gifLoader = this.gifLoader;
        return gifLoader == null ? (GifLoader) NVApplication.instance().getService("gifLoader") : gifLoader;
    }

    public ImageLoader getImageLoader() {
        NVContext nVContext;
        if (this.imageLoader == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.imageLoader = (ImageLoader) nVContext.getService("imageLoader");
        }
        ImageLoader imageLoader = this.imageLoader;
        if (imageLoader != null) {
            return imageLoader;
        }
        Log.e("unable to get a thumbImageLoader in context " + getContext());
        return (ImageLoader) NVApplication.instance().getService("imageLoader");
    }

    public WebPLoader getWebPLoader() {
        NVContext nVContext;
        if (this.webpLoader == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.webpLoader = (WebPLoader) nVContext.getService("webpLoader");
        }
        WebPLoader webPLoader = this.webpLoader;
        return webPLoader == null ? (WebPLoader) NVApplication.instance().getService("webpLoader") : webPLoader;
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        Utils.post(this.onErrorRunnable);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageListener
    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
        if (!z6) {
            this.container = imageContainer;
            Utils.post(this.onResponseRunnable);
        } else if (imageContainer.getBitmap() != null) {
            setImageDrawable(new BitmapDrawable(getResources(), imageContainer.getBitmap()), 4);
        }
    }

    protected boolean require() {
        Media media = this.media;
        if (media == null) {
            this.imageRetrieve = true;
            setImageStatus(3, true);
            return true;
        }
        if (media == null || this.requestUrl != null) {
            return false;
        }
        setImageStatus(1, true);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int i10 = width < 0 ? 0 : width;
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int i11 = height < 0 ? 0 : height;
        String requestUrl = getRequestUrl(this.media, this.visible, i10, i11);
        if (requestUrl == null) {
            return false;
        }
        this.requestUrl = requestUrl;
        this.imageRetrieve = false;
        if (isGif(requestUrl)) {
            if (this.drawableLoaderListener == null) {
                this.drawableLoaderListener = new DrawableListener();
            }
            getGifLoader().request(requestUrl, this.drawableLoaderListener);
        } else if (isWebP(requestUrl)) {
            if (this.drawableLoaderListener == null) {
                this.drawableLoaderListener = new DrawableListener();
            }
            getWebPLoader().request(requestUrl, this.drawableLoaderListener, i10, i11, this.makeWebpRtl, this.loopCount);
        } else {
            this.container = getImageLoader().get(requestUrl, this, getImageRequestWidth(i10), getImageRequestHeight(i11));
        }
        return true;
    }

    public void setCornerMask(int i10) {
        if (this.cornerMask == i10) {
            return;
        }
        this.cornerMask = i10;
        invalidate();
    }

    public void setCornerRadius(int i10) {
        this.cornerRadius = i10;
        invalidate();
    }

    public void setDefaultDrawable(Drawable drawable) {
        this.defaultDrawable = drawable;
        invalidate();
    }

    public void setErrorDrawable(Drawable drawable) {
        this.errorDrawable = drawable;
        invalidate();
    }

    public void setFixStroke(boolean z6) {
        this.fixStroke = z6;
        invalidate();
    }

    public void setGroundingColor(@ColorInt int i10) {
        this.groundingColor = i10;
        innerSetGroundingColor();
        invalidate();
    }

    public boolean setImageMedia(Media media) {
        if (Utils.isEquals(media, this.media)) {
            int i10 = (media != null || (this.defaultDrawable == null && this.defaultDrawableId == 0)) ? this.status : 3;
            this.status = 0;
            this.media = media;
            setImageStatus(i10, false);
            return false;
        }
        discard();
        this.media = media;
        this.requestUrl = null;
        this.imageRetrieve = false;
        require();
        return true;
    }

    protected void setImageStatus(int i10, boolean z6) {
        int i11;
        int i12;
        int i13;
        int i14;
        ImageView.ScaleType scaleType;
        if (i10 != this.status) {
            this.status = i10;
            if (i10 == 1) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (this.hidePlayButton || !isVideo(this.media)) {
                    if (this.loadingDrawable == null && (i12 = this.loadingDrawableId) != 0) {
                        this.loadingDrawable = safeGetDrawable(i12);
                    }
                    Drawable drawable = this.loadingDrawable;
                    if (drawable != null) {
                        _setImageDrawable(drawable);
                    } else {
                        if (this.defaultDrawable == null && (i11 = this.defaultDrawableId) != 0) {
                            this.defaultDrawable = safeGetDrawable(i11);
                        }
                        _setImageDrawable(this.defaultDrawable);
                    }
                } else {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                }
            } else if (i10 == 2) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (this.hidePlayButton || !isVideo(this.media)) {
                    if (this.errorDrawable == null && (i13 = this.errorDrawableId) != 0) {
                        this.errorDrawable = safeGetDrawable(i13);
                    }
                    Drawable drawable2 = this.errorDrawable;
                    if (drawable2 != null) {
                        _setImageDrawable(drawable2);
                    }
                } else {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                }
            } else if (i10 == 3) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (this.hidePlayButton || !isVideo(this.media)) {
                    if (this.defaultDrawable == null && (i14 = this.defaultDrawableId) != 0) {
                        this.defaultDrawable = safeGetDrawable(i14);
                    }
                    _setImageDrawable(this.defaultDrawable);
                } else {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                }
            } else if (i10 == 4 && (scaleType = this.placeholderSavedScaleType) != null) {
                setScaleType(scaleType);
                this.placeholderSavedScaleType = null;
            }
            if (z6) {
                dispatchImageChanged(i10, this.media);
            }
        }
    }

    public void setLoadingDrawable(Drawable drawable) {
        this.loadingDrawable = drawable;
        invalidate();
    }

    public void setMonochrome(boolean z6) {
        if (this.monochrome != z6) {
            this.monochrome = z6;
            invalidate();
        }
    }

    public void setStrokeColor(int i10) {
        this.strokeColor = i10;
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        invalidate();
    }

    public NVImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.makeWebpRtl = false;
        this.groundingColorPaint = null;
        this.onResponseRunnable = new Runnable() { // from class: com.narvii.widget.NVImageView.1
            @Override // java.lang.Runnable
            public void run() {
                ImageLoader.ImageContainer imageContainer = NVImageView.this.container;
                if (imageContainer == null || !Utils.isEquals(imageContainer.getRequestUrl(), NVImageView.this.requestUrl)) {
                    return;
                }
                Bitmap bitmap = NVImageView.this.container.getBitmap();
                if (bitmap == null) {
                    NVImageView.this.setImageStatus(2, true);
                } else {
                    NVImageView.this.setImageDrawable(new BitmapDrawable(NVImageView.this.getResources(), bitmap), 4);
                }
            }
        };
        this.onErrorRunnable = new Runnable() { // from class: com.narvii.widget.NVImageView.2
            @Override // java.lang.Runnable
            public void run() {
                NVImageView nVImageView = NVImageView.this;
                if (nVImageView.requestUrl == null || nVImageView.imageRetrieve) {
                    return;
                }
                nVImageView.setImageStatus(2, true);
                NVImageView.this.imageRetrieve = true;
            }
        };
        if (defaultShadowColor == 0) {
            defaultShadowColor = context.getResources().getColor(R.color.shadow);
        }
        this.rect = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVImageView, i10, 0);
        this.cornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVImageView_cornerRadius, 0);
        this.cornerMask = typedArrayObtainStyledAttributes.getInteger(R.styleable.NVImageView_cornerMask, 0);
        this.monochrome = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVImageView_monochrome, false);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.NVImageView_strokeWidth, 0.0f);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.NVImageView_strokeColor, defaultShadowColor);
        this.groundingColor = typedArrayObtainStyledAttributes.getColor(R.styleable.NVImageView_groundingColor, -1);
        this.maxHeightPercentage = typedArrayObtainStyledAttributes.getFloat(R.styleable.NVImageView_maxHeightPercentage, 1.0f);
        this.showPressedMask = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVImageView_showPressedMask, true);
        this.loopCount = typedArrayObtainStyledAttributes.getInt(R.styleable.NVImageView_loopCount, 0);
        this.defaultDrawableId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVImageView_defaultDrawable, 0);
        this.loadingDrawableId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVImageView_loadingDrawable, 0);
        this.errorDrawableId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVImageView_errorDrawable, 0);
        this.scalePlaceholder = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVImageView_scalePlaceholder, false);
        this.hidePlayButton = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVImageView_hidePlayButton, false);
        this.imageType = typedArrayObtainStyledAttributes.getString(R.styleable.NVImageView_imageType);
        typedArrayObtainStyledAttributes.recycle();
        innerSetGroundingColor();
        this.visible = getVisibility() == 0;
    }

    public static boolean isGif(String str) {
        return Utils.isGif(str);
    }

    public static boolean isWebP(String str) {
        return Utils.isWebP(str);
    }

    private Drawable safeGetDrawable(int i10) {
        try {
            return getResources().getDrawable(i10);
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public void innerSetMeasuredDimension(int i10, int i11) {
        setMeasuredDimension(i10, i11);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (this.media != null && this.requestUrl == null) {
            require();
        }
        if (!this.imageRetrieve && getDrawable() == null) {
            if (this.defaultDrawable != null || this.defaultDrawableId != 0) {
                setImageStatus(3, true);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredHeight;
        int fixedHeight;
        super.onMeasure(i10, i11);
        float f = this.maxHeightPercentage;
        if (f > 0.0f && f < 1.0f && measuredHeight != (fixedHeight = getFixedHeight((measuredHeight = getMeasuredHeight())))) {
            setMeasuredDimension(getMeasuredWidth(), fixedHeight);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        boolean z6;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.visible = z6;
        Media media = this.media;
        if (media != null && this.requestUrl == null) {
            require();
        } else if (!z6 && this.requestUrl != null && !this.imageRetrieve && getRequestUrl(media, z6, getWidth(), getHeight()) == null) {
            discard();
        }
    }

    public final boolean setImageUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return setImageMedia(null);
        }
        Media media = new Media();
        media.url = str;
        return setImageMedia(media);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        discard();
        this.media = null;
        setImageDrawable(drawable, 4);
    }
}
