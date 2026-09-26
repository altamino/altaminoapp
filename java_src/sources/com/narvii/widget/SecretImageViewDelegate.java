package com.narvii.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.blur.NativeBlurProcess;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes11.dex */
public class SecretImageViewDelegate implements NVImageView.OnImageChangedListener, ISecretImage {
    static int ytMaxSize;
    static int ytMinSize;
    static Paint ytPaint;
    static String ytSymbol;
    private WeakReference<Bitmap> bitmapRef;
    private Bitmap blurBmp;
    private Drawable blurDrawable;
    private int blurLightenColor;
    private int blurOrigHeight;
    private int blurOrigWidth;
    private int blurRadius;
    private int cornerRadius;
    private NVImageView host;
    private int hostHeight;
    private int hostWidth;
    private Matrix matrix;
    private Media media;
    private int overlayColor;
    private Paint overlayPaint;
    private Path path;
    private float[] radii;
    private BitmapShader shader;
    private Paint ytBgPaint;
    private Bitmap ytBitmap;
    private RectF ytRectF;
    public boolean needHidden = false;
    public boolean forceBlur = false;
    private RectF mRectDst = new RectF();
    private Paint blurPaint = new Paint();

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

    public boolean needBlur() {
        return this.needHidden || this.forceBlur;
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (i10 == 4 && this.needHidden) {
            setImageDrawable2(this.host.getDrawable());
        }
    }

    public void setBlurLightenColor(int i10) {
        this.blurLightenColor = i10;
    }

