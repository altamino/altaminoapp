package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
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
import com.narvii.util.drawables.webp.WebPLoader;
import com.narvii.util.image.NVImageLoader;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class NVImageView extends ImageView implements ImageLoader.ImageListener {
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
    public static final String TYPE_STORY_VIDEO = "story";
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

    /* loaded from: classes3.dex */
    public interface OnImageChangedListener {
        void onImageChanged(NVImageView nVImageView, int i, Media media);
    }

    /* loaded from: classes3.dex */
    public interface OnShareButtonClickedListener {
        void onShareButtonClicked(NVImageView nVImageView);
    }

    protected int getImageRequestHeight(int i) {
        return i;
    }

    protected int getImageRequestWidth(int i) {
        return i;
    }

    public NVImageView(Context context) {
        this(context, null, 0);
    }

    public NVImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
                    NVImageView nVImageView = NVImageView.this;
                    nVImageView.setImageDrawable(new BitmapDrawable(nVImageView.getResources(), bitmap), 4);
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
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVImageView, i, 0);
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

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        int fixedHeight;
        super.onMeasure(i, i2);
        float f = this.maxHeightPercentage;
        if (f <= 0.0f || f >= 1.0f || measuredHeight == (fixedHeight = getFixedHeight((measuredHeight = getMeasuredHeight())))) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), fixedHeight);
    }

    private void innerSetGroundingColor() {
        if (this.groundingColor != -1) {
            this.hasGroundingColor = true;
            this.groundingColorPaint = new Paint();
            this.groundingColorPaint.setAntiAlias(true);
            this.groundingColorPaint.setColor(this.groundingColor);
            this.groundingColorPaint.setStyle(Paint.Style.FILL);
        }
    }

    protected int getFixedHeight(int i) {
        int screenHeight;
        float f = this.maxHeightPercentage;
        return (f <= 0.0f || f >= 1.0f || i <= (screenHeight = (int) ((((float) Utils.getScreenHeight(getContext())) * this.maxHeightPercentage) + 0.5f))) ? i : screenHeight;
    }

    public void setOnImageChangedListener(OnImageChangedListener onImageChangedListener) {
        this.listener = onImageChangedListener;
    }

    protected void dispatchImageChanged(int i, Media media) {
        OnImageChangedListener onImageChangedListener = this.listener;
        if (onImageChangedListener != null) {
            onImageChangedListener.onImageChanged(this, i, media);
        }
    }

    public Media getMedia() {
        return this.media;
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

    public int getStatus() {
        return this.status;
    }

    protected void setImageDrawable(Drawable drawable, int i) {
        String str;
        if (i == 4 && (str = this.requestUrl) != null) {
            CrashlyticsUtils.images.add(str);
        }
        setImageStatus(i, false);
        _setImageDrawable(drawable);
        this.imageRetrieve = i == 4;
        dispatchImageChanged(i, this.media);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        discard();
        this.media = null;
        setImageDrawable(drawable, 4);
    }

    private Drawable safeGetDrawable(int i) {
        try {
            return getResources().getDrawable(i);
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    public void setFixStroke(boolean z) {
        this.fixStroke = z;
        invalidate();
    }

    protected void setImageStatus(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        ImageView.ScaleType scaleType;
        if (i != this.status) {
            this.status = i;
            if (i == 1) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (!this.hidePlayButton && isVideo(this.media)) {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                } else {
                    if (this.loadingDrawable == null && (i3 = this.loadingDrawableId) != 0) {
                        this.loadingDrawable = safeGetDrawable(i3);
                    }
                    Drawable drawable = this.loadingDrawable;
                    if (drawable != null) {
                        _setImageDrawable(drawable);
                    } else {
                        if (this.defaultDrawable == null && (i2 = this.defaultDrawableId) != 0) {
                            this.defaultDrawable = safeGetDrawable(i2);
                        }
                        _setImageDrawable(this.defaultDrawable);
                    }
                }
            } else if (i == 2) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (!this.hidePlayButton && isVideo(this.media)) {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                } else {
                    if (this.errorDrawable == null && (i4 = this.errorDrawableId) != 0) {
                        this.errorDrawable = safeGetDrawable(i4);
                    }
                    Drawable drawable2 = this.errorDrawable;
                    if (drawable2 != null) {
                        _setImageDrawable(drawable2);
                    }
                }
            } else if (i == 3) {
                if (!this.scalePlaceholder && this.placeholderSavedScaleType == null) {
                    this.placeholderSavedScaleType = getScaleType();
                    setScaleType(ImageView.ScaleType.CENTER);
                }
                if (!this.hidePlayButton && isVideo(this.media)) {
                    _setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                } else {
                    if (this.defaultDrawable == null && (i5 = this.defaultDrawableId) != 0) {
                        this.defaultDrawable = safeGetDrawable(i5);
                    }
                    _setImageDrawable(this.defaultDrawable);
                }
            } else if (i == 4 && (scaleType = this.placeholderSavedScaleType) != null) {
                setScaleType(scaleType);
                this.placeholderSavedScaleType = null;
            }
            if (z) {
                dispatchImageChanged(i, this.media);
            }
        }
    }

    protected void _setImageDrawable(Drawable drawable) {
        this.bitmapShader = null;
        this.bitmapRef = null;
        super.setImageDrawable(drawable);
    }

    public final boolean setImageUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return setImageMedia(null);
        }
        Media media = new Media();
        media.url = str;
        return setImageMedia(media);
    }

    public boolean setImageMedia(Media media) {
        if (Utils.isEquals(media, this.media)) {
            int i = (media != null || (this.defaultDrawable == null && this.defaultDrawableId == 0)) ? this.status : 3;
            this.status = 0;
            this.media = media;
            setImageStatus(i, false);
            return false;
        }
        discard();
        this.media = media;
        this.requestUrl = null;
        this.imageRetrieve = false;
        require();
        return true;
    }

    protected String getRequestUrl(Media media, boolean z, int i, int i2) {
        if (media == null) {
            return null;
        }
        String str = media.coverImage;
        String str2 = str == null ? media.url : str;
        if (!isGif(str2) && !isWebP(str2)) {
            String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(str2);
            return youtubeVideoIdFromUrl != null ? YoutubeUtils.getDefaultYoutubeImage(youtubeVideoIdFromUrl) : str2;
        }
        if (z) {
            return str2;
        }
        return null;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.media != null && this.requestUrl == null) {
            require();
        }
        if (this.imageRetrieve || getDrawable() != null) {
            return;
        }
        if (this.defaultDrawable == null && this.defaultDrawableId == 0) {
            return;
        }
        setImageStatus(3, true);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.visible = i == 0;
        if (this.media != null && this.requestUrl == null) {
            require();
            return;
        }
        boolean z = this.visible;
        if (z || this.requestUrl == null || this.imageRetrieve || getRequestUrl(this.media, z, getWidth(), getHeight()) != null) {
            return;
        }
        discard();
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.strokeColor = i;
        invalidate();
    }

    public void makeWebpRtl(boolean z) {
        this.makeWebpRtl = z;
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
        int i = width < 0 ? 0 : width;
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int i2 = height < 0 ? 0 : height;
        String requestUrl = getRequestUrl(this.media, this.visible, i, i2);
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
            getWebPLoader().request(requestUrl, this.drawableLoaderListener, i, i2, this.makeWebpRtl, this.loopCount);
        } else {
            this.container = getImageLoader().get(requestUrl, this, getImageRequestWidth(i), getImageRequestHeight(i2));
        }
        return true;
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

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        Utils.post(this.onErrorRunnable);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageListener
    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
        if (z) {
            if (imageContainer.getBitmap() != null) {
                setImageDrawable(new BitmapDrawable(getResources(), imageContainer.getBitmap()), 4);
                return;
            }
            return;
        }
        this.container = imageContainer;
        Utils.post(this.onResponseRunnable);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public boolean isMonochrome() {
        return this.monochrome;
    }

    public void setMonochrome(boolean z) {
        if (this.monochrome != z) {
            this.monochrome = z;
            invalidate();
        }
    }

    public void setCornerRadius(int i) {
        this.cornerRadius = i;
        invalidate();
    }

    public void setCornerMask(int i) {
        if (this.cornerMask == i) {
            return;
        }
        this.cornerMask = i;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r16) {
        /*
            Method dump skipped, instructions count: 1012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.NVImageView.onDraw(android.graphics.Canvas):void");
    }

    private boolean isVideo(Media media) {
        int i;
        return media != null && ((i = media.type) == 102 || i == 123 || YoutubeUtils.getYoutubeVideoIdFromUrl(media.url) != null);
    }

    private void drawGroundingColor(Canvas canvas, RectF rectF, float f, int i) {
        if (this.hasGroundingColor) {
            drawRoundRect(canvas, rectF, f, i, this.groundingColorPaint);
        }
    }

    private void drawRoundRect(Canvas canvas, RectF rectF, float f, int i, Paint paint) {
        if (f > 0.0f && i == 0) {
            canvas.drawRoundRect(rectF, f, f, paint);
            return;
        }
        if (f > 0.0f) {
            Path path = this.path;
            if (path == null) {
                this.path = new Path();
            } else {
                path.reset();
            }
            drawRoundPath(this.path, rectF, f, i);
            canvas.drawPath(this.path, paint);
            return;
        }
        canvas.drawRect(rectF, paint);
    }

    public void setShowPressedMask(boolean z) {
        this.showPressedMask = z;
    }

    private void drawRoundPath(Path path, RectF rectF, float f, int i) {
        if (this.radii == null) {
            this.radii = new float[8];
        }
        if ((i & 1) != 0) {
            float[] fArr = this.radii;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
        } else {
            float[] fArr2 = this.radii;
            fArr2[0] = f;
            fArr2[1] = f;
        }
        if ((i & 2) != 0) {
            float[] fArr3 = this.radii;
            fArr3[2] = 0.0f;
            fArr3[3] = 0.0f;
        } else {
            float[] fArr4 = this.radii;
            fArr4[2] = f;
            fArr4[3] = f;
        }
        if ((i & 4) != 0) {
            float[] fArr5 = this.radii;
            fArr5[4] = 0.0f;
            fArr5[5] = 0.0f;
        } else {
            float[] fArr6 = this.radii;
            fArr6[4] = f;
            fArr6[5] = f;
        }
        if ((i & 8) != 0) {
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

    public static boolean isGif(String str) {
        return Utils.isGif(str);
    }

    public static boolean isWebP(String str) {
        return Utils.isWebP(str);
    }

    public GifLoader getGifLoader() {
        NVContext nVContext;
        if (this.gifLoader == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.gifLoader = (GifLoader) nVContext.getService("gifLoader");
        }
        GifLoader gifLoader = this.gifLoader;
        return gifLoader == null ? (GifLoader) NVApplication.instance().getService("gifLoader") : gifLoader;
    }

    public WebPLoader getWebPLoader() {
        NVContext nVContext;
        if (this.webpLoader == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.webpLoader = (WebPLoader) nVContext.getService("webpLoader");
        }
        WebPLoader webPLoader = this.webpLoader;
        return webPLoader == null ? (WebPLoader) NVApplication.instance().getService("webpLoader") : webPLoader;
    }

    /* loaded from: classes3.dex */
    private class DrawableListener implements DrawableLoaderListener {
        private DrawableListener() {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z) {
            if (Utils.isEqualsNotNull(str, NVImageView.this.requestUrl)) {
                NVImageView.this.setImageDrawable(drawable, 4);
            }
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
            if (Utils.isEqualsNotNull(str, NVImageView.this.requestUrl)) {
                NVImageView.this.setImageStatus(2, true);
            }
        }
    }

    public static String replaceUrl(String str, String str2) {
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

    /* JADX WARN: Removed duplicated region for block: B:98:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String fitSize(java.lang.String r7, java.lang.String r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.NVImageView.fitSize(java.lang.String, java.lang.String, int, int):java.lang.String");
    }

    public void setGroundingColor(int i) {
        this.groundingColor = i;
        innerSetGroundingColor();
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

    public void setLoadingDrawable(Drawable drawable) {
        this.loadingDrawable = drawable;
        invalidate();
    }

    public void innerSetMeasuredDimension(int i, int i2) {
        setMeasuredDimension(i, i2);
    }
}
