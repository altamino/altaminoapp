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
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.SlotPoint;
import com.narvii.monetization.bubble.SlotEditView;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
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

    public void setListener(BubbleSlotEditingListener bubbleSlotEditingListener) {
        this.listener = bubbleSlotEditingListener;
    }

    public BubbleEditView(Context context) {
        this(context, null);
    }

    public BubbleEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curFocusedSlot = null;
        this.slotEditListener = new SlotEditView.SlotEditListener() { // from class: com.narvii.monetization.bubble.BubbleEditView.2
            @Override // com.narvii.monetization.bubble.SlotEditView.SlotEditListener
            public void onSlotSelected(View view) {
                BubbleEditView.this.curFocusedSlot = (SlotPoint) view.getTag(R.id.slot_point);
                BubbleEditView bubbleEditView = BubbleEditView.this;
                BubbleSlotEditingListener bubbleSlotEditingListener = bubbleEditView.listener;
                if (bubbleSlotEditingListener != null) {
                    bubbleSlotEditingListener.onSlotSelected(bubbleEditView.curFocusedSlot);
                }
            }

            @Override // com.narvii.monetization.bubble.SlotEditView.SlotEditListener
            public void onDeleteClicked(View view) {
                BubbleEditView.this.curFocusedSlot = (SlotPoint) view.getTag(R.id.slot_point);
                BubbleEditView bubbleEditView = BubbleEditView.this;
                BubbleSlotEditingListener bubbleSlotEditingListener = bubbleEditView.listener;
                if (bubbleSlotEditingListener != null) {
                    bubbleSlotEditingListener.onSlotDeleted(bubbleEditView.curFocusedSlot);
                }
            }
        };
        FrameLayout.inflate(context, R.layout.bubble_edit_layout, this);
        NVContext nVContext = Utils.getNVContext(getContext());
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.imageLoader = (NVImageLoader) nVContext.getService("imageLoader");
        this.bubbleHelper = new BubbleHelper(nVContext);
        this.curDensity = getContext().getResources().getDisplayMetrics().scaledDensity;
        this.scaleXY = this.curDensity * 2.0f;
        this.bubbleSlotSize = (int) (Utils.dpToPx(getContext(), 22.0f) * 2.0f);
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
        this.bubbleBg = (NVImageView) findViewById(R.id.bubble_bg);
        this.bubbleBg.setShowPressedMask(false);
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
        for (int i = 0; i < this.root.getChildCount(); i++) {
            View childAt = this.root.getChildAt(i);
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

    private void removeAllSlots() {
        while (this.root.getChildCount() > 1) {
            this.root.removeViewAt(1);
        }
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
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
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
                int i = this.bubbleSlotSize;
                int i2 = (int) (i * 0.5f);
                int dimensionPixelSize2 = (int) ((i * 0.5f) + getResources().getDimensionPixelSize(R.dimen.bubble_slot_delete_half_size));
                float f = slotPoint.x;
                float f2 = this.bubbleService.scaleXY;
                this.root.addView(slotEditView, this.bubbleHelper.getSlotLayParams(R.id.bubble_bg, dimensionPixelSize, dimensionPixelSize, slotPoint.align, (int) (i * 0.5f), (int) ((this.bubbleSlotSize * 0.5f) + getResources().getDimensionPixelSize(R.dimen.bubble_slot_delete_half_size)), dimensionPixelSize2, i2, (int) (f * f2 * 2.0f), (int) (slotPoint.y * f2 * 2.0f), true));
            }
        }
    }

    public void loseFocus(BubbleInfo bubbleInfo) {
        this.curFocusedSlot = null;
        updateSlotViews(bubbleInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap getPreviewBitmap(com.narvii.model.BubbleInfo r14) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.bubble.BubbleEditView.getPreviewBitmap(com.narvii.model.BubbleInfo):android.graphics.Bitmap");
    }

    private void hideSlotBackground() {
        for (int i = 0; i < this.root.getChildCount(); i++) {
            View childAt = this.root.getChildAt(i);
            if (childAt instanceof SlotEditView) {
                ((SlotEditView) childAt).imgSlot.setBackgroundDrawable(null);
            }
        }
    }
}
