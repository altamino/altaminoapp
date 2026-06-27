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

/* loaded from: classes3.dex */
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

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dirty = true;
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
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

    private int getColor() {
        int i = this.style;
        if (i == 1) {
            return COLOR_GOLD;
        }
        if (i == 2) {
            return COLOR_DISABLED;
        }
        return COLOR_WHITE;
    }

    private int getPlaceholder() {
        if (this.style == 1) {
            return getResources().getColor(R.color.item_card_placeholder_mask_black);
        }
        return getResources().getColor(R.color.item_card_placeholder_mask_grey);
    }

    public void setStyle(int i) {
        this.style = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        NVImageView nVImageView = this.image;
        this.cornerRadius = nVImageView.cornerRadius;
        nVImageView.cornerMask = 12;
        this.strokeWidth = nVImageView.strokeWidth;
        this.strokeColor = nVImageView.strokeColor;
        nVImageView.strokeWidth = 0.0f;
        if (nVImageView instanceof ThumbImageView) {
            ThumbImageView thumbImageView = (ThumbImageView) nVImageView;
            this.shadowSize = thumbImageView.shadowSize;
            this.shadowOffsetX = thumbImageView.shadowOffsetX;
            this.shadowOffsetY = thumbImageView.shadowOffsetY;
            this.shadowColor = thumbImageView.shadowColor;
            thumbImageView.shadowSize = 0;
        }
        this.title = findViewById(R.id.title);
        this.fansOnlyIndicator = findViewById(R.id.fans_only_content_indicator);
        if (this.fansOnlyIndicator != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(getContext().getResources().getColor(R.color.influencer_primary_color));
            int i = this.cornerRadius;
            gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, i, i, 0.0f, 0.0f, i, i});
            int iRound = Math.round(this.cornerRadius * 0.35f);
            this.fansOnlyIndicator.setPadding(iRound, iRound, iRound, iRound);
            this.fansOnlyIndicator.setBackgroundDrawable(gradientDrawable);
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
                if (user != null && user.isSystem()) {
                    this.style = 1;
                } else {
                    this.style = 0;
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

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        super.onMeasure(i, i2);
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            this.dirty = true;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int i7 = i6 - paddingBottom;
            int measuredHeight = i7 - this.title.getMeasuredHeight();
            int i8 = i5 - paddingRight;
            this.title.layout(paddingLeft, measuredHeight, i8, i7);
            this.image.layout(paddingLeft, paddingTop, i8, measuredHeight);
            View view = this.fansOnlyIndicator;
            if (view != null) {
                int measuredWidth = view.getMeasuredWidth();
                this.fansOnlyIndicator.layout(i8 - measuredWidth, paddingTop, i8, measuredWidth + paddingTop);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        NVImageView nVImageView = this.image;
        int i = this.cornerRadius;
        float f2 = this.strokeWidth;
        nVImageView.cornerRadius = i + (f2 > 0.0f ? (int) Math.max(1.0f, f2) : 0);
        if (this.style > 0) {
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            if (width < GOLD_STROKE_WIDTH_MIN_WIDTH) {
                f = GOLD_STROKE_WIDTH_MIN;
            } else {
                if (width > GOLD_STROKE_WIDTH_MAX_WIDTH) {
                    f = GOLD_STROKE_WIDTH_MAX;
                } else {
                    float f3 = GOLD_STROKE_WIDTH_MIN;
                    f = f3 + (((GOLD_STROKE_WIDTH_MAX - f3) * (width - r1)) / (r2 - r1));
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
            float f4 = f / 2.0f;
            this.rect.inset(f4, f4);
            RectF rectF = this.rect;
            int i2 = this.cornerRadius;
            canvas.drawRoundRect(rectF, i2, i2, this.paint);
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
            int i3 = this.cornerRadius;
            canvas.drawRoundRect(rectF2, i3, i3, this.paint);
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
        int i = this.cornerRadius;
        canvas.drawRoundRect(rectF, i, i, this.paint);
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
}
