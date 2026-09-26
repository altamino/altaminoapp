package com.narvii.monetization.bubble;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.SlotPoint;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.image.BitmapUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.image.Screenshot;
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class BubbleEditView extends FrameLayout {
    private static final float DEFAULT_SCALE = 2.0f;
    private int bgHeight;
    private int bgWidth;
    public NVImageView bubbleBg;
    private BubbleHelper bubbleHelper;
    BubbleService bubbleService;
    private int bubbleSlotSize;
    float curDensity;
    private SlotPoint curFocusedSlot;
    private final NVImageLoader imageLoader;
    BubbleSlotEditingListener listener;
    private RelativeLayout root;
    private float scaleXY;
    SlotEditView.SlotEditListener slotEditListener;

    interface BubbleSlotEditingListener {
        void onCancelEdit();

        void onSlotDeleted(SlotPoint slotPoint);

        void onSlotSelected(SlotPoint slotPoint);
    }

    public BubbleEditView(@NonNull Context context) {
        this(context, null);
    }

    private void hideSlotBackground() {
        for (int i10 = 0; i10 < this.root.getChildCount(); i10++) {
            View childAt = this.root.getChildAt(i10);
            if (childAt instanceof SlotEditView) {
                ((SlotEditView) childAt).imgSlot.setBackgroundDrawable(null);
            }
        }
    }

    public void loseFocus(BubbleInfo bubbleInfo) {
        this.curFocusedSlot = null;
        updateSlotViews(bubbleInfo);
    }

    public void setListener(BubbleSlotEditingListener bubbleSlotEditingListener) {
        this.listener = bubbleSlotEditingListener;
    }

    public BubbleEditView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curFocusedSlot = null;
        this.slotEditListener = new SlotEditView.SlotEditListener() { // from class: com.narvii.monetization.bubble.BubbleEditView.2
            @Override // com.narvii.monetization.bubble.SlotEditView.SlotEditListener
            public void onDeleteClicked(View view) {
                BubbleEditView.this.curFocusedSlot = (SlotPoint) view.getTag(R.id.slot_point);
                BubbleEditView bubbleEditView = BubbleEditView.this;
                BubbleSlotEditingListener bubbleSlotEditingListener = bubbleEditView.listener;
                if (bubbleSlotEditingListener != null) {
                    bubbleSlotEditingListener.onSlotDeleted(bubbleEditView.curFocusedSlot);
                }
            }

            @Override // com.narvii.monetization.bubble.SlotEditView.SlotEditListener
            public void onSlotSelected(View view) {
                BubbleEditView.this.curFocusedSlot = (SlotPoint) view.getTag(R.id.slot_point);
                BubbleEditView bubbleEditView = BubbleEditView.this;
                BubbleSlotEditingListener bubbleSlotEditingListener = bubbleEditView.listener;
                if (bubbleSlotEditingListener != null) {
                    bubbleSlotEditingListener.onSlotSelected(bubbleEditView.curFocusedSlot);
                }
            }
        };
        View.inflate(context, R.layout.bubble_edit_layout, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.imageLoader = (NVImageLoader) nVContext.getService("imageLoader");
        this.bubbleHelper = new BubbleHelper(nVContext);
        float f = getContext().getResources().getDisplayMetrics().scaledDensity;
        this.curDensity = f;
        this.scaleXY = f * 2.0f;
        this.bubbleSlotSize = (int) (Utils.dpToPx(getContext(), 22.0f) * 2.0f);
    }

    private void removeAllSlots() {
        while (this.root.getChildCount() > 1) {
            this.root.removeViewAt(1);
        }
    }

    public void configAllowSlots(List<SlotPoint> list) {
        removeAllSlots();
        if (list == null || list.size() == 0) {
            return;
        }
        for (SlotPoint slotPoint : list) {
            if (slotPoint.isLegalPoint()) {
                SlotEditView slotEditView = new SlotEditView(getContext());
                slotEditView.setListener(this.slotEditListener);
                slotEditView.setTag(R.id.slot_key, slotPoint.getSlotKey());
                slotEditView.setTag(R.id.slot_point, slotPoint);
                int dimensionPixelSize = this.bubbleSlotSize + getResources().getDimensionPixelSize(R.dimen.bubble_slot_delete_half_size);
                int i10 = this.bubbleSlotSize;
                int i11 = (int) (i10 * 0.5f);
                int i12 = (int) (i10 * 0.5f);
                int dimensionPixelSize2 = (int) ((i10 * 0.5f) + getResources().getDimensionPixelSize(R.dimen.bubble_slot_delete_half_size));
                int dimensionPixelSize3 = (int) ((this.bubbleSlotSize * 0.5f) + getResources().getDimensionPixelSize(R.dimen.bubble_slot_delete_half_size));
                float f = slotPoint.f2488x;
                float f6 = this.bubbleService.scaleXY;
                this.root.addView(slotEditView, this.bubbleHelper.getSlotLayParams(R.id.bubble_bg, dimensionPixelSize, dimensionPixelSize, slotPoint.align, i11, dimensionPixelSize3, dimensionPixelSize2, i12, (int) (f * f6 * 2.0f), (int) (slotPoint.f2489y * f6 * 2.0f), true));
            }
        }
    }

    public Bitmap getFlipBitmap(Bitmap bitmap) {
        Canvas canvas = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        matrix.postTranslate(bitmap.getWidth(), 0.0f);
        canvas.drawBitmap(bitmap, matrix, null);
        return bitmapCreateBitmap;
    }

    public void updateEditorView(final BubbleInfo bubbleInfo) {
        if (bubbleInfo == null) {
            return;
        }
        this.imageLoader.get(bubbleInfo.previewBackgroundUrl, new ImageLoader.ImageListener() { // from class: com.narvii.monetization.bubble.BubbleEditView.3
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }

            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap == null) {
                    return;
                }
                BubbleEditView bubbleEditView = BubbleEditView.this;
                bubbleEditView.bgWidth = (int) Utils.dpToPx(bubbleEditView.getContext(), bitmap.getWidth() / 2.0f);
                BubbleEditView bubbleEditView2 = BubbleEditView.this;
                bubbleEditView2.bgHeight = (int) Utils.dpToPx(bubbleEditView2.getContext(), bitmap.getHeight() / 2.0f);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) BubbleEditView.this.bubbleBg.getLayoutParams();
                layoutParams.width = BubbleEditView.this.bgWidth;
                layoutParams.height = BubbleEditView.this.bgHeight;
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, BubbleEditView.this.bgWidth, BubbleEditView.this.bgHeight, false);
                NVImageView nVImageView = BubbleEditView.this.bubbleBg;
                if (Utils.isRtl()) {
                    bitmapCreateScaledBitmap = BubbleEditView.this.getFlipBitmap(bitmapCreateScaledBitmap);
                }
                nVImageView.setImageDrawable(new BitmapDrawable(bitmapCreateScaledBitmap));
                BubbleEditView.this.configAllowSlots(bubbleInfo.allowedSlots);
                BubbleEditView.this.loseFocus(bubbleInfo);
            }
        });
    }

    public void updateSlotViews(BubbleInfo bubbleInfo) {
        if (bubbleInfo == null) {
            return;
        }
        List<SlotPoint> list = bubbleInfo.allowedSlots;
        if (list == null || list.size() == 0) {
            removeAllSlots();
            return;
        }
        for (int i10 = 0; i10 < this.root.getChildCount(); i10++) {
            View childAt = this.root.getChildAt(i10);
            if (childAt instanceof SlotEditView) {
                SlotEditView slotEditView = (SlotEditView) childAt;
                String str = (String) slotEditView.getTag(R.id.slot_key);
                SlotPoint slotPoint = (SlotPoint) slotEditView.getTag(R.id.slot_point);
                BubbleSlot slotByPosition = bubbleInfo.getSlotByPosition(str);
                slotEditView.imgSlot.setImageUrl(slotByPosition == null ? null : slotByPosition.path);
                slotEditView.updateStatus(Utils.isEquals(slotPoint, this.curFocusedSlot), slotByPosition != null ? slotByPosition.path : null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x011b  */
    public Bitmap getPreviewBitmap(BubbleInfo bubbleInfo) {
        float f;
        loseFocus(bubbleInfo);
        hideSlotBackground();
        Bitmap bitmapTakeScreenshot = Screenshot.takeScreenshot(this);
        int i10 = 1;
        int slotPadding = this.bubbleHelper.getSlotPadding(1, this.bubbleSlotSize, bubbleInfo, 2.0f);
        int slotPadding2 = this.bubbleHelper.getSlotPadding(2, this.bubbleSlotSize, bubbleInfo, 2.0f);
        int slotPadding3 = this.bubbleHelper.getSlotPadding(4, this.bubbleSlotSize, bubbleInfo, 2.0f);
        int slotPadding4 = this.bubbleHelper.getSlotPadding(3, this.bubbleSlotSize, bubbleInfo, 2.0f);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_bg_width);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_bg_height);
        if (ViewCompat.X(this.bubbleBg)) {
            dimensionPixelSize = this.bubbleBg.getWidth();
            dimensionPixelSize2 = this.bubbleBg.getHeight();
        }
        int i11 = dimensionPixelSize2 + slotPadding + slotPadding3;
        int i12 = dimensionPixelSize + slotPadding2 + slotPadding4;
        int width = ((bitmapTakeScreenshot.getWidth() / 2) - (dimensionPixelSize / 2)) - slotPadding2;
        int height = ((bitmapTakeScreenshot.getHeight() / 2) - (dimensionPixelSize2 / 2)) - slotPadding;
        if (width <= 0 || i12 <= 0) {
            if (width <= 0) {
                width = 1;
            }
            if (i12 <= 0) {
                i12 = 1;
            }
            Log.e("bubble", "bubble preview error " + bubbleInfo.id + ": " + width + " bitmap width : " + bitmapTakeScreenshot.getWidth() + " bg width: " + this.bubbleBg.getWidth() + " left offset: " + slotPadding2);
        }
        if (height <= 0 || i11 <= 0) {
            if (height <= 0) {
                height = 1;
            }
            if (i11 > 0) {
                i10 = i11;
            }
            Log.e("bubble", "bubble preview error " + bubbleInfo.id + ": " + height + " bitmap height : " + bitmapTakeScreenshot.getHeight() + " bg height: " + this.bubbleBg.getHeight() + " top offset: " + slotPadding);
            i11 = i10;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapTakeScreenshot, width, height, i12, i11);
        BubbleService bubbleService = this.bubbleService;
        if (bubbleService != null) {
            f = bubbleService.scaleXY;
            if (f == 0.0f) {
                f = 1.0f;
            }
        } else {
            f = 1.0f;
        }
        Bitmap bitmapCrop = BitmapUtils.crop(bitmapCreateBitmap, (int) (i12 / f), (int) (i11 / f), 0.5f, 0.5f);
        updateSlotViews(bubbleInfo);
        return bitmapCrop;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.bubble.BubbleEditView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BubbleSlotEditingListener bubbleSlotEditingListener = BubbleEditView.this.listener;
                if (bubbleSlotEditingListener != null) {
                    bubbleSlotEditingListener.onCancelEdit();
                }
            }
        });
        this.root = (RelativeLayout) findViewById(R.id.root);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.bubble_bg);
        this.bubbleBg = nVImageView;
        nVImageView.setShowPressedMask(false);
    }
}
