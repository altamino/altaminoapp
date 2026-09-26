package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.widget.shadow.ShadowConfig;
import com.narvii.widget.shadow.ShadowHelper;

/* JADX INFO: loaded from: classes11.dex */
public class CardView extends ViewGroup {
    private static int COLOR_DISABLED;
    private static int COLOR_GOLD;
    private static int COLOR_WHITE;
    private static float GOLD_STROKE_WIDTH_MAX;
    private static int GOLD_STROKE_WIDTH_MAX_WIDTH;
    private static float GOLD_STROKE_WIDTH_MIN;
    private static int GOLD_STROKE_WIDTH_MIN_WIDTH;
    private int cornerRadius;
    private boolean dirty;
    private View fansOnlyIndicator;
    private NVImageView image;
    private final Paint paint;
    private final RectF rect;
    private int shadowColor;
    private ShadowConfig shadowConfig;
    private float shadowCornerRadius;
    private int shadowOffsetX;
    private int shadowOffsetY;
    private int shadowSize;
    private int strokeColor;
    private float strokeWidth;
    private int style;
    private View title;

    private int getColor() {
        int i10 = this.style;
        if (i10 == 1) {
            return COLOR_GOLD;
        }
        return i10 == 2 ? COLOR_DISABLED : COLOR_WHITE;
    }

    private void buildShadowConfig() {
        ShadowConfig shadowConfig = this.shadowConfig;
        if (shadowConfig == null) {
            this.shadowConfig = new ShadowConfig(this.rect, this.shadowCornerRadius, this.shadowSize, new int[]{this.shadowOffsetX, this.shadowOffsetY}, this.shadowColor);
        } else {
            shadowConfig.reset();
        }
        this.shadowConfig.prepareShadow();
    }

    private int getPlaceholder() {
        return this.style == 1 ? getResources().getColor(R.color.item_card_placeholder_mask_black) : getResources().getColor(R.color.item_card_placeholder_mask_grey);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        NVImageView nVImageView = this.image;
        int i10 = this.cornerRadius;
        float f6 = this.strokeWidth;
        nVImageView.cornerRadius = i10 + (f6 > 0.0f ? (int) Math.max(1.0f, f6) : 0);
        if (this.style > 0) {
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int i11 = GOLD_STROKE_WIDTH_MIN_WIDTH;
            if (width < i11) {
                f = GOLD_STROKE_WIDTH_MIN;
            } else {
                int i12 = GOLD_STROKE_WIDTH_MAX_WIDTH;
                if (width > i12) {
                    f = GOLD_STROKE_WIDTH_MAX;
                } else {
                    float f7 = GOLD_STROKE_WIDTH_MIN;
                    f = f7 + (((GOLD_STROKE_WIDTH_MAX - f7) * (width - i11)) / (i12 - i11));
                }
            }
            this.image.cornerRadius = this.cornerRadius + ((int) f);
        } else {
            f = 0.0f;
        }
        super.dispatchDraw(canvas);
        if (this.style > 0) {
            this.rect.left = getPaddingLeft();
            this.rect.right = getWidth() - getPaddingRight();
            this.rect.top = getPaddingTop();
            this.rect.bottom = getHeight() - getPaddingBottom();
            this.paint.setColor(getColor());
            this.paint.setStrokeWidth(f);
            this.paint.setStyle(Paint.Style.STROKE);
            float f10 = f / 2.0f;
            this.rect.inset(f10, f10);
            RectF rectF = this.rect;
            int i13 = this.cornerRadius;
            canvas.drawRoundRect(rectF, i13, i13, this.paint);
            return;
        }
        if (this.strokeWidth > 0.0f) {
            this.rect.left = getPaddingLeft();
            this.rect.right = getWidth() - getPaddingRight();
            this.rect.top = getPaddingTop();
            this.rect.bottom = getHeight() - getPaddingBottom();
            this.paint.setColor(this.strokeColor);
            this.paint.setStrokeWidth(this.strokeWidth);
            this.paint.setStyle(Paint.Style.STROKE);
            RectF rectF2 = this.rect;
            int i14 = this.cornerRadius;
            canvas.drawRoundRect(rectF2, i14, i14, this.paint);
        }
    }

    public NVImageView findImage() {
        NVImageView nVImageView = (NVImageView) findViewById(R.id.image);
        return nVImageView == null ? (NVImageView) findViewWithTag(getContext().getString(R.string.image_tag)) : nVImageView;
    }

    public View findText() {
        View viewFindViewById = findViewById(R.id.title);
        return viewFindViewById == null ? findViewWithTag(getContext().getString(R.string.title_tag)) : viewFindViewById;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        if (z6) {
            this.dirty = true;
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int i16 = i15 - paddingBottom;
            int measuredHeight = i16 - this.title.getMeasuredHeight();
            int i17 = i14 - paddingRight;
            this.title.layout(paddingLeft, measuredHeight, i17, i16);
            this.image.layout(paddingLeft, paddingTop, i17, measuredHeight);
            View view = this.fansOnlyIndicator;
            if (view != null) {
                int measuredWidth = view.getMeasuredWidth();
                this.fansOnlyIndicator.layout(i17 - measuredWidth, paddingTop, i17, measuredWidth + paddingTop);
            }
        }
    }

