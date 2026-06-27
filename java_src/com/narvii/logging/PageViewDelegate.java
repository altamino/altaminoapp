package com.narvii.logging;

import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.post.StoryEditSessionManager;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public abstract class PageViewDelegate {
    String draftId;
    boolean fullScreen = true;
    String lastResumePageName;
    long lastResumeTime;
    NVContext nvContext;
    Page page;

    protected abstract void completePageViewEvent(LogEvent.Builder builder, boolean z);

    protected abstract boolean logPageViewEvent();

    protected abstract boolean sendPageViewEventToThirdParty();

    public PageViewDelegate(NVContext nVContext, Page page, String str) {
        this.nvContext = nVContext;
        this.page = page;
        this.draftId = str;
    }

    public void setFullScreen(boolean z) {
        this.fullScreen = z;
    }

    public void setDraftId(String str) {
        this.draftId = str;
    }

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void sendPageViewEvent(boolean z) {
        Page page = this.page;
        if (page == null || this.nvContext == null) {
            return;
        }
        String pageName = page.getPageName();
        if (!z && pageName == null) {
            pageName = this.lastResumePageName;
        }
        if (this.draftId != null && logPageViewEvent()) {
            if (pageName == null) {
                Log.e("please add name for " + getClass().getSimpleName());
            }
            StoryEditSessionManager.getInstance().onPageActiveChanged(this.draftId, z);
        }
        if (logPageViewEvent() && this.fullScreen) {
            if (!z) {
                WeakReference<NVContext> weakReference = LogUtils.lastPauseContext;
                if (!LogUtils.isParentContext(weakReference == null ? null : weakReference.get(), this.nvContext)) {
                    LogUtils.lastPauseContext = new WeakReference<>(this.nvContext);
                }
                LogUtils.resumingContextList.remove(this.nvContext);
            } else {
                LogUtils.resumingContextList.add(this.nvContext);
            }
        }
        if (z) {
            this.lastResumeTime = SystemClock.elapsedRealtime();
        }
        if (pageName == null || !logPageViewEvent()) {
            return;
        }
        LogEvent.Builder builderActSemantic = LogEvent.builder(this.nvContext).pageViewEvent().actType(ActType.pageView).actSemantic(z ? ActSemantic.pageViewLaunch : ActSemantic.pageViewQuit);
        if (z) {
            this.lastResumePageName = pageName;
        } else {
            builderActSemantic.extraParam("duration", Long.valueOf(this.lastResumeTime != 0 ? SystemClock.elapsedRealtime() - this.lastResumeTime : 0L));
        }
        if (this.draftId != null) {
            builderActSemantic.extraParam("editSessionId", StoryEditSessionManager.getInstance().getSessionId(this.draftId)).extraParam("storyDraftId", this.draftId);
        }
        if (sendPageViewEventToThirdParty()) {
            builderActSemantic.toThirdParty();
        }
        completePageViewEvent(builderActSemantic, z);
        builderActSemantic.send();
    }
}
