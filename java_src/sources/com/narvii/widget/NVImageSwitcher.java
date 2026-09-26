package com.narvii.widget;

import android.content.Context;
import android.os.Handler;
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

/* JADX INFO: loaded from: classes4.dex */
public class NVImageSwitcher extends ViewSwitcher {
    private int index;
    List<Media> mediaList;
    private Runnable nextRunnable;
    private Runnable runnable;

    @Override // android.widget.ViewSwitcher, android.widget.ViewAnimator, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return NVImageSwitcher.class.getName();
    }

    public void startSwitch(List<Media> list, long j6, final long j10) {
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
            setNextImageUrl(this.mediaList.get(1).url);
        } catch (Exception e) {
            Log.e("imageSwitcher", e);
        }
        Runnable runnable3 = new Runnable() { // from class: com.narvii.widget.NVImageSwitcher.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NVImageSwitcher.this.showNext();
                    NVImageSwitcher nVImageSwitcher = NVImageSwitcher.this;
                    nVImageSwitcher.index = (nVImageSwitcher.index + 1) % NVImageSwitcher.this.mediaList.size();
                    NVImageSwitcher nVImageSwitcher2 = NVImageSwitcher.this;
                    final String str = nVImageSwitcher2.mediaList.get(nVImageSwitcher2.index).url;
                    NVImageSwitcher.this.nextRunnable = new Runnable() { // from class: com.narvii.widget.NVImageSwitcher.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NVImageSwitcher.this.setNextImageUrl(str);
                        }
                    };
                    Handler handler = Utils.handler;
                    handler.postDelayed(NVImageSwitcher.this.nextRunnable, 1500L);
                    handler.postDelayed(this, j10);
                } catch (Exception e2) {
                    Log.e("imageSwitcher", e2);
                }
            }
        };
        this.runnable = runnable3;
        Utils.handler.postDelayed(runnable3, j6 + j10);
    }

    public NVImageSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
        animationLoadAnimation.setDuration(1000L);
        setInAnimation(animationLoadAnimation);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out);
        animationLoadAnimation2.setDuration(1000L);
        setOutAnimation(animationLoadAnimation2);
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

    public void setCurrentImageUrl(String str) {
        ((NVImageView) getCurrentView().findViewById(R.id.image)).setImageUrl(str);
    }

    public void setNextImageUrl(String str) {
        ((NVImageView) getNextView().findViewById(R.id.image)).setImageUrl(str);
    }
}
