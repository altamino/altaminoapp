package com.narvii.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.lib.R;
import com.narvii.logging.LogContextInfo;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.Page;
import com.narvii.logging.PageRefererInfo;
import com.narvii.logging.PageViewDelegate;
import com.narvii.util.Log;
import com.narvii.util.TouchTrackUtils;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import java.util.UUID;

/* loaded from: classes.dex */
public class NVDialog extends Dialog implements Page, NVContext {
    public String draftId;
    private NVContext nvContext;
    PageRefererInfo pageRefererInfo;
    PageViewDelegate pageViewDelegate;
    String pvId;
    boolean skipGeneralShowCheck;
    String strategyInfo;

    public void completeLogEvent(LogEvent.Builder builder) {
    }

    public String getPageName() {
        return null;
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

    private NVDialog(NVContext nVContext, Context context, int i) {
        String str;
        super(context, i);
        this.nvContext = nVContext;
        this.pageViewDelegate = new PageViewDelegate(this, this, nVContext instanceof NVFragment ? ((NVFragment) nVContext).getStringParam("__storyDraftId") : null) { // from class: com.narvii.app.NVDialog.1
            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
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
        this.pageViewDelegate.setFullScreen(false);
        PageRefererInfo pageRefererInfo = LogUtils.nextPageRefererInfo;
        LogContextInfo logContextInfo = LogUtils.getLogContextInfo(nVContext);
        if (pageRefererInfo != null) {
            this.pageRefererInfo = pageRefererInfo;
        } else if (logContextInfo != null && (str = logContextInfo.pageName) != null) {
            this.pageRefererInfo = new PageRefererInfo(str);
        }
        this.strategyInfo = LogUtils.nextPageStrategyInfo;
        if (this.strategyInfo == null && logContextInfo != null) {
            this.strategyInfo = logContextInfo.strategyInfo;
        }
        resetPvId();
    }

    public void setSkipGeneralShowCheck(boolean z) {
        this.skipGeneralShowCheck = z;
    }

    public NVDialog(NVContext nVContext, int i) {
        this(nVContext, nVContext.getContext(), i);
    }

    public NVDialog(Context context, int i) {
        this(Utils.getNVContext(context), context, i);
    }

    public NVDialog(Context context) {
        this(context, R.style.CustomDialog);
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return this.pageRefererInfo;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            if (this.nvContext != null) {
                TopActivityService topActivityService = (TopActivityService) this.nvContext.getService("topActivity");
                Activity topActivity = topActivityService == null ? null : topActivityService.getTopActivity();
                if (!this.skipGeneralShowCheck && (topActivity instanceof NVActivity) && (((NVActivity) topActivity).isHandlingATO() || ((NVActivity) topActivity).isHandlingJoinCommunity())) {
                    return;
                }
            }
            super.show();
            onActiveChanged(true);
        } catch (Exception unused) {
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

    public void onActiveChanged(boolean z) {
        this.pageViewDelegate.sendPageViewEvent(z);
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            return (T) nVContext.getService(str);
        }
        return null;
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
    public NVContext getParentContext() {
        return this.nvContext;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            return nVContext.getContextId();
        }
        return 0L;
    }

    @Override // com.narvii.app.NVContext, android.content.Context
    public void startActivity(Intent intent) {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            nVContext.startActivity(intent);
        }
    }
}
