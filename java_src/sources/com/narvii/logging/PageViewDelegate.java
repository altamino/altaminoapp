package com.narvii.logging;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.app.NVContext;
import com.narvii.post.StoryEditSessionManager;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes8.dex */
public abstract class PageViewDelegate {
    String draftId;
    boolean fullScreen = true;
    String lastResumePageName;
    long lastResumeTime;
    NVContext nvContext;
    Page page;

    protected abstract void completePageViewEvent(LogEvent.Builder builder, boolean z6);

    protected abstract boolean logPageViewEvent();

    protected abstract boolean sendPageViewEventToThirdParty();

    public void setDraftId(String str) {
        this.draftId = str;
    }

    public void setFullScreen(boolean z6) {
        this.fullScreen = z6;
    }

    public void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void sendPageViewEvent(boolean z6) {
        Page page = this.page;
        if (page == null || this.nvContext == null) {
            return;
        }
        String pageName = page.getPageName();
        if (!z6 && pageName == null) {
            pageName = this.lastResumePageName;
        }
        if (this.draftId != null && logPageViewEvent()) {
            if (pageName == null) {
                Log.e("please add name for " + getClass().getSimpleName());
            }
            StoryEditSessionManager.getInstance().onPageActiveChanged(this.draftId, z6);
        }
        if (logPageViewEvent() && this.fullScreen) {
            if (z6) {
                LogUtils.resumingContextList.add(this.nvContext);
            } else {
                WeakReference<NVContext> weakReference = LogUtils.lastPauseContext;
                if (!LogUtils.isParentContext(weakReference == null ? null : weakReference.get(), this.nvContext)) {
                    LogUtils.lastPauseContext = new WeakReference<>(this.nvContext);
                }
                LogUtils.resumingContextList.remove(this.nvContext);
            }
        }
        if (z6) {
            this.lastResumeTime = SystemClock.elapsedRealtime();
        }
        if (pageName == null || !logPageViewEvent()) {
            return;
        }
        LogEvent.Builder builderActSemantic = LogEvent.builder(this.nvContext).pageViewEvent().actType(ActType.pageView).actSemantic(z6 ? ActSemantic.pageViewLaunch : ActSemantic.pageViewQuit);
        if (z6) {
            this.lastResumePageName = pageName;
        } else {
            builderActSemantic.extraParam(TypedValues.TransitionType.S_DURATION, Long.valueOf(this.lastResumeTime != 0 ? SystemClock.elapsedRealtime() - this.lastResumeTime : 0L));
        }
        if (this.draftId != null) {
            builderActSemantic.extraParam("editSessionId", StoryEditSessionManager.getInstance().getSessionId(this.draftId)).extraParam("storyDraftId", this.draftId);
        }
        if (sendPageViewEventToThirdParty()) {
            builderActSemantic.toThirdParty();
        }
        completePageViewEvent(builderActSemantic, z6);
        builderActSemantic.send();
    }

    public PageViewDelegate(NVContext nVContext, Page page, String str) {
        this.nvContext = nVContext;
        this.page = page;
        this.draftId = str;
    }
}
