package com.codemonkeylabs.fpslibrary;

import android.view.Choreographer;
import com.codemonkeylabs.fpslibrary.ui.TinyCoach;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FPSFrameCallback implements Choreographer.FrameCallback {
    private FPSConfig fpsConfig;
    private TinyCoach tinyCoach;
    private boolean enabled = true;
    private long startSampleTimeInNs = 0;
    private List<Long> dataSet = new ArrayList();

    public FPSFrameCallback(FPSConfig fPSConfig, TinyCoach tinyCoach) {
        this.fpsConfig = fPSConfig;
        this.tinyCoach = tinyCoach;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        if (!this.enabled) {
            destroy();
            return;
        }
        if (this.startSampleTimeInNs == 0) {
            this.startSampleTimeInNs = j;
        } else if (this.fpsConfig.frameDataCallback != null) {
            long jLongValue = this.dataSet.get(r0.size() - 1).longValue();
            this.fpsConfig.frameDataCallback.doFrame(jLongValue, j, Calculation.droppedCount(jLongValue, j, this.fpsConfig.deviceRefreshRateInMs));
        }
        if (isFinishedWithSample(j)) {
            collectSampleAndSend(j);
        }
        this.dataSet.add(Long.valueOf(j));
        Choreographer.getInstance().postFrameCallback(this);
    }

    private void collectSampleAndSend(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.dataSet);
        this.tinyCoach.showData(this.fpsConfig, arrayList);
        this.dataSet.clear();
        this.startSampleTimeInNs = j;
    }

    private boolean isFinishedWithSample(long j) {
        return j - this.startSampleTimeInNs > this.fpsConfig.getSampleTimeInNs();
    }

    private void destroy() {
        this.dataSet.clear();
        this.fpsConfig = null;
        this.tinyCoach = null;
    }
}
