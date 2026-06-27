package com.narvii.story.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class GuideViewHelper {
    private OnGuideEventListener listener;
    private NVContext nvContext;
    private final SharedPreferences sharedPreferences;

    public interface OnGuideEventListener {
        void onGuideDismiss(String str);
    }

    public GuideViewHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.sharedPreferences = (SharedPreferences) nVContext.getService("prefs");
    }

    public <T extends BaseGuideView> T checkAndShowGuideView(Activity activity, String str, Class<T> cls) {
        return (T) checkAndShowGuideView(activity, str, cls, null);
    }

    public <T extends BaseGuideView> T checkAndShowGuideView(Activity activity, String str, Class<T> cls, Bundle bundle) {
        if (hasGuideShown(str)) {
            return null;
        }
        return (T) showGuideViewWithoutCheck(activity, cls, bundle);
    }

    public <T extends BaseGuideView> T showGuideViewWithoutCheck(Activity activity, Class<T> cls, Bundle bundle) {
        T t = (T) makeGuideView(activity, cls, bundle);
        if (t != null) {
            t.showGuide();
        }
        return t;
    }

    public boolean hasGuideShown(String str) {
        return this.sharedPreferences.getBoolean(str, false);
    }

    public void markGuideShown(String str) {
        this.sharedPreferences.edit().putBoolean(str, true).apply();
    }

    public void setOnGuideEventListener(OnGuideEventListener onGuideEventListener) {
        this.listener = onGuideEventListener;
    }

    private <T extends BaseGuideView> T makeGuideView(Activity activity, Class<T> cls, Bundle bundle) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        if (activity == null) {
            return null;
        }
        View decorView = activity.getWindow().getDecorView();
        if (decorView instanceof ViewGroup) {
            View viewFindViewById = decorView.findViewById(R.id.guide_view);
            if (viewFindViewById != null) {
                ((ViewGroup) decorView).removeView(viewFindViewById);
            }
            try {
                T tNewInstance = cls.getConstructor(Context.class).newInstance(activity);
                tNewInstance.guideViewHelper = this;
                tNewInstance.info = bundle;
                tNewInstance.init();
                tNewInstance.setId(R.id.guide_view);
                ((ViewGroup) decorView).addView(tNewInstance, new ViewGroup.LayoutParams(-1, -1));
                return tNewInstance;
            } catch (Exception e) {
                Log.w("constructor target View fail: " + e);
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean pressBackKey(Activity activity) {
        BaseGuideView baseGuideViewFindCurrentGuideView;
        if (activity == null || (baseGuideViewFindCurrentGuideView = findCurrentGuideView(activity)) == null) {
            return false;
        }
        return baseGuideViewFindCurrentGuideView.onBackPressed();
    }

    public void hideGuideViewIfExist(Activity activity, boolean z) {
        BaseGuideView baseGuideViewFindCurrentGuideView;
        if (activity == null || (baseGuideViewFindCurrentGuideView = findCurrentGuideView(activity)) == null) {
            return;
        }
        baseGuideViewFindCurrentGuideView.hideGuide(z);
    }

    private BaseGuideView findCurrentGuideView(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        if (!(decorView instanceof ViewGroup)) {
            return null;
        }
        View viewFindViewById = decorView.findViewById(R.id.guide_view);
        if (viewFindViewById instanceof BaseGuideView) {
            return (BaseGuideView) viewFindViewById;
        }
        return null;
    }

    public static abstract class BaseGuideView extends FrameLayout {
        protected GuideViewHelper guideViewHelper;
        protected Bundle info;
        private boolean isHidding;

        protected abstract int getLayoutId();

        protected abstract String getPrefKey();

        public BaseGuideView(Context context) {
            super(context);
            this.isHidding = false;
        }

        protected void init() {
            int layoutId = getLayoutId();
            if (layoutId != 0) {
                LayoutInflater.from(getContext()).inflate(layoutId, (ViewGroup) this, true);
            }
            setClickable(true);
        }

        protected boolean onBackPressed() {
            hideGuide();
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                hideGuide();
            }
            return super.onTouchEvent(motionEvent);
        }

        public void showGuide() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.start();
            alphaAnimation.setFillAfter(true);
            startAnimation(alphaAnimation);
        }

        public void hideGuide() {
            hideGuide(true);
        }

        public void hideGuide(final boolean z) {
            if (this.isHidding) {
                return;
            }
            this.isHidding = true;
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(200L);
            alphaAnimation.start();
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.story.widgets.GuideViewHelper.BaseGuideView.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    BaseGuideView baseGuideView;
                    GuideViewHelper guideViewHelper;
                    BaseGuideView.this.isHidding = false;
                    if (z && (guideViewHelper = (baseGuideView = BaseGuideView.this).guideViewHelper) != null) {
                        guideViewHelper.markGuideShown(baseGuideView.getPrefKey());
                    }
                    BaseGuideView.this.tryRemove();
                    GuideViewHelper guideViewHelper2 = BaseGuideView.this.guideViewHelper;
                    if (guideViewHelper2 == null || guideViewHelper2.listener == null) {
                        return;
                    }
                    BaseGuideView.this.guideViewHelper.listener.onGuideDismiss(BaseGuideView.this.getPrefKey());
                }
            });
            startAnimation(alphaAnimation);
        }

        protected void tryRemove() {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this);
            }
        }
    }
}
