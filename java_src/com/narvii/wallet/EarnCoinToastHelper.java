package com.narvii.wallet;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.Toast;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class EarnCoinToastHelper implements AutostartServiceProvider<EarnCoinToastHelper>, PushService.PushListener {
    static final long DURATION = 1500;
    NVContext context;
    View currentView;
    boolean enabled;
    Handler handler = Utils.handler;
    Pattern pcoins = Pattern.compile("\\d+");
    private final Runnable remove = new Runnable() { // from class: com.narvii.wallet.EarnCoinToastHelper.1
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            EarnCoinToastHelper earnCoinToastHelper = EarnCoinToastHelper.this;
            final View view = earnCoinToastHelper.currentView;
            if (view != null) {
                earnCoinToastHelper.currentView = null;
                final Context context = earnCoinToastHelper.context.getContext();
                final Runnable runnable = new Runnable() { // from class: com.narvii.wallet.EarnCoinToastHelper.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ((WindowManager) context.getSystemService("window")).removeView(view);
                        } catch (Exception unused) {
                        }
                    }
                };
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, R.anim.toast_hide);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.wallet.EarnCoinToastHelper.1.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        runnable.run();
                        EarnCoinToastHelper.this.handler.removeCallbacks(runnable);
                    }
                });
                View viewFindViewById = view.findViewById(R.id.toast_message);
                viewFindViewById.setVisibility(4);
                viewFindViewById.startAnimation(animationLoadAnimation);
                EarnCoinToastHelper.this.handler.postDelayed(runnable, animationLoadAnimation.getDuration() + 20);
            }
        }
    };

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, EarnCoinToastHelper earnCoinToastHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, EarnCoinToastHelper earnCoinToastHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, EarnCoinToastHelper earnCoinToastHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public EarnCoinToastHelper create(NVContext nVContext) {
        this.context = nVContext;
        ((PushService) nVContext.getService("push")).addPushListener(this);
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, EarnCoinToastHelper earnCoinToastHelper) {
        this.enabled = true;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, EarnCoinToastHelper earnCoinToastHelper) {
        this.enabled = false;
        dismiss();
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (this.enabled && pushPayload.type == 51) {
            show(pushPayload.message(null));
        }
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return pushPayload.type == 51;
    }

    public void show(String str) {
        View view = this.currentView;
        if (view == null) {
            Context context = this.context.getContext();
            try {
                View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.wallet_toast, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.toast_message);
                textView.setText(str);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.gravity = 49;
                layoutParams.height = -2;
                layoutParams.width = -2;
                layoutParams.flags = 24;
                layoutParams.format = -3;
                if (Build.VERSION.SDK_INT < 26) {
                    layoutParams.type = 2005;
                } else {
                    layoutParams.type = 2038;
                }
                ((WindowManager) context.getSystemService("window")).addView(viewInflate, layoutParams);
                this.currentView = viewInflate;
                textView.startAnimation(AnimationUtils.loadAnimation(context, R.anim.toast_show));
                this.handler.postDelayed(this.remove, DURATION);
                return;
            } catch (Exception e) {
                if (e.getMessage().contains("permission denied")) {
                    View viewInflate2 = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.wallet_toast, (ViewGroup) null);
                    ((TextView) viewInflate2.findViewById(R.id.toast_message)).setText(str);
                    try {
                        Toast toast = new Toast(this.context.getContext());
                        toast.setGravity(49, 0, 0);
                        NVToast.hook(toast);
                        toast.setView(viewInflate2);
                        toast.setDuration(1500);
                        toast.show();
                        return;
                    } catch (Exception e2) {
                        Log.e("system toast fail", e2);
                        return;
                    }
                }
                Log.e("toast fail", e);
                return;
            }
        }
        ((TextView) view.findViewById(R.id.toast_message)).setText(str);
        this.handler.removeCallbacks(this.remove);
        this.handler.postDelayed(this.remove, DURATION);
    }

    public void dismiss() {
        if (this.currentView != null) {
            this.remove.run();
            this.handler.removeCallbacks(this.remove);
        }
    }
}
