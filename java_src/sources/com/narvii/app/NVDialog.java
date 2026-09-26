package com.narvii.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.lib.R;
import com.narvii.logging.LogContextInfo;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.Page;
import com.narvii.logging.PageRefererInfo;
import com.narvii.logging.PageViewDelegate;
import com.narvii.util.TouchTrackUtils;
import com.narvii.util.Utils;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.mixpanel.Tracking;
import com.narvii.util.services.TopActivityService;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public class NVDialog extends Dialog implements Page, NVContext {
    public String draftId;
    private NVContext nvContext;
    PageRefererInfo pageRefererInfo;
    PageViewDelegate pageViewDelegate;
    String pvId;
    boolean skipGeneralShowCheck;
    String strategyInfo;

    private NVDialog(NVContext nVContext, Context context, int i10) {
        String str;
        super(context, i10);
        this.nvContext = nVContext;
        PageViewDelegate pageViewDelegate = new PageViewDelegate(this, this, nVContext instanceof NVFragment ? ((NVFragment) nVContext).getStringParam("__storyDraftId") : null) { // from class: com.narvii.app.NVDialog.1
            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return NVDialog.this.getPageName() != null;
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return NVDialog.this.sendPageViewEventToThirdParty();
            }
        };
        this.pageViewDelegate = pageViewDelegate;
        pageViewDelegate.setFullScreen(false);
        PageRefererInfo pageRefererInfo = LogUtils.nextPageRefererInfo;
        LogContextInfo logContextInfo = LogUtils.getLogContextInfo(nVContext);
        if (pageRefererInfo != null) {
            this.pageRefererInfo = pageRefererInfo;
        } else if (logContextInfo != null && (str = logContextInfo.pageName) != null) {
            this.pageRefererInfo = new PageRefererInfo(str);
        }
        String str2 = LogUtils.nextPageStrategyInfo;
        this.strategyInfo = str2;
        if (str2 == null && logContextInfo != null) {
            this.strategyInfo = logContextInfo.strategyInfo;
        }
        resetPvId();
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
    }

    public String getPageName() {
        return null;
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return this.pageRefererInfo;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.nvContext;
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    protected boolean sendPageViewEventToThirdParty() {
        return false;
    }

    public void setSkipGeneralShowCheck(boolean z6) {
        this.skipGeneralShowCheck = z6;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View viewFindTouchTargetView;
        if (NVApplication.DEBUG && motionEvent != null && motionEvent.getAction() == 1 && (viewFindTouchTargetView = TouchTrackUtils.findTouchTargetView(getWindow())) != null) {
            Log.i("TouchTrack", TouchTrackUtils.getViewInfo(viewFindTouchTargetView));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            return nVContext.getContextId();
        }
        return 0L;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            return (T) nVContext.getService(str);
        }
        return null;
    }

    public void onActiveChanged(boolean z6) {
        this.pageViewDelegate.sendPageViewEvent(z6);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            NVContext nVContext = this.nvContext;
            if (nVContext != null) {
                TopActivityService topActivityService = (TopActivityService) nVContext.getService("topActivity");
                Activity topActivity = topActivityService == null ? null : topActivityService.getTopActivity();
                if (!this.skipGeneralShowCheck && (topActivity instanceof NVActivity) && (((NVActivity) topActivity).isHandlingATO() || ((NVActivity) topActivity).isHandlingJoinCommunity())) {
                    return;
                }
            }
            super.show();
            String pageName = getPageName();
            if (this.nvContext != null && pageName != null) {
                HashMap map = new HashMap();
                map.put("name", pageName);
                new MixpanelAnalytics(this.nvContext.getContext()).trackEvent(Tracking.Events.PAGE_VIEW, map);
            }
            onActiveChanged(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.NVContext
    public void startActivity(Intent intent) {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
            onActiveChanged(false);
        } catch (Exception unused) {
        }
    }

    protected void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    public NVDialog(NVContext nVContext, int i10) {
        this(nVContext, nVContext.getContext(), i10);
    }

    public NVDialog(Context context, int i10) {
        this(Utils.getNVContext(context), context, i10);
    }

    public NVDialog(Context context) {
        this(context, R.style.CustomDialog);
    }
}