    public void setImageDrawable2(Drawable drawable) {
        if (drawable == null) {
            this.host.setImageDrawable(null);
        }
        if (drawable instanceof BitmapDrawable) {
            this.blurDrawable = new BitmapDrawable(((BitmapDrawable) drawable).getBitmap());
        } else {
            this.blurDrawable = drawable;
        }
        this.host.invalidate();
        Bitmap bitmap = this.blurBmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurBmp = null;
        }
    }

    private void drawLoadingDrawable(Canvas canvas) {
        Drawable drawable = this.host.defaultDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        } else {
            new ColorDrawable(-7829368).draw(canvas);
        }
    }

    private void drawPlayButton(Canvas canvas) {
        Media media;
        if (this.host.hidePlayButton || (media = this.media) == null) {
            return;
        }
        if ((media.isVideo() || this.host.forceShowPlayButton) && this.hostWidth > 0 && this.hostHeight > 0) {
            if (this.ytBgPaint == null) {
                Paint paint = new Paint();
                this.ytBgPaint = paint;
                paint.setAntiAlias(true);
                this.ytBgPaint.setColor(Color.parseColor("#22000000"));
            }
            canvas.drawRect(0.0f, 0.0f, this.host.getWidth(), this.host.getHeight(), this.ytBgPaint);
            if (ytPaint == null) {
                Paint paint2 = new Paint();
                ytPaint = paint2;
                paint2.setAntiAlias(true);
                ytPaint.setFlags(2);
                ytSymbol = this.host.getContext().getString(R.string.fa_play);
                ytMinSize = this.host.getContext().getResources().getDimensionPixelSize(R.dimen.video_play_min_size);
                ytMaxSize = this.host.getContext().getResources().getDimensionPixelSize(R.dimen.video_play_max_size);
            }
            if (this.ytBitmap == null) {
                this.ytBitmap = BitmapFactory.decodeResource(this.host.getResources(), R.drawable.ic_sr_media_play);
                this.ytRectF = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
            }
            int i10 = this.hostHeight;
            int i11 = this.hostWidth;
            int i12 = (int) ((i10 < i11 ? i10 : i11) * 0.75f);
            int i13 = ytMinSize;
            if (i12 < i13) {
                i12 = i13;
            }
            int i14 = ytMaxSize;
            if (i12 > i14) {
                i12 = i14;
            }
            this.ytRectF.set((i11 - i12) >> 1, (i10 - i12) >> 1, (i11 + i12) >> 1, (i10 + i12) >> 1);
            canvas.drawBitmap(this.ytBitmap, (Rect) null, this.ytRectF, ytPaint);
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

    public void drawSecret(Canvas canvas) {
        int intrinsicWidth;
        int intrinsicHeight;
        float f;
        float f6;
        float f7;
        this.hostWidth = (this.host.getWidth() - this.host.getPaddingLeft()) - this.host.getPaddingRight();
        this.hostHeight = (this.host.getHeight() - this.host.getPaddingTop()) - this.host.getPaddingBottom();
        NVImageView nVImageView = this.host;
        if (nVImageView.status != 4) {
            drawLoadingDrawable(canvas);
            return;
        }
        Drawable drawable = this.blurDrawable;
        if (drawable == null) {
            drawable = nVImageView.getDrawable();
        }
        if (drawable == null || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            drawLoadingDrawable(canvas);
        } else {
            int paddingLeft = (((this.hostWidth - this.host.getPaddingLeft()) - this.host.getPaddingRight()) + 1) / 2;
            int paddingTop = (((this.hostHeight - this.host.getPaddingTop()) - this.host.getPaddingBottom()) + 1) / 2;
            this.mRectDst = new RectF(0.0f, 0.0f, paddingLeft * 2, paddingTop * 2);
            Bitmap bitmap = this.blurBmp;
            if (bitmap == null || bitmap.getWidth() != paddingLeft || this.blurBmp.getHeight() != paddingTop) {
                try {
                    Bitmap bitmap2 = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
                    if (bitmap2 != null) {
                        intrinsicWidth = bitmap2.getWidth();
                        intrinsicHeight = bitmap2.getHeight();
                    } else {
                        intrinsicWidth = drawable.getIntrinsicWidth();
                        intrinsicHeight = drawable.getIntrinsicHeight();
                    }
                    if (intrinsicWidth * paddingTop > paddingLeft * intrinsicHeight) {
                        f = paddingTop / intrinsicHeight;
                        f7 = (paddingLeft - (intrinsicWidth * f)) * 0.5f;
                        f6 = 0.0f;
                    } else {
                        f = paddingLeft / intrinsicWidth;
                        f6 = (paddingTop - (intrinsicHeight * f)) * 0.5f;
                        f7 = 0.0f;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(paddingLeft, paddingTop, Bitmap.Config.ARGB_8888);
                    this.blurBmp = bitmapCreateBitmap;
                    bitmapCreateBitmap.eraseColor(-1);
                    Canvas canvas2 = new Canvas(this.blurBmp);
                    canvas2.translate(f7, f6);
                    canvas2.scale(f, f);
                    if (bitmap2 != null) {
                        this.blurPaint.setColor(-1);
                        canvas2.drawBitmap(bitmap2, 0.0f, 0.0f, this.blurPaint);
                    } else {
                        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                        drawable.draw(canvas2);
                    }
                    this.blurBmp = new NativeBlurProcess().blur(this.blurBmp, this.blurRadius);
                } catch (Throwable th) {
                    this.blurBmp = null;
                    Log.e("fail to process blur image", th);
                }
            }
        }
        if (this.blurBmp == null) {
            this.host.draw(canvas);
        } else {
            if (this.shader != null) {
                WeakReference<Bitmap> weakReference = this.bitmapRef;
                if ((weakReference == null ? null : weakReference.get()) != this.blurBmp) {
                    this.shader = null;
                }
            }
            if (this.shader == null) {
                Bitmap bitmap3 = this.blurBmp;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.shader = new BitmapShader(bitmap3, tileMode, tileMode);
                this.bitmapRef = new WeakReference<>(this.blurBmp);
            }
            this.matrix.setScale(this.hostWidth / (this.blurBmp.getWidth() * 1.0f), this.hostHeight / (this.blurBmp.getHeight() * 1.0f));
            this.shader.setLocalMatrix(this.matrix);
            this.blurPaint.setShader(this.shader);
            canvas.save();
            drawRoundRect(canvas, this.mRectDst, this.cornerRadius, this.host.cornerMask, this.blurPaint);
            canvas.restore();
            canvas.save();
            drawPlayButton(canvas);
            canvas.restore();
        }
        if (Color.alpha(this.blurLightenColor) > 0) {
            this.blurPaint.setColor(this.blurLightenColor);
            canvas.drawRect(0.0f, 0.0f, this.host.getWidth(), this.host.getHeight(), this.blurPaint);
        }
        this.overlayPaint.setColor(this.overlayColor);
        canvas.drawRect(0.0f, 0.0f, this.host.getWidth(), this.host.getHeight(), this.overlayPaint);
    }

    public void layout() {
        if (this.blurOrigWidth == 0) {
            this.blurOrigWidth = this.host.getWidth();
            this.blurOrigHeight = this.host.getHeight();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        this.host.setImageDrawable(drawable);
        Bitmap bitmap = this.blurBmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurBmp = null;
            this.bitmapRef = null;
            this.shader = null;
        }
    }

    @Override // com.narvii.widget.ISecretImage
    public void setImageForceBlur(Media media, boolean z6, int i10) {
        this.forceBlur = z6;
        this.overlayColor = i10;
        setImageMedia(media, this.needHidden);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageMedia(Media media, boolean z6) {
        this.needHidden = media != null && z6;
        if (!Utils.isEqualsNotNull(this.media, media)) {
            this.blurBmp = null;
            this.shader = null;
            this.blurDrawable = null;
        }
        this.media = media;
        return this.host.setImageMedia(media);
    }

    public void setImageResource(int i10) {
        this.host.setImageResource(i10);
        Bitmap bitmap = this.blurBmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurBmp = null;
        }
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageUrl(String str, boolean z6) {
        this.needHidden = z6;
        return this.host.setImageUrl(str);
    }

    public SecretImageViewDelegate(NVImageView nVImageView, int i10) {
        Paint paint = new Paint();
        this.overlayPaint = paint;
        paint.setAntiAlias(true);
        this.blurRadius = Utils.dpToPxInt(nVImageView.getContext(), 30.0f);
        this.host = nVImageView;
        nVImageView.setOnImageChangedListener(this);
        this.cornerRadius = i10;
        this.matrix = new Matrix();
    }
}
