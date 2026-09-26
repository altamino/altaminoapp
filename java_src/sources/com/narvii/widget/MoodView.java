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
import androidx.annotation.ColorInt;
import com.narvii.amino.master.R;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
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

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    private Drawable f3070d1;
    private Drawable d2;

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    private Drawable f3071d3;
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
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            int i10 = 0;
            float f = fArr[0];
            float f6 = fArr[1];
            if (!this.inited) {
                this.px = f;
                this.py = f6;
                this.inited = true;
                return;
            }
            float f7 = f - this.px;
            float f10 = f6 - this.py;
            this.px = f;
            this.py = f6;
            if (Math.abs(f7) + Math.abs(f10) < 0.84f) {
                return;
            }
            Iterator it = MoodView.listeners.iterator();
            while (it.hasNext()) {
                MoodView moodView = (MoodView) ((WeakReference) it.next()).get();
                if (moodView == null) {
                    it.remove();
                } else {
                    moodView.shakeSensor(f7 * 0.1f, 0.1f * f10);
                    i10++;
                }
            }
            if (i10 == 0) {
                MoodView.sensorManager.unregisterListener(this);
            }
        }
    };
    public static final int borderColorMembership = Color.parseColor("#ffb935");
    public static final int borderColorDefault = Color.parseColor("#7ccdf2");

    @Override // android.view.View
    public void draw(Canvas canvas) {
        calcXY(AnimationUtils.currentAnimationTimeMillis());
        super.draw(canvas);
    }

    public void setMoodSticker(User user) {
        setMoodSticker(user, user == null ? null : user.getMoodSticker());
    }

    private void calcXY(long j6) {
        long j10 = this.prevTime;
        if (j10 == 0) {
            this.currentTime = 0.0f;
        } else {
            long jMax = Math.max(0L, Math.min(300L, j6 - j10));
            float f = this.currentTime;
            float f6 = jMax;
            float f7 = this.timeScale;
            this.currentTime = f + (f6 * f7) + f6;
            if (f7 > 0.0f) {
                this.timeScale -= f7 > 2.4f ? Math.min(f7, (3.2f * f6) / 1000.0f) : Math.min(f7, (1.8f * f6) / 1000.0f);
            }
            float f10 = this.shakeScaleX;
            if (f10 > 0.0f) {
                this.shakeScaleX -= f10 > 1.5f ? Math.min(f10, (f6 * 1.35f) / 1000.0f) : Math.min(f10, (f6 * 1.0f) / 1000.0f);
            }
            float f11 = this.shakeScaleY;
            if (f11 > 0.0f) {
                this.shakeScaleY -= f11 > 1.5f ? Math.min(f11, (1.35f * f6) / 1000.0f) : Math.min(f11, (1.0f * f6) / 1000.0f);
            }
            float f12 = this.pendingScale;
            if (f12 > 0.0f) {
                float fMin = Math.min(f12, (f6 * 8.0f) / 1000.0f);
                this.pendingScale -= fMin;
                this.currentScale = Math.min(1.2f, this.currentScale + fMin);
            } else {
                float f13 = this.currentScale;
                if (f13 > 0.0f) {
                    this.currentScale -= f13 > 0.8f ? Math.min(f13, (f6 * 1.55f) / 1000.0f) : Math.min(f13, (f6 * 0.85f) / 1000.0f);
                }
            }
        }
        this.prevTime = j6;
        int width = getWidth();
        int height = getHeight();
        float f14 = width;
        float f15 = 0.58f * f14;
        this.cx = f15;
        float f16 = height;
        this.cy = 0.55f * f16;
        if (this.anim) {
            float intrinsicWidth = (f14 - f15) - (this.bg3.getIntrinsicWidth() * 0.5f);
            float intrinsicHeight = (f16 - this.cy) - (this.bg3.getIntrinsicHeight() * 0.5f);
            float fSin = intrinsicWidth * (this.xmult + this.shakeScaleX) * ((float) Math.sin(this.xtmult * ((double) (this.currentTime + this.xtoffset))));
            float fSin2 = intrinsicHeight * (this.ymult + (this.shakeScaleY * 6.8f)) * ((float) Math.sin(this.ytmult * ((double) (this.currentTime + this.ytoffset))));
            this.cx += fSin;
            this.cy += fSin2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultMoodSticker(Sticker sticker, boolean z6) {
        this.sticker = sticker;
        boolean z10 = z6 && this.communityConfigHelper.isPremiumFeatureEnabled();
        if (z10) {
            Drawable drawable = this.f3070d1;
            int i10 = borderColorMembership;
            this.cd1 = DrawableUtils.tintDrawable(drawable, i10);
            this.cd2 = DrawableUtils.tintDrawable(this.d2, i10);
            this.cd3 = DrawableUtils.tintDrawable(this.f3071d3, i10);
            setScaleX(this.initScaleX * AMINO_PLUS_SCALE_FACOTR);
            setScaleY(this.initScaleY * AMINO_PLUS_SCALE_FACOTR);
        } else {
            Drawable drawable2 = this.f3070d1;
            int i11 = borderColorDefault;
            this.cd1 = DrawableUtils.tintDrawable(drawable2, i11);
            this.cd2 = DrawableUtils.tintDrawable(this.d2, i11);
            this.cd3 = DrawableUtils.tintDrawable(this.f3071d3, i11);
            setScaleX(this.initScaleX);
            setScaleY(this.initScaleY);
        }
        setupSticker(z10 ? borderColorMembership : borderColorDefault);
        invalidate();
    }

    private void setupSticker(@ColorInt int i10) {
        Sticker sticker = this.sticker;
        if (sticker != null && !sticker.isLocalMood()) {
            this.emojioneView.setVisibility(8);
            this.stickerBubbleView.setVisibility(0);
            this.stickerBubbleView.setSticker(this.sticker);
        } else {
            EmojionePlusView emojionePlusView = this.emojioneView;
            Sticker sticker2 = this.sticker;
            emojionePlusView.setEmoji(sticker2 == null ? null : sticker2.getMoodUnicode());
            this.emojioneView.setVisibility(0);
            this.emojioneView.setViewColor(i10);
            this.stickerBubbleView.setVisibility(8);
        }
    }

    private void updateReg() {
        if (!this.anim || getWindowVisibility() != 0) {
            WeakReference<MoodView> weakReference = this.regedRef;
            if (weakReference != null) {
                listeners.remove(weakReference);
                this.regedRef = null;
                return;
            }
            return;
        }
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
            WeakReference<MoodView> weakReference2 = new WeakReference<>(this);
            this.regedRef = weakReference2;
            listeners.add(weakReference2);
        }
    }

    public void setAnimate(boolean z6) {
        this.anim = z6;
        if (z6) {
            invalidate();
        }
        updateReg();
    }

    public void setMoodSticker(User user, final Sticker sticker, final boolean z6) {
        this.sticker = sticker;
        this.curLoadingUser = user;
        if (user == null || !user.hasAvatarFrame()) {
            setDefaultMoodSticker(sticker, z6);
        } else {
            this.avatarFrameLoader.load(user.avatarFrame, user.uid, getContext(), new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.widget.MoodView.3
                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onProgressUpdate(int i10, int i11, String str) {
                }

                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onError(@NotNull String str, String str2, @Nullable Exception exc) {
                    if (TextUtils.equals(str2, MoodView.this.curLoadingUser.uid)) {
                        MoodView.this.setDefaultMoodSticker(sticker, z6);
                    }
                }

                @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                public void onPostExecute(@NotNull AvatarFrameConfig avatarFrameConfig, String str) {
                    if (TextUtils.equals(str, MoodView.this.curLoadingUser.uid)) {
                        MoodView.this.updateMoodColor(avatarFrameConfig.getMoodColor());
                    }
                }
            });
        }
    }

    public void shakeCrazily() {
        shakeSensor(1000.0f, 1000.0f);
    }

    void shakeSensor(float f, float f6) {
        this.timeScale = Math.min(MAX_TIME_SCALE, this.timeScale + Math.abs(f) + Math.abs(f6));
        this.shakeScaleX = Math.min(4.0f, this.shakeScaleX + Math.abs(f));
        this.shakeScaleY = Math.min(4.0f, this.shakeScaleY + Math.abs(f6));
    }

    public void shakeTouch() {
        this.timeScale = Math.min(MAX_TIME_SCALE, (this.timeScale + 6.75f) / 2.0f);
        this.shakeScaleX = Math.min(4.0f, (this.shakeScaleX + 5.4f) / 2.0f);
        this.shakeScaleY = Math.min(4.0f, (this.shakeScaleY + 5.4f) / 2.0f);
        this.pendingScale = Math.min(2.4f, this.pendingScale + 0.8f);
    }

    public void shuffle() {
        this.xtoffset = this.rnd.nextInt(10000);
        this.ytoffset = this.rnd.nextInt(10000);
        this.xtmult = 0.006283185307179587d / ((this.rnd.nextDouble() * 2.0d) + 1.5d);
        this.ytmult = 0.006283185307179587d / ((this.rnd.nextDouble() * 2.0d) + 2.5d);
        this.xmult = (this.rnd.nextFloat() * 0.5f) + 0.5f;
        this.ymult = (this.rnd.nextFloat() * 0.8f) + 0.2f;
    }

    public void updateMoodColor(@ColorInt int i10) {
        this.cd1 = DrawableUtils.tintDrawable(this.f3070d1, i10);
        this.cd2 = DrawableUtils.tintDrawable(this.d2, i10);
        this.cd3 = DrawableUtils.tintDrawable(this.f3071d3, i10);
        setScaleX(this.initScaleX * AMINO_PLUS_SCALE_FACOTR);
        setScaleY(this.initScaleY * AMINO_PLUS_SCALE_FACOTR);
        setupSticker(i10);
        invalidate();
    }

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
        this.f3070d1 = resources.getDrawable(R.drawable.mood_view_tint_border_lv3);
        this.d2 = resources.getDrawable(R.drawable.mood_view_tint_border_lv2);
        this.f3071d3 = resources.getDrawable(R.drawable.mood_view_tint_border_lv1);
        this.bg1 = resources.getDrawable(R.drawable.mood_view_white_bg_lv3);
        this.bg2 = resources.getDrawable(R.drawable.mood_view_white_bg_lv2);
        this.bg3 = resources.getDrawable(R.drawable.mood_view_white_bg_lv1);
        this.cd1 = this.f3070d1;
        this.cd2 = this.d2;
        this.cd3 = this.f3071d3;
        this.rect = new Rect();
        this.rnd = new Random(hashCode());
        this.initScaleX = getScaleX();
        this.initScaleY = getScaleY();
        shuffle();
        this.emojioneView = new EmojionePlusView(getContext(), null);
        int intrinsicWidth = (int) (this.f3071d3.getIntrinsicWidth() * 0.58f);
        this.emojioneView.setLayoutParams(new FrameLayout.LayoutParams(intrinsicWidth, intrinsicWidth));
        this.emojioneView.setVisibility(8);
        addView(this.emojioneView);
        StickerBubbleView stickerBubbleView = new StickerBubbleView(getContext(), null);
        this.stickerBubbleView = stickerBubbleView;
        stickerBubbleView.setLayoutParams(new FrameLayout.LayoutParams(this.f3071d3.getIntrinsicWidth(), this.f3071d3.getIntrinsicHeight()));
        this.stickerBubbleView.setVisibility(8);
        addView(this.stickerBubbleView);
        this.communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
    }

    private void draw(Canvas canvas, Drawable drawable, float f, float f6, float f7, boolean z6) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Rect rect = this.rect;
        int i10 = (int) (f - (intrinsicWidth * 0.5f));
        rect.left = i10;
        rect.right = i10 + intrinsicWidth;
        rect.top = ((int) (f6 - (intrinsicHeight * 0.5f))) - (z6 ? 0 : Utils.dpToPxInt(getContext(), AMINO_PLUS_SCALE_FACOTR));
        Rect rect2 = this.rect;
        rect2.bottom = rect2.top + intrinsicHeight;
        drawable.setBounds(rect2);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int iSave = canvas.save();
        if (Utils.isRtl()) {
            canvas.translate((-this.cx) + (view.getWidth() / 2.0f), (getHeight() - this.cy) - (view.getHeight() / 2.0f));
        } else {
            canvas.translate(this.cx - (view.getWidth() / 2.0f), (getHeight() - this.cy) - (view.getHeight() / 2.0f));
        }
        float f = this.currentScale;
        canvas.scale((f * 1.75f) + 1.0f, (f * 1.75f) + 1.0f, view.getWidth() / 2.0f, view.getHeight() / 2.0f);
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateReg();
        this.avatarFrameLoader.removeCallbackByTag(getContext());
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
            float f6 = height;
            draw(canvas, this.bg1, this.cx * 0.35f, f6 - (this.cy * 0.35f), 1.0f, true);
            draw(canvas, this.cd1, this.cx * 0.35f, f6 - (this.cy * 0.35f), 1.0f, false);
            draw(canvas, this.bg2, this.cx * 0.48f, f6 - (this.cy * 0.48f), 1.0f, true);
            draw(canvas, this.cd2, this.cx * 0.48f, f6 - (this.cy * 0.48f), 1.0f, false);
            draw(canvas, this.bg3, this.cx, f6 - this.cy, this.currentScale + 1.0f, true);
            draw(canvas, this.cd3, this.cx, f6 - this.cy, this.currentScale + 1.0f, false);
        }
        if (this.anim) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        updateReg();
    }

    public void setMoodSticker(User user, Sticker sticker) {
        setMoodSticker(user, sticker, user != null && user.isSubscribeMemberShip() && this.communityConfigHelper.isPremiumFeatureEnabled());
    }
}
