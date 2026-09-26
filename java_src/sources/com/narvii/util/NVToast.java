package com.narvii.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.Toast;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.services.TopActivityService;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes9.dex */
public final class NVToast implements Runnable {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private static NVToast current;
    private static final Runnable dequeue;
    private static boolean fallbackToSystemToast;
    private static NVToast last;
    private static Boolean notificationEnabled;
    private static final Runnable remove;
    private static Field sField_TN;
    private static Field sField_TN_Handler;
    private Context context;
    private int duration;
    private float priority;
    private boolean skipGeneralShowCheck;
    private CharSequence text;
    private View view;
    private static final LinkedList<NVToast> priorityQueue = new LinkedList<>();
    private static final Handler handler = new Handler(Looper.getMainLooper());

    private static class SafelyHandlerWrapper extends Handler {
        private Handler impl;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.impl.handleMessage(message);
        }

        public SafelyHandlerWrapper(Handler handler) {
            this.impl = handler;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception unused) {
            }
        }
    }

    public static NVToast makeText(Context context, CharSequence charSequence, int i10) {
        NVToast nVToast = new NVToast(context);
        nVToast.text = charSequence;
        nVToast.duration = i10;
        return nVToast;
    }

    public NVToast setPriority(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException();
        }
        this.priority = f;
        return this;
    }

    public NVToast setSkipGeneralShowCheck(boolean z6) {
        this.skipGeneralShowCheck = z6;
        return this;
    }

    static {
        if ("Xiaomi".equals(Build.MANUFACTURER) && Build.VERSION.SDK_INT == 24) {
            fallbackToSystemToast = true;
        }
        if (Build.VERSION.SDK_INT < 26) {
            try {
                Field declaredField = Toast.class.getDeclaredField("mTN");
                sField_TN = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = sField_TN.getType().getDeclaredField("mHandler");
                sField_TN_Handler = declaredField2;
                declaredField2.setAccessible(true);
            } catch (Exception e) {
                Log.e("toast", e);
            }
        }
        dequeue = new Runnable() { // from class: com.narvii.util.NVToast.2
            @Override // java.lang.Runnable
            public void run() {
                NVToast nVToast;
                int length;
                long j6;
                if (NVToast.current != null) {
                    return;
                }
                if (NVToast.priorityQueue.isEmpty()) {
                    nVToast = NVToast.last;
                    NVToast.last = null;
                } else {
                    nVToast = (NVToast) NVToast.priorityQueue.removeFirst();
                }
                if (nVToast != null) {
                    try {
                        nVToast.view = ((LayoutInflater) nVToast.context.getSystemService("layout_inflater")).inflate(R.layout.toast, (ViewGroup) null);
                        TextView textView = (TextView) nVToast.view.findViewById(R.id.toast_message);
                        textView.setText(nVToast.text);
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                        layoutParams.gravity = 17;
                        layoutParams.height = -2;
                        layoutParams.width = -2;
                        layoutParams.flags = 24;
                        layoutParams.format = -3;
                        if (Build.VERSION.SDK_INT < 26) {
                            layoutParams.type = 2005;
                        } else {
                            layoutParams.type = 2038;
                        }
                        ((WindowManager) nVToast.context.getSystemService("window")).addView(nVToast.view, layoutParams);
                        textView.startAnimation(AnimationUtils.loadAnimation(nVToast.context, R.anim.toast_show));
                    } catch (Exception e2) {
                        if (e2.getMessage().contains("permission denied")) {
                            NVToast.fallbackToSystemToast = true;
                            nVToast.show();
                        } else {
                            Log.e("toast fail", e2);
                        }
                    }
                    NVToast.current = nVToast;
                    if (nVToast.text == null) {
                        length = 0;
                    } else {
                        length = nVToast.text.length();
                    }
                    long j10 = 2000;
                    if (nVToast.duration == 1) {
                        j6 = 2000;
                    } else {
                        j6 = 1200;
                    }
                    if (nVToast.duration == 1) {
                        j10 = 3500;
                    }
                    if (length >= 8) {
                        if (length > 20) {
                            j6 = j10;
                        } else {
                            j6 += ((j10 - j6) * ((long) (length - 8))) / 12;
                        }
                    }
                    NVToast.handler.postDelayed(NVToast.remove, j6);
                }
            }
        };
        remove = new Runnable() { // from class: com.narvii.util.NVToast.3
            @Override // java.lang.Runnable
            public void run() {
                final NVToast nVToast = NVToast.current;
                if (nVToast != null && nVToast.view != null) {
                    final Runnable runnable = new Runnable() { // from class: com.narvii.util.NVToast.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ((WindowManager) nVToast.context.getSystemService("window")).removeView(nVToast.view);
                            } catch (Exception unused) {
                            }
                        }
                    };
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(nVToast.context, R.anim.toast_hide);
                    animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.util.NVToast.3.2
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            runnable.run();
                            NVToast.handler.removeCallbacks(runnable);
                        }
                    });
                    View viewFindViewById = nVToast.view.findViewById(R.id.toast_message);
                    viewFindViewById.setVisibility(4);
                    viewFindViewById.startAnimation(animationLoadAnimation);
                    NVToast.handler.postDelayed(runnable, animationLoadAnimation.getDuration() + 20);
                }
                NVToast.current = null;
                NVToast.handler.post(NVToast.dequeue);
            }
        };
    }

    public static void dismiss(boolean z6) {
        NVToast nVToast = current;
        if (nVToast != null && (z6 || nVToast.priority == 0.0f)) {
            Runnable runnable = remove;
            runnable.run();
            handler.removeCallbacks(runnable);
        }
        last = null;
        if (z6) {
            priorityQueue.clear();
            handler.removeCallbacks(dequeue);
        }
    }

    public static void hook(Toast toast) {
        if (Build.VERSION.SDK_INT < 26) {
            try {
                Object obj = sField_TN.get(toast);
                sField_TN_Handler.set(obj, new SafelyHandlerWrapper((Handler) sField_TN_Handler.get(obj)));
            } catch (Exception e) {
                Log.e("toast", e);
            }
        }
    }

    public static NVToast makeText(Context context, int i10, int i11) {
        return makeText(context, context.getResources().getText(i10), i11);
    }

    @Override // java.lang.Runnable
    public void run() {
        View viewInflate = ((LayoutInflater) this.context.getSystemService("layout_inflater")).inflate(R.layout.toast, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.toast_message)).setText(this.text);
        Toast toast = new Toast(this.context.getApplicationContext());
        hook(toast);
        toast.setView(viewInflate);
        toast.setDuration(this.duration);
        toast.setGravity(17, 0, 0);
        toast.show();
    }

    public void show() {
        Context context = this.context;
        if (context != null) {
            NVContext nVContext = Utils.getNVContext(context);
            if (!this.skipGeneralShowCheck && nVContext != null) {
                TopActivityService topActivityService = (TopActivityService) nVContext.getService("topActivity");
                Activity topActivity = topActivityService == null ? null : topActivityService.getTopActivity();
                if (topActivity instanceof NVActivity) {
                    NVActivity nVActivity = (NVActivity) topActivity;
                    boolean zIsHandlingATO = nVActivity.isHandlingATO();
                    String atoMessage = nVActivity.getAtoMessage();
                    if ((zIsHandlingATO && Utils.isEqualsNotNull(atoMessage, this.text)) || nVActivity.isHandlingJoinCommunity()) {
                        return;
                    }
                }
            }
        }
        if (notificationEnabled == null) {
            notificationEnabled = Boolean.valueOf(new NotificationManagerHelper(this.context).areNotificationsEnabled());
        }
        if (notificationEnabled == Boolean.TRUE || fallbackToSystemToast) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                run();
                return;
            } else {
                handler.post(this);
                return;
            }
        }
        if (this.priority == 0.0f) {
            last = this;
        } else {
            LinkedList<NVToast> linkedList = priorityQueue;
            linkedList.addLast(this);
            Collections.sort(linkedList, new Comparator<NVToast>() { // from class: com.narvii.util.NVToast.1
                @Override // java.util.Comparator
                public int compare(NVToast nVToast, NVToast nVToast2) {
                    return Float.compare(nVToast2.priority, nVToast.priority);
                }
            });
        }
        handler.post(dequeue);
    }

    private NVToast(Context context) {
        this.context = context.getApplicationContext();
    }
}
