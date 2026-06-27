package com.narvii.livelayer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class LiveLayerActivity extends FragmentWrapperActivity {
    private static WeakReference<View> BACK_MASK;
    private View backgroundMask;
    private ObjectAnimator fadeoutAnimation;

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        return false;
    }

    public static Intent intent(Class<? extends Fragment> cls) {
        Intent intent = new Intent();
        String name = null;
        try {
            name = (String) cls.getField("WRAPPER_ACTIVITY").get(null);
        } catch (Exception unused) {
        }
        String packageName = NVApplication.instance().getPackageName();
        if (name == null) {
            name = LiveLayerActivity.class.getName();
        }
        intent.setClassName(packageName, name);
        intent.putExtra("fragment", cls.getName());
        intent.putExtra("__ignoreStoryDraftId", true);
        return intent;
    }

    public static void prepare(Activity activity) {
        BackgroundHelper.saveWithCapture(activity);
        View decorView = activity.getWindow().getDecorView();
        if (decorView instanceof ViewGroup) {
            View viewFindViewById = decorView.findViewById(R.id.background_mask);
            if (viewFindViewById == null) {
                viewFindViewById = new View(activity);
                viewFindViewById.setId(R.id.background_mask);
                viewFindViewById.setBackgroundColor(-872415232);
                ((ViewGroup) decorView).addView(viewFindViewById, new ViewGroup.LayoutParams(-1, -1));
            }
            BACK_MASK = new WeakReference<>(viewFindViewById);
            ObjectAnimator.ofFloat(viewFindViewById, "alpha", 0.0f, 1.0f).setDuration(300L).start();
        }
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WeakReference<View> weakReference = BACK_MASK;
        this.backgroundMask = weakReference != null ? weakReference.get() : null;
    }

    public View getBackgroundMask() {
        return this.backgroundMask;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        View view = this.backgroundMask;
        if (view != null) {
            this.fadeoutAnimation = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 0.0f);
            this.fadeoutAnimation.setDuration(300L);
            this.fadeoutAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.livelayer.LiveLayerActivity.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LiveLayerActivity liveLayerActivity = LiveLayerActivity.this;
                    liveLayerActivity.removeView(liveLayerActivity.backgroundMask);
                }
            });
            this.fadeoutAnimation.start();
        }
        super.finish();
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        View view;
        ObjectAnimator objectAnimator = this.fadeoutAnimation;
        if ((objectAnimator == null || !objectAnimator.isStarted()) && (view = this.backgroundMask) != null) {
            removeView(view);
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public int getCustomTheme() {
        return super.getCustomTheme();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeView(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }
}
