package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.ScrollView;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@zzard
@TargetApi(14)
/* loaded from: classes2.dex */
public final class zzua implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long zzbte = ((Long) zzyt.zzpe().zzd(zzacu.zzcqi)).longValue();
    private final WindowManager zzbtf;

    @VisibleForTesting
    private BroadcastReceiver zzbtg;
    private WeakReference<View> zzbth;
    private zzuf zzbti;
    private final Rect zzbtm;
    private final DisplayMetrics zzwb;
    private Application zzww;
    private final Context zzys;
    private final PowerManager zzyt;
    private final KeyguardManager zzyu;
    private WeakReference<ViewTreeObserver> zzyw;
    private zzazj zzbtj = new zzazj(zzbte);
    private boolean zzbtk = false;
    private int zzza = -1;
    private final HashSet<zzue> zzbtl = new HashSet<>();

    public zzua(Context context, View view) {
        this.zzys = context.getApplicationContext();
        this.zzbtf = (WindowManager) context.getSystemService("window");
        this.zzyt = (PowerManager) this.zzys.getSystemService("power");
        this.zzyu = (KeyguardManager) context.getSystemService("keyguard");
        Context context2 = this.zzys;
        if (context2 instanceof Application) {
            this.zzww = (Application) context2;
            this.zzbti = new zzuf((Application) context2, this);
        }
        this.zzwb = context.getResources().getDisplayMetrics();
        this.zzbtm = new Rect();
        this.zzbtm.right = this.zzbtf.getDefaultDisplay().getWidth();
        this.zzbtm.bottom = this.zzbtf.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.zzbth;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzf(view2);
        }
        this.zzbth = new WeakReference<>(view);
        if (view != null) {
            if (com.google.android.gms.ads.internal.zzk.zzli().isAttachedToWindow(view)) {
                zze(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    public final void zza(zzue zzueVar) {
        this.zzbtl.add(zzueVar);
        zzbu(3);
    }

    public final void zzb(zzue zzueVar) {
        this.zzbtl.remove(zzueVar);
    }

    private final void zzcu() {
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zzdvv.post(new zzub(this));
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzza = -1;
        zze(view);
        zzbu(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzza = -1;
        zzbu(3);
        zzcu();
        zzf(view);
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzbth == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = this.zzbth.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.zzza = i;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzbu(3);
        zzcu();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzbu(3);
        zzcu();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzbu(2);
        zzcu();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzbu(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbu(int i) {
        WeakReference<View> weakReference;
        boolean z;
        boolean z2;
        List<Rect> listEmptyList;
        if (this.zzbtl.size() == 0 || (weakReference = this.zzbth) == null) {
            return;
        }
        View view = weakReference.get();
        boolean z3 = i == 1;
        boolean z4 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect2);
            boolean localVisibleRect = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e) {
                zzbad.zzc("Failure getting view location.", e);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            z = globalVisibleRect;
            z2 = localVisibleRect;
        } else {
            z = false;
            z2 = false;
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcql)).booleanValue() && view != null) {
            listEmptyList = zzh(view);
        } else {
            listEmptyList = Collections.emptyList();
        }
        List<Rect> list = listEmptyList;
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i2 = this.zzza;
        if (i2 != -1) {
            windowVisibility = i2;
        }
        boolean z5 = !z4 && com.google.android.gms.ads.internal.zzk.zzlg().zza(view, this.zzyt, this.zzyu) && z && z2 && windowVisibility == 0;
        if (z3 && !this.zzbtj.tryAcquire() && z5 == this.zzbtk) {
            return;
        }
        if (z5 || this.zzbtk || i != 1) {
            zzud zzudVar = new zzud(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime(), this.zzyt.isScreenOn(), view != null && com.google.android.gms.ads.internal.zzk.zzli().isAttachedToWindow(view), view != null ? view.getWindowVisibility() : 8, zza(this.zzbtm), zza(rect), zza(rect2), z, zza(rect3), z2, zza(rect4), this.zzwb.density, z5, list);
            Iterator<zzue> it = this.zzbtl.iterator();
            while (it.hasNext()) {
                it.next().zza(zzudVar);
            }
            this.zzbtk = z5;
        }
    }

    private final Rect zza(Rect rect) {
        return new Rect(zzbv(rect.left), zzbv(rect.top), zzbv(rect.right), zzbv(rect.bottom));
    }

    private final int zzbv(int i) {
        return (int) (i / this.zzwb.density);
    }

    private final List<Rect> zzh(View view) {
        boolean zIsScrollContainer;
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (Build.VERSION.SDK_INT >= 16) {
                    zIsScrollContainer = view2.isScrollContainer();
                } else {
                    zIsScrollContainer = (view2 instanceof ScrollView) || (view2 instanceof ListView);
                }
                if (zIsScrollContainer && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(zza(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    private final void zze(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzyw = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzbtg == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzbtg = new zzuc(this);
            com.google.android.gms.ads.internal.zzk.zzmb().zza(this.zzys, this.zzbtg, intentFilter);
        }
        Application application = this.zzww;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzbti);
            } catch (Exception e) {
                zzbad.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final void zzf(View view) {
        try {
            if (this.zzyw != null) {
                ViewTreeObserver viewTreeObserver = this.zzyw.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzyw = null;
            }
        } catch (Exception e) {
            zzbad.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzbad.zzc("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.zzbtg != null) {
            try {
                com.google.android.gms.ads.internal.zzk.zzmb().zza(this.zzys, this.zzbtg);
            } catch (IllegalStateException e3) {
                zzbad.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzbtg = null;
        }
        Application application = this.zzww;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzbti);
            } catch (Exception e5) {
                zzbad.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    public final void zzes(long j) {
        this.zzbtj.zzfe(j);
    }

    public final void zzmk() {
        this.zzbtj.zzfe(zzbte);
    }
}
