package com.narvii.paging;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.widget.FrameLayout;
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
import java.util.UUID;

/* loaded from: classes3.dex */
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

    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return null;
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

    public PageView(Context context) {
        this(context, null);
    }

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isVisibleHint = true;
        this.refreshActive = new Runnable() { // from class: com.narvii.paging.PageView.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z = PageView.this.isResumed && PageView.this.isVisibleHint;
                if (PageView.this.isActive != z) {
                    PageView.this.isActive = z;
                    PageView pageView = PageView.this;
                    pageView.onActiveChanged(pageView.isActive);
                }
            }
        };
        this.pageViewDelegate = new PageViewDelegate(this, this, null) { // from class: com.narvii.paging.PageView.1
            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return PageView.this.logPageViewEvent();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return PageView.this.sendThirdParty;
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
                Object obj = PageView.this.strategyObject;
                if (obj instanceof NVObject) {
                    builder.object((NVObject) obj);
                }
                PageView.this.completePageViewEvent(builder, z);
            }
        };
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            return (T) nVContext.getService(str);
        }
        return null;
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
        takeLogContextInfo();
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            nVContext.startActivity(intent);
        }
    }

    public void takeLogContextInfo() {
        StrategyObject strategyObject;
        LogUtils.changeNextPageRefererIfNull(this);
        if (LogUtils.nextPageStrategyInfo != null || (strategyObject = this.strategyObject) == null) {
            return;
        }
        LogUtils.nextPageStrategyInfo = strategyObject.getStrategyInfo();
    }

    @Override // com.narvii.logging.Page
    public String getPageName() {
        Object tag = getTag();
        if (tag instanceof String) {
            return (String) tag;
        }
        return null;
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    @Override // com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).completeLogEvent(builder);
        }
    }

    public void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    public void onActiveChanged(boolean z) {
        this.pageViewDelegate.sendPageViewEvent(z);
    }

    public void onResume() {
        if (this.isResumed) {
            return;
        }
        this.isResumed = true;
        boolean z = this.isVisibleHint;
        if (!z) {
            setVisibleHint(z);
        } else {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public void setVisibleHint(boolean z) {
        this.isVisibleHint = z;
        if (this.isResumed) {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void sendPageViewEventToThirdParty(boolean z) {
        this.sendThirdParty = z;
    }

    public void onPause() {
        if (this.isResumed) {
            this.isResumed = false;
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public void setStrategyObject(StrategyObject strategyObject) {
        this.strategyObject = strategyObject;
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        StrategyObject strategyObject = this.strategyObject;
        if (strategyObject == null) {
            return null;
        }
        return strategyObject.getStrategyInfo();
    }
}
