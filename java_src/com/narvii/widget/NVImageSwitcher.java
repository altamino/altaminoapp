package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ViewSwitcher;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class NVImageSwitcher extends ViewSwitcher {
    private int index;
    List<Media> mediaList;
    private Runnable nextRunnable;
    private Runnable runnable;

    public NVImageSwitcher(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
        animationLoadAnimation.setDuration(1000L);
        setInAnimation(animationLoadAnimation);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out);
        animationLoadAnimation2.setDuration(1000L);
        setOutAnimation(animationLoadAnimation2);
    }

    public void setNextImageUrl(String str) {
        ((NVImageView) getNextView().findViewById(R.id.image)).setImageUrl(str);
    }

    public void setCurrentImageUrl(String str) {
        ((NVImageView) getCurrentView().findViewById(R.id.image)).setImageUrl(str);
    }

    @Override // android.widget.ViewSwitcher, android.widget.ViewAnimator, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return NVImageSwitcher.class.getName();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.runnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.nextRunnable;
        if (runnable2 != null) {
            Utils.handler.removeCallbacks(runnable2);
        }
    }

    public void startSwitch(List<Media> list, long j, final long j2) {
        this.mediaList = list;
        Runnable runnable = this.runnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.nextRunnable;
        if (runnable2 != null) {
            Utils.handler.removeCallbacks(runnable2);
        }
        if (CollectionUtils.isEmpty(this.mediaList)) {
            setCurrentImageUrl(null);
            return;
        }
        if (CollectionUtils.getSize(this.mediaList) == 1) {
            setCurrentImageUrl(this.mediaList.get(0).url);
            return;
        }
        setCurrentImageUrl(this.mediaList.get(0).url);
        this.index = 1;
        try {
            setNextImageUrl(this.mediaList.get(this.index).url);
        } catch (Exception e) {
            Log.e("imageSwitcher", e);
        }
        this.runnable = new Runnable() { // from class: com.narvii.widget.NVImageSwitcher.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NVImageSwitcher.this.showNext();
                    NVImageSwitcher.this.index = (NVImageSwitcher.this.index + 1) % NVImageSwitcher.this.mediaList.size();
                    final String str = NVImageSwitcher.this.mediaList.get(NVImageSwitcher.this.index).url;
                    NVImageSwitcher.this.nextRunnable = new Runnable() { // from class: com.narvii.widget.NVImageSwitcher.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NVImageSwitcher.this.setNextImageUrl(str);
                        }
                    };
                    Utils.handler.postDelayed(NVImageSwitcher.this.nextRunnable, 1500L);
                    Utils.handler.postDelayed(this, j2);
                } catch (Exception e2) {
                    Log.e("imageSwitcher", e2);
                }
            }
        };
        Utils.handler.postDelayed(this.runnable, j + j2);
    }
}
