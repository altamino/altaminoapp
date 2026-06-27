package com.narvii.util.debug;

import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Debug;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Utils;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsService;

/* loaded from: classes.dex */
public class SignallingMonitorHelper implements AutostartServiceProvider<SignallingMonitorHelper>, WsService.WsListener {
    private PopupWindow popup;
    private SharedPreferences prefs;
    private boolean show;
    private SignallingService signalling;
    private WsService ws;
    private final Runnable wsUpdate = new Runnable() { // from class: com.narvii.util.debug.SignallingMonitorHelper.2
        @Override // java.lang.Runnable
        public void run() {
            if (SignallingMonitorHelper.this.popup != null) {
                SignallingMonitorHelper signallingMonitorHelper = SignallingMonitorHelper.this;
                signallingMonitorHelper.updatePopupWs(signallingMonitorHelper.popup);
            }
        }
    };
    private final Runnable infoUpdate = new Runnable() { // from class: com.narvii.util.debug.SignallingMonitorHelper.3
        @Override // java.lang.Runnable
        public void run() {
            if (SignallingMonitorHelper.this.popup != null) {
                SignallingMonitorHelper signallingMonitorHelper = SignallingMonitorHelper.this;
                signallingMonitorHelper.updatePopupSignalling(signallingMonitorHelper.popup);
                Utils.handler.postDelayed(this, 1000L);
            }
        }
    };

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SignallingMonitorHelper signallingMonitorHelper) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SignallingMonitorHelper signallingMonitorHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SignallingMonitorHelper signallingMonitorHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public SignallingMonitorHelper create(NVContext nVContext) {
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.show = this.prefs.getBoolean("debugSignallingMonitor", false);
        this.ws = (WsService) nVContext.getService("ws");
        this.signalling = (SignallingService) nVContext.getService("signalling");
        return this;
    }

    public boolean isShow() {
        return this.show;
    }

    public void showShow(Activity activity, boolean z) {
        this.show = z;
        this.prefs.edit().putBoolean("debugSignallingMonitor", z).apply();
        Utils.handler.removeCallbacks(this.infoUpdate);
        if (!this.show) {
            PopupWindow popupWindow = this.popup;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.popup = null;
                return;
            }
            return;
        }
        if (activity != null) {
            PopupWindow popupWindow2 = this.popup;
            if (popupWindow2 != null) {
                popupWindow2.dismiss();
            }
            this.popup = showPopup(activity);
            Utils.handler.post(this.infoUpdate);
        }
    }

    private PopupWindow showPopup(final Activity activity) {
        final PopupWindow popupWindow = new PopupWindow(activity.getLayoutInflater().inflate(R.layout.signalling_monitor_view, (ViewGroup) null), (int) Utils.dpToPx(activity, 180.0f), Utils.getActionBarHeight(activity));
        updatePopupWs(popupWindow);
        updatePopupSignalling(popupWindow);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.util.debug.SignallingMonitorHelper.1
            int fail = 0;

            @Override // java.lang.Runnable
            public void run() {
                try {
                    popupWindow.showAtLocation(activity.findViewById(android.R.id.content), 49, 0, Utils.getStatusBarHeight(activity));
                } catch (WindowManager.BadTokenException unused) {
                    int i = this.fail + 1;
                    this.fail = i;
                    if (i < 6) {
                        Utils.postDelayed(this, 100L);
                    }
                }
            }
        }, 100L);
        return popupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePopupWs(PopupWindow popupWindow) {
        View viewFindViewById = popupWindow.getContentView().findViewById(R.id.status);
        TextView textView = (TextView) popupWindow.getContentView().findViewById(R.id.status_countdown);
        int connectStatus = this.ws.getConnectStatus();
        if (connectStatus == 2) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.4f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setInterpolator(new LinearInterpolator());
            alphaAnimation.setRepeatCount(-1);
            alphaAnimation.setRepeatMode(2);
            viewFindViewById.setBackgroundResource(R.drawable.oval_green);
            viewFindViewById.setVisibility(0);
            viewFindViewById.startAnimation(alphaAnimation);
            textView.setVisibility(4);
            return;
        }
        if (connectStatus == 1) {
            viewFindViewById.setBackgroundResource(R.drawable.oval_orange);
            viewFindViewById.setVisibility(0);
            viewFindViewById.clearAnimation();
            textView.setVisibility(4);
            Utils.handler.removeCallbacks(this.wsUpdate);
            Utils.postDelayed(this.wsUpdate, 200L);
            return;
        }
        if (connectStatus <= 0) {
            viewFindViewById.setVisibility(4);
            viewFindViewById.clearAnimation();
            textView.setVisibility(0);
            textView.setText(String.valueOf(-connectStatus));
            Utils.handler.removeCallbacks(this.wsUpdate);
            Utils.postDelayed(this.wsUpdate, 200L);
            return;
        }
        viewFindViewById.setVisibility(4);
        viewFindViewById.clearAnimation();
        textView.setVisibility(0);
        textView.setText("?");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePopupSignalling(PopupWindow popupWindow) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (SignallingChannel signallingChannel : this.signalling.channelList()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(signallingChannel.userList.size());
            while (sb2.length() < 3) {
                sb2.append(' ');
            }
            int i2 = signallingChannel.channelType;
            if (i2 == 4 || i2 == 3) {
                sb2.append("VIDEO");
            } else if (i2 == 1) {
                sb2.append("AUDIO");
            } else if (i2 == 0) {
                sb2.append("NONE");
            } else {
                sb2.append("?");
            }
            while (sb2.length() < 9) {
                sb2.append(' ');
            }
            int i3 = signallingChannel.joinRole;
            if (i3 == 0) {
                sb2.append("GUEST");
            } else if (i3 == 1) {
                sb2.append("HOST");
            } else if (i3 == 2) {
                sb2.append("AUDIE");
            } else {
                sb2.append("?");
            }
            while (sb2.length() < 15) {
                sb2.append(' ');
            }
            sb2.append(signallingChannel.threadId.substring(0, 15));
            sb2.append("..");
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append((CharSequence) sb2);
            i++;
        }
        if (i < 3) {
            StringBuilder sb3 = new StringBuilder();
            Runtime runtime = Runtime.getRuntime();
            sb3.append("heap=");
            sb3.append(((runtime.totalMemory() - runtime.freeMemory()) / 1024) / 1024);
            sb3.append("m\n");
            sb3.append("native=");
            sb3.append(((Debug.getNativeHeapAllocatedSize() - Debug.getNativeHeapFreeSize()) / 1024) / 1024);
            sb3.append("m");
            if (sb.length() > 0) {
                sb3.append('\n');
                sb3.append((CharSequence) sb);
            }
            sb = sb3;
        }
        ((TextView) popupWindow.getContentView().findViewById(R.id.text)).setText(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SignallingMonitorHelper signallingMonitorHelper) {
        if (nVContext instanceof Application) {
            this.ws.listeners.addListener(this);
        }
        if (nVContext instanceof Activity) {
            Activity activity = (Activity) nVContext;
            PopupWindow popupWindow = this.popup;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.popup = null;
            }
            if (this.show) {
                this.popup = showPopup(activity);
                Utils.handler.removeCallbacks(this.infoUpdate);
                Utils.handler.post(this.infoUpdate);
            }
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, SignallingMonitorHelper signallingMonitorHelper) {
        PopupWindow popupWindow = this.popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.popup = null;
        }
        Utils.handler.removeCallbacks(this.infoUpdate);
        if (nVContext instanceof Application) {
            this.ws.listeners.removeListener(this);
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        Utils.handler.removeCallbacks(this.wsUpdate);
        Utils.post(this.wsUpdate);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
        Utils.handler.removeCallbacks(this.wsUpdate);
        Utils.post(this.wsUpdate);
    }
}
