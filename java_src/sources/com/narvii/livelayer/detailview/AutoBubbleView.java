package com.narvii.livelayer.detailview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public class AutoBubbleView extends LinearLayout {
    private static final int ANIMATION_DURATION = 500;
    private static final int ANIMATION_INTERVAL = 3000;
    private static Bitmap[] BUBBLE_BMP;
    private static String[] BUBBLE_TEXT;
    private static final Random RANDOM = new Random(System.currentTimeMillis());
    private int BUBBLE_DIVIDER;
    private int BUBBLE_HEIGHT;
    private int MOVE_DISTANCE;
    private Runnable autoRun;
    private Handler handler;
    private ImageView[] views;

    static {
        String[] strArr = {"👀🙋", "🐶😺😹", "👏👏👏👏👏", "🌼🌈😊👉", "🐶😺😹", "👉👉", "❤️😄❤️", "👋🌸☀️☀️", "👌✨", "🙋\u200d♂️🙋🙇\u200d♀️", "🚶🏃🚶🏃", "👀😱🙄", "🐥", "🍀🍀", "🍉🍉🍎🍎", "🍓🍇🍐", "🍭🍭🍬🍬", "🍻", "🏀⚽️🏐⚾️", "🎁🎁🎁", "🎈🎈🎊🎊🎈"};
        BUBBLE_TEXT = strArr;
        BUBBLE_BMP = new Bitmap[strArr.length];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getRandomBubble() {
        int iNextInt = RANDOM.nextInt(BUBBLE_BMP.length);
        Bitmap bitmap = BUBBLE_BMP[iNextInt];
        if (bitmap != null) {
            return bitmap;
        }
        LiveLayerChatBubbleView liveLayerChatBubbleView = new LiveLayerChatBubbleView(getContext(), null);
        liveLayerChatBubbleView.setLayoutParams(new LinearLayout.LayoutParams(-2, this.BUBBLE_HEIGHT));
        liveLayerChatBubbleView.setText(BUBBLE_TEXT[iNextInt]);
        liveLayerChatBubbleView.measure(View.MeasureSpec.makeMeasureSpec((int) Utils.dpToPx(getContext(), 100.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.BUBBLE_HEIGHT, 1073741824));
        int measuredWidth = liveLayerChatBubbleView.getMeasuredWidth();
        int measuredHeight = liveLayerChatBubbleView.getMeasuredHeight();
        liveLayerChatBubbleView.layout(0, 0, measuredWidth, measuredHeight);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(0);
        liveLayerChatBubbleView.draw(new Canvas(bitmapCreateBitmap));
        BUBBLE_BMP[iNextInt] = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertBubble(Bitmap bitmap) {
        Drawable bitmapDrawable = bitmap == null ? null : new BitmapDrawable(getResources(), bitmap);
        int length = this.views.length - 1;
        while (length >= 0) {
            ImageView imageView = this.views[length];
            Drawable drawable = imageView.getDrawable();
            imageView.setImageDrawable(bitmapDrawable);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.MOVE_DISTANCE, 0.0f);
            translateAnimation.setDuration(500L);
            imageView.startAnimation(translateAnimation);
            length--;
            bitmapDrawable = drawable;
        }
    }

    public AutoBubbleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.MOVE_DISTANCE = 100;
        this.BUBBLE_HEIGHT = 0;
        this.BUBBLE_DIVIDER = 0;
        this.handler = Utils.handler;
        this.autoRun = new Runnable() { // from class: com.narvii.livelayer.detailview.AutoBubbleView.1
            @Override // java.lang.Runnable
            public void run() {
                AutoBubbleView autoBubbleView = AutoBubbleView.this;
                autoBubbleView.insertBubble(autoBubbleView.getRandomBubble());
                AutoBubbleView.this.handler.postDelayed(this, 3000L);
            }
        };
        this.BUBBLE_HEIGHT = (int) Utils.dpToPx(getContext(), 20.0f);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 4.0f);
        this.BUBBLE_DIVIDER = iDpToPx;
        this.MOVE_DISTANCE = this.BUBBLE_HEIGHT + iDpToPx;
        setOrientation(1);
        setGravity(8388691);
        setClipChildren(true);
        setClipToPadding(true);
        this.views = new ImageView[3];
        for (int i10 = 0; i10 < this.views.length; i10++) {
            View imageView = new ImageView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.BUBBLE_HEIGHT);
            if (i10 < this.views.length - 1) {
                layoutParams.bottomMargin = this.BUBBLE_DIVIDER;
            }
            imageView.setLayoutParams(layoutParams);
            addView(imageView);
            this.views[i10] = imageView;
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.handler.removeCallbacks(this.autoRun);
        if (i10 == 0) {
            this.handler.postDelayed(this.autoRun, (long) ((Math.random() * 500.0d) + 500.0d));
        }
    }
}
