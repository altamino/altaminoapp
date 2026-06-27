package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.util.Utils;
import com.narvii.util.drawables.DrawableUtils;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes3.dex */
public class MoodView extends FrameLayout {
    private static final float AMINO_PLUS_SCALE_FACOTR = 1.15f;
    private static final float MAX_SCALE = 1.2f;
    private static final float MAX_SHAKE_SCALE = 4.0f;
    private static final float MAX_TIME_SCALE = 5.0f;
    private static SensorManager sensorManager;
    private boolean anim;
    private AvatarFrameLoader avatarFrameLoader;
    private Drawable bg1;
    private Drawable bg2;
    private Drawable bg3;
    private Drawable cd1;
    private Drawable cd2;
    private Drawable cd3;
    CommunityConfigHelper communityConfigHelper;
    private User curLoadingUser;
    private float currentScale;
    private float currentTime;
    private float cx;
    private float cy;
    private Drawable d1;
    private Drawable d2;
    private Drawable d3;
    private EmojionePlusView emojioneView;
    private float initScaleX;
    private float initScaleY;
    private float pendingScale;
    private long prevTime;
    private Rect rect;
    private WeakReference<MoodView> regedRef;
    private Random rnd;
    private float shakeScaleX;
    private float shakeScaleY;
    private Sticker sticker;
    private StickerBubbleView stickerBubbleView;
    private float timeScale;
    private float xmult;
    private double xtmult;
    private long xtoffset;
    private float ymult;
    private double ytmult;
    private long ytoffset;
    public static final View.OnClickListener SHAKE_ON_CLICK_LISTENER = new View.OnClickListener() { // from class: com.narvii.widget.MoodView.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof MoodView) {
                ((MoodView) view).shakeTouch();
            }
        }
    };
    private static final HashSet<WeakReference<MoodView>> listeners = new HashSet<>();
    private static final SensorEventListener sensorEventListener = new SensorEventListener() { // from class: com.narvii.widget.MoodView.2
        boolean inited = false;
        float px = 0.0f;
        float py = 0.0f;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            int i = 0;
            float f = fArr[0];
            float f2 = fArr[1];
            if (this.inited) {
                float f3 = f - this.px;
                float f4 = f2 - this.py;
                this.px = f;
                this.py = f2;
                if (Math.abs(f3) + Math.abs(f4) < 0.84f) {
                    return;
                }
                Iterator it = MoodView.listeners.iterator();
                while (it.hasNext()) {
                    MoodView moodView = (MoodView) ((WeakReference) it.next()).get();
                    if (moodView == null) {
                        it.remove();
                    } else {
                        moodView.shakeSensor(f3 * 0.1f, 0.1f * f4);
                        i++;
                    }
                }
                if (i == 0) {
                    MoodView.sensorManager.unregisterListener(this);
                    return;
                }
                return;
            }
            this.px = f;
            this.py = f2;
            this.inited = true;
        }
    };
    public static final int borderColorMembership = Color.parseColor("#ffb935");
    public static final int borderColorDefault = Color.parseColor("#7ccdf2");

    public MoodView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.timeScale = 0.0f;
        this.shakeScaleX = 0.0f;
        this.shakeScaleY = 0.0f;
        this.currentScale = 0.0f;
        this.pendingScale = 0.0f;
        setWillNotDraw(false);
        this.avatarFrameLoader = (AvatarFrameLoader) Utils.getNVContext(getContext()).getService("avatarFrameLoader");
        Resources resources = context.getResources();
        this.d1 = resources.getDrawable(R.drawable.mood_view_tint_border_lv3);
        this.d2 = resources.getDrawable(R.drawable.mood_view_tint_border_lv2);
        this.d3 = resources.getDrawable(R.drawable.mood_view_tint_border_lv1);
        this.bg1 = resources.getDrawable(R.drawable.mood_view_white_bg_lv3);
        this.bg2 = resources.getDrawable(R.drawable.mood_view_white_bg_lv2);
        this.bg3 = resources.getDrawable(R.drawable.mood_view_white_bg_lv1);
        this.cd1 = this.d1;
        this.cd2 = this.d2;
        this.cd3 = this.d3;
        this.rect = new Rect();
        this.rnd = new Random(hashCode());
        this.initScaleX = getScaleX();
        this.initScaleY = getScaleY();
        shuffle();
        this.emojioneView = new EmojionePlusView(getContext(), null);
        int intrinsicWidth = (int) (this.d3.getIntrinsicWidth() * 0.58f);
        this.emojioneView.setLayoutParams(new FrameLayout.LayoutParams(intrinsicWidth, intrinsicWidth));
        this.emojioneView.setVisibility(8);
        addView(this.emojioneView);
        this.stickerBubbleView = new StickerBubbleView(getContext(), null);
        this.stickerBubbleView.setLayoutParams(new FrameLayout.LayoutParams(this.d3.getIntrinsicWidth(), this.d3.getIntrinsicHeight()));
        this.stickerBubbleView.setVisibility(8);
        addView(this.stickerBubbleView);
        this.communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
    }

    public void setAnimate(boolean z) {
        this.anim = z;
        if (z) {
            invalidate();
        }
        updateReg();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateReg();
        this.avatarFrameLoader.removeCallbackByTag(getContext());
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        updateReg();
    }

    private void updateReg() {
        if (this.anim && getWindowVisibility() == 0) {
            if (this.regedRef == null) {
                if (listeners.isEmpty()) {
                    if (sensorManager == null) {
                        try {
                            sensorManager = (SensorManager) getContext().getApplicationContext().getSystemService("sensor");
                        } catch (Exception unused) {
                        }
                    }
                    SensorManager sensorManager2 = sensorManager;
                    if (sensorManager2 != null) {
                        sensorManager2.registerListener(sensorEventListener, sensorManager2.getDefaultSensor(1), 3);
                    }
                }
                this.regedRef = new WeakReference<>(this);
                listeners.add(this.regedRef);
                return;
            }
            return;
        }
        WeakReference<MoodView> weakReference = this.regedRef;
        if (weakReference != null) {
            listeners.remove(weakReference);
            this.regedRef = null;
        }
    }

    public void setMoodSticker(User user) {
        setMoodSticker(user, user == null ? null : user.getMoodSticker());
    }

    public void setMoodSticker(User user, final Sticker sticker, final boolean z) {
        this.sticker = sticker;
        this.curLoadingUser = user;
        if (user != null && user.hasAvatarFrame()) {
            this.avatarFrameLoader.load(user.avatarFrame, user.uid, getContext(), new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.widget.MoodView.3
                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onProgressUpdate(int i, int i2, String str) {
                }

                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onError(String str, String str2, Exception exc) {
                    if (TextUtils.equals(str2, MoodView.this.curLoadingUser.uid)) {
                        MoodView.this.setDefaultMoodSticker(sticker, z);
                    }
                }

                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onPostExecute(AvatarFrameConfig avatarFrameConfig, String str) {
                    if (TextUtils.equals(str, MoodView.this.curLoadingUser.uid)) {
                        MoodView.this.updateMoodColor(avatarFrameConfig.getMoodColor());
                    }
                }
            });
        } else {
            setDefaultMoodSticker(sticker, z);
        }
    }

    public void setMoodSticker(User user, Sticker sticker) {
        setMoodSticker(user, sticker, user != null && user.isSubscribeMemberShip() && this.communityConfigHelper.isPremiumFeatureEnabled());
    }

    public void updateMoodColor(int i) {
        this.cd1 = DrawableUtils.tintDrawable(this.d1, i);
        this.cd2 = DrawableUtils.tintDrawable(this.d2, i);
        this.cd3 = DrawableUtils.tintDrawable(this.d3, i);
        setScaleX(this.initScaleX * AMINO_PLUS_SCALE_FACOTR);
        setScaleY(this.initScaleY * AMINO_PLUS_SCALE_FACOTR);
        setupSticker(i);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultMoodSticker(Sticker sticker, boolean z) {
        this.sticker = sticker;
        boolean z2 = z && this.communityConfigHelper.isPremiumFeatureEnabled();
        if (z2) {
            this.cd1 = DrawableUtils.tintDrawable(this.d1, borderColorMembership);
            this.cd2 = DrawableUtils.tintDrawable(this.d2, borderColorMembership);
            this.cd3 = DrawableUtils.tintDrawable(this.d3, borderColorMembership);
            setScaleX(this.initScaleX * AMINO_PLUS_SCALE_FACOTR);
            setScaleY(this.initScaleY * AMINO_PLUS_SCALE_FACOTR);
        } else {
            this.cd1 = DrawableUtils.tintDrawable(this.d1, borderColorDefault);
            this.cd2 = DrawableUtils.tintDrawable(this.d2, borderColorDefault);
            this.cd3 = DrawableUtils.tintDrawable(this.d3, borderColorDefault);
            setScaleX(this.initScaleX);
            setScaleY(this.initScaleY);
        }
        setupSticker(z2 ? borderColorMembership : borderColorDefault);
        invalidate();
    }

    private void setupSticker(int i) {
        Sticker sticker = this.sticker;
        if (sticker == null || sticker.isLocalMood()) {
            EmojionePlusView emojionePlusView = this.emojioneView;
            Sticker sticker2 = this.sticker;
            emojionePlusView.setEmoji(sticker2 == null ? null : sticker2.getMoodUnicode());
            this.emojioneView.setVisibility(0);
            this.emojioneView.setViewColor(i);
            this.stickerBubbleView.setVisibility(8);
            return;
        }
        this.emojioneView.setVisibility(8);
        this.stickerBubbleView.setVisibility(0);
        this.stickerBubbleView.setSticker(this.sticker);
    }

    public void shuffle() {
        this.xtoffset = this.rnd.nextInt(10000);
        this.ytoffset = this.rnd.nextInt(10000);
        this.xtmult = 0.006283185307179587d / ((this.rnd.nextDouble() * 2.0d) + 1.5d);
        this.ytmult = 0.006283185307179587d / ((this.rnd.nextDouble() * 2.0d) + 2.5d);
        this.xmult = (this.rnd.nextFloat() * 0.5f) + 0.5f;
        this.ymult = (this.rnd.nextFloat() * 0.8f) + 0.2f;
    }

    void shakeSensor(float f, float f2) {
        this.timeScale = Math.min(MAX_TIME_SCALE, this.timeScale + Math.abs(f) + Math.abs(f2));
        this.shakeScaleX = Math.min(MAX_SHAKE_SCALE, this.shakeScaleX + Math.abs(f));
        this.shakeScaleY = Math.min(MAX_SHAKE_SCALE, this.shakeScaleY + Math.abs(f2));
    }

    public void shakeCrazily() {
        shakeSensor(1000.0f, 1000.0f);
    }

    public void shakeTouch() {
        this.timeScale = Math.min(MAX_TIME_SCALE, (this.timeScale + 6.75f) / 2.0f);
        this.shakeScaleX = Math.min(MAX_SHAKE_SCALE, (this.shakeScaleX + 5.4f) / 2.0f);
        this.shakeScaleY = Math.min(MAX_SHAKE_SCALE, (this.shakeScaleY + 5.4f) / 2.0f);
        this.pendingScale = Math.min(2.4f, this.pendingScale + 0.8f);
    }

    private void calcXY(long j) {
        float fMin;
        float fMin2;
        float fMin3;
        float fMin4;
        long j2 = this.prevTime;
        if (j2 == 0) {
            this.currentTime = 0.0f;
        } else {
            long jMax = Math.max(0L, Math.min(300L, j - j2));
            float f = this.currentTime;
            float f2 = jMax;
            float f3 = this.timeScale;
            this.currentTime = f + (f2 * f3) + f2;
            if (f3 > 0.0f) {
                if (f3 > 2.4f) {
                    fMin4 = Math.min(f3, (3.2f * f2) / 1000.0f);
                } else {
                    fMin4 = Math.min(f3, (1.8f * f2) / 1000.0f);
                }
                this.timeScale -= fMin4;
            }
            float f4 = this.shakeScaleX;
            if (f4 > 0.0f) {
                if (f4 > 1.5f) {
                    fMin3 = Math.min(f4, (f2 * 1.35f) / 1000.0f);
                } else {
                    fMin3 = Math.min(f4, (f2 * 1.0f) / 1000.0f);
                }
                this.shakeScaleX -= fMin3;
            }
            float f5 = this.shakeScaleY;
            if (f5 > 0.0f) {
                if (f5 > 1.5f) {
                    fMin2 = Math.min(f5, (1.35f * f2) / 1000.0f);
                } else {
                    fMin2 = Math.min(f5, (1.0f * f2) / 1000.0f);
                }
                this.shakeScaleY -= fMin2;
            }
            float f6 = this.pendingScale;
            if (f6 > 0.0f) {
                float fMin5 = Math.min(f6, (f2 * 8.0f) / 1000.0f);
                this.pendingScale -= fMin5;
                this.currentScale = Math.min(1.2f, this.currentScale + fMin5);
            } else {
                float f7 = this.currentScale;
                if (f7 > 0.0f) {
                    if (f7 > 0.8f) {
                        fMin = Math.min(f7, (f2 * 1.55f) / 1000.0f);
                    } else {
                        fMin = Math.min(f7, (f2 * 0.85f) / 1000.0f);
                    }
                    this.currentScale -= fMin;
                }
            }
        }
        this.prevTime = j;
        int width = getWidth();
        int height = getHeight();
        float f8 = width;
        this.cx = 0.58f * f8;
        float f9 = height;
        this.cy = 0.55f * f9;
        if (this.anim) {
            float intrinsicWidth = (f8 - this.cx) - (this.bg3.getIntrinsicWidth() * 0.5f);
            float intrinsicHeight = (f9 - this.cy) - (this.bg3.getIntrinsicHeight() * 0.5f);
            float f10 = intrinsicWidth * (this.xmult + this.shakeScaleX);
            double d = this.xtmult;
            double d2 = this.currentTime + this.xtoffset;
            Double.isNaN(d2);
            float fSin = f10 * ((float) Math.sin(d * d2));
            float f11 = intrinsicHeight * (this.ymult + (this.shakeScaleY * 6.8f));
            double d3 = this.ytmult;
            double d4 = this.currentTime + this.ytoffset;
            Double.isNaN(d4);
            float fSin2 = f11 * ((float) Math.sin(d3 * d4));
            this.cx += fSin;
            this.cy += fSin2;
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        calcXY(AnimationUtils.currentAnimationTimeMillis());
        super.draw(canvas);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        if (Utils.isRtl()) {
            float width = getWidth();
            float f = height;
            draw(canvas, this.bg1, width - (this.cx * 0.35f), f - (this.cy * 0.35f), 1.0f, true);
            draw(canvas, this.cd1, width - (this.cx * 0.35f), f - (this.cy * 0.35f), 1.0f, false);
            draw(canvas, this.bg2, width - (this.cx * 0.48f), f - (this.cy * 0.48f), 1.0f, true);
            draw(canvas, this.cd2, width - (this.cx * 0.48f), f - (this.cy * 0.48f), 1.0f, false);
            draw(canvas, this.bg3, width - this.cx, f - this.cy, this.currentScale + 1.0f, true);
            draw(canvas, this.cd3, width - this.cx, f - this.cy, this.currentScale + 1.0f, false);
        } else {
            float f2 = height;
            draw(canvas, this.bg1, this.cx * 0.35f, f2 - (this.cy * 0.35f), 1.0f, true);
            draw(canvas, this.cd1, this.cx * 0.35f, f2 - (this.cy * 0.35f), 1.0f, false);
            draw(canvas, this.bg2, this.cx * 0.48f, f2 - (this.cy * 0.48f), 1.0f, true);
            draw(canvas, this.cd2, this.cx * 0.48f, f2 - (this.cy * 0.48f), 1.0f, false);
            draw(canvas, this.bg3, this.cx, f2 - this.cy, this.currentScale + 1.0f, true);
            draw(canvas, this.cd3, this.cx, f2 - this.cy, this.currentScale + 1.0f, false);
        }
        if (this.anim) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int iSave = canvas.save();
        if (Utils.isRtl()) {
            canvas.translate((-this.cx) + (view.getWidth() / 2.0f), (getHeight() - this.cy) - (view.getHeight() / 2.0f));
        } else {
            canvas.translate(this.cx - (view.getWidth() / 2.0f), (getHeight() - this.cy) - (view.getHeight() / 2.0f));
        }
        float f = this.currentScale;
        canvas.scale((f * 1.75f) + 1.0f, (f * 1.75f) + 1.0f, view.getWidth() / 2.0f, view.getHeight() / 2.0f);
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    private void draw(Canvas canvas, Drawable drawable, float f, float f2, float f3, boolean z) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Rect rect = this.rect;
        rect.left = (int) (f - (intrinsicWidth * 0.5f));
        rect.right = rect.left + intrinsicWidth;
        rect.top = ((int) (f2 - (intrinsicHeight * 0.5f))) - (z ? 0 : Utils.dpToPxInt(getContext(), AMINO_PLUS_SCALE_FACOTR));
        Rect rect2 = this.rect;
        rect2.bottom = rect2.top + intrinsicHeight;
        drawable.setBounds(rect2);
        drawable.draw(canvas);
    }
}
