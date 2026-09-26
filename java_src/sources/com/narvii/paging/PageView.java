package com.narvii.paging;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.Page;
import com.narvii.logging.PageRefererInfo;
import com.narvii.logging.PageViewDelegate;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class PageView extends FrameLayout implements Page, NVContext {
    private boolean isActive;
    private boolean isResumed;
    private boolean isVisibleHint;
    private long lastResumeTime;
    NVContext nvContext;
    private PageRefererInfo pageRefererInfo;
    PageViewDelegate pageViewDelegate;
    String pvId;
    private final Runnable refreshActive;
    boolean sendThirdParty;
    StrategyObject strategyObject;

    public PageView(Context context) {
        this(context, null);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @CallSuper
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return null;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.nvContext;
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    public boolean isActive() {
        return this.isActive;
    }

    @Override // com.narvii.logging.Page
    public boolean isFinalPage() {
        return false;
    }

    @Override // com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    protected boolean logPageViewEvent() {
        return true;
    }

    public void sendPageViewEventToThirdParty(boolean z6) {
        this.sendThirdParty = z6;
    }

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void setStrategyObject(StrategyObject strategyObject) {
        this.strategyObject = strategyObject;
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isVisibleHint = true;
        this.refreshActive = new Runnable() { // from class: com.narvii.paging.PageView.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z6 = PageView.this.isResumed && PageView.this.isVisibleHint;
                if (PageView.this.isActive != z6) {
                    PageView.this.isActive = z6;
                    PageView pageView = PageView.this;
                    pageView.onActiveChanged(pageView.isActive);
                }
            }
        };
        this.pageViewDelegate = new PageViewDelegate(this, this, null) { // from class: com.narvii.paging.PageView.1
            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
                Object obj = PageView.this.strategyObject;
                if (obj instanceof NVObject) {
                    builder.object((NVObject) obj);
                }
                PageView.this.completePageViewEvent(builder, z6);
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return PageView.this.logPageViewEvent();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return PageView.this.sendThirdParty;
            }
        };
    }

    @Override // com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).completeLogEvent(builder);
        }
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

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        StrategyObject strategyObject = this.strategyObject;
        if (strategyObject == null) {
            return null;
        }
        return strategyObject.getStrategyInfo();
    }

    public void onActiveChanged(boolean z6) {
        this.pageViewDelegate.sendPageViewEvent(z6);
    }

    public void onPause() {
        if (this.isResumed) {
            this.isResumed = false;
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public void onResume() {
        if (this.isResumed) {
            return;
        }
        this.isResumed = true;
        boolean z6 = this.isVisibleHint;
        if (!z6) {
            setVisibleHint(z6);
        } else {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public void setVisibleHint(boolean z6) {
        this.isVisibleHint = z6;
        if (this.isResumed) {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    @Override // com.narvii.logging.Page
    public String getPageName() {
        Object tag = getTag();
        if (tag instanceof String) {
            return (String) tag;
        }
        return null;
    }

    public void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    @Override // com.narvii.app.NVContext
    public void startActivity(Intent intent) {
        takeLogContextInfo();
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
        }
    }

    public void takeLogContextInfo() {
        StrategyObject strategyObject;
        LogUtils.changeNextPageRefererIfNull(this);
        if (LogUtils.nextPageStrategyInfo == null && (strategyObject = this.strategyObject) != null) {
            LogUtils.nextPageStrategyInfo = strategyObject.getStrategyInfo();
        }
    }
}
