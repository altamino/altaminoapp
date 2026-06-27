package com.narvii.livelayer.detailview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Utils;
import java.util.Random;

/* loaded from: classes3.dex */
public class AutoBubbleView extends LinearLayout {
    private static final int ANIMATION_DURATION = 500;
    private static final int ANIMATION_INTERVAL = 3000;
    private int BUBBLE_DIVIDER;
    private int BUBBLE_HEIGHT;
    private int MOVE_DISTANCE;
    private Runnable autoRun;
    private Handler handler;
    private ImageView[] views;
    private static final Random RANDOM = new Random(System.currentTimeMillis());
    private static String[] BUBBLE_TEXT = {"👀🙋", "🐶😺😹", "👏👏👏👏👏", "🌼🌈😊👉", "🐶😺😹", "👉👉", "❤️😄❤️", "👋🌸☀️☀️", "👌✨", "🙋\u200d♂️🙋🙇\u200d♀️", "🚶🏃🚶🏃", "👀😱🙄", "🐥", "🍀🍀", "🍉🍉🍎🍎", "🍓🍇🍐", "🍭🍭🍬🍬", "🍻", "🏀⚽️🏐⚾️", "🎁🎁🎁", "🎈🎈🎊🎊🎈"};
    private static Bitmap[] BUBBLE_BMP = new Bitmap[BUBBLE_TEXT.length];

    public AutoBubbleView(Context context, AttributeSet attributeSet) {
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
                AutoBubbleView.this.handler.postDelayed(this, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
            }
        };
        this.BUBBLE_HEIGHT = (int) Utils.dpToPx(getContext(), 20.0f);
        this.BUBBLE_DIVIDER = (int) Utils.dpToPx(getContext(), 4.0f);
        this.MOVE_DISTANCE = this.BUBBLE_HEIGHT + this.BUBBLE_DIVIDER;
        setOrientation(1);
        setGravity(8388691);
        setClipChildren(true);
        setClipToPadding(true);
        this.views = new ImageView[3];
        for (int i = 0; i < this.views.length; i++) {
            ImageView imageView = new ImageView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.BUBBLE_HEIGHT);
            if (i < this.views.length - 1) {
                layoutParams.bottomMargin = this.BUBBLE_DIVIDER;
            }
            imageView.setLayoutParams(layoutParams);
            addView(imageView);
            this.views[i] = imageView;
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (Build.VERSION.SDK_INT >= 19) {
            this.handler.removeCallbacks(this.autoRun);
            if (i == 0) {
                this.handler.postDelayed(this.autoRun, (long) ((Math.random() * 500.0d) + 500.0d));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.graphics.drawable.Drawable] */
    public void insertBubble(Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = bitmap == null ? null : new BitmapDrawable(getResources(), bitmap);
        int length = this.views.length - 1;
        while (length >= 0) {
            ImageView imageView = this.views[length];
            ?? drawable = imageView.getDrawable();
            imageView.setImageDrawable(bitmapDrawable);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.MOVE_DISTANCE, 0.0f);
            translateAnimation.setDuration(500L);
            imageView.startAnimation(translateAnimation);
            length--;
            bitmapDrawable = drawable;
        }
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
}