    public void setItem(Item item) {
        if (item == null) {
            this.style = 0;
            this.image.setImageMedia(null);
            View view = this.title;
            if (view instanceof TextView) {
                ((TextView) view).setText((CharSequence) null);
            }
            View view2 = this.fansOnlyIndicator;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        } else {
            if (item.status == 9) {
                this.style = 2;
            } else {
                User user = item.author;
                if (user == null || !user.isSystem()) {
                    this.style = 0;
                } else {
                    this.style = 1;
                }
            }
            Media mediaFirstMedia = item.firstMedia();
            NVImageView nVImageView = this.image;
            if (nVImageView instanceof SecretImageView) {
                ((SecretImageView) nVImageView).setImageMedia(mediaFirstMedia, item.needHidden);
            } else {
                nVImageView.setImageMedia(mediaFirstMedia);
            }
            View view3 = this.title;
            if (view3 instanceof TextView) {
                ((TextView) view3).setText(item.label);
            }
            this.image.loadingDrawable = new ColorDrawable(getPlaceholder());
            this.image.defaultDrawable = new ColorDrawable(getPlaceholder());
            View view4 = this.fansOnlyIndicator;
            if (view4 != null) {
                view4.setVisibility(item.isFansOnly() ? 0 : 8);
            }
        }
        invalidate();
    }

    public void setStyle(int i10) {
        this.style = i10;
        invalidate();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dirty = true;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.rect = new RectF();
        setClipToPadding(false);
        setWillNotDraw(false);
        if (COLOR_WHITE == 0) {
            COLOR_WHITE = -1;
            COLOR_GOLD = context.getResources().getColor(R.color.gold);
            COLOR_DISABLED = context.getResources().getColor(R.color.disabled);
            GOLD_STROKE_WIDTH_MIN = context.getResources().getDimension(R.dimen.item_card_gold_stroke_min);
            GOLD_STROKE_WIDTH_MIN_WIDTH = context.getResources().getDimensionPixelSize(R.dimen.item_card_gold_stroke_min_width);
            GOLD_STROKE_WIDTH_MAX = context.getResources().getDimension(R.dimen.item_card_gold_stroke_max);
            GOLD_STROKE_WIDTH_MAX_WIDTH = context.getResources().getDimensionPixelSize(R.dimen.item_card_gold_stroke_max_width);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.rect.left = getPaddingLeft();
        this.rect.right = getWidth() - getPaddingRight();
        this.rect.top = getPaddingTop();
        this.rect.bottom = getHeight() - getPaddingBottom();
        this.shadowCornerRadius = Math.min(Math.min(((int) this.rect.width()) / 2, ((int) this.rect.height()) / 2), this.cornerRadius);
        if (this.shadowSize > 0 && getHeight() > 0 && getWidth() > 0) {
            if (getLayoutParams().width == -2 || getLayoutParams().height == -2) {
                Log.w("don't use shadow on not specified size view, may cause leak");
            }
            if (this.shadowConfig == null || this.dirty) {
                buildShadowConfig();
                this.dirty = false;
            }
            ShadowHelper.drawShadow(canvas, this.shadowConfig);
        }
        this.paint.setColor(getColor());
        this.paint.setStyle(Paint.Style.FILL);
        RectF rectF = this.rect;
        int i10 = this.cornerRadius;
        canvas.drawRoundRect(rectF, i10, i10, this.paint);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        NVImageView nVImageViewFindImage = findImage();
        this.image = nVImageViewFindImage;
        this.cornerRadius = nVImageViewFindImage.cornerRadius;
        nVImageViewFindImage.cornerMask = 12;
        this.strokeWidth = nVImageViewFindImage.strokeWidth;
        this.strokeColor = nVImageViewFindImage.strokeColor;
        nVImageViewFindImage.strokeWidth = 0.0f;
        if (nVImageViewFindImage instanceof ThumbImageView) {
            ThumbImageView thumbImageView = (ThumbImageView) nVImageViewFindImage;
            this.shadowSize = thumbImageView.shadowSize;
            this.shadowOffsetX = thumbImageView.shadowOffsetX;
            this.shadowOffsetY = thumbImageView.shadowOffsetY;
            this.shadowColor = thumbImageView.shadowColor;
            thumbImageView.shadowSize = 0;
        }
        this.title = findText();
        View viewFindViewById = findViewById(R.id.fans_only_content_indicator);
        this.fansOnlyIndicator = viewFindViewById;
        if (viewFindViewById != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(getContext().getResources().getColor(R.color.influencer_primary_color));
            int i10 = this.cornerRadius;
            gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, i10, i10, 0.0f, 0.0f, i10, i10});
            int iRound = Math.round(this.cornerRadius * 0.35f);
            this.fansOnlyIndicator.setPadding(iRound, iRound, iRound, iRound);
            this.fansOnlyIndicator.setBackgroundDrawable(gradientDrawable);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        super.onMeasure(i10, i11);
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        if (this.title.getLayoutParams().height > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.title.getLayoutParams().height, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        this.title.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), iMakeMeasureSpec);
        if (this.fansOnlyIndicator != null) {
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((int) (measuredWidth * 0.2f), 1073741824);
            this.fansOnlyIndicator.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
        }
    }
}
