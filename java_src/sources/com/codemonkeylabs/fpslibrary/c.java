package com.codemonkeylabs.fpslibrary;

import android.view.Choreographer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class c implements Choreographer.FrameCallback {
    private b fpsConfig;
    private com.codemonkeylabs.fpslibrary.ui.c tinyCoach;
    private boolean enabled = true;
    private long startSampleTimeInNs = 0;
    private List<Long> dataSet = new ArrayList();

    public void d(boolean z6) {
        this.enabled = z6;
    }

    private void a(long j6) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.dataSet);
        this.tinyCoach.g(this.fpsConfig, arrayList);
        this.dataSet.clear();
        this.startSampleTimeInNs = j6;
    }

    private void b() {
        this.dataSet.clear();
        this.fpsConfig = null;
        this.tinyCoach = null;
    }

    private boolean c(long j6) {
        return j6 - this.startSampleTimeInNs > this.fpsConfig.a();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j6) {
        if (!this.enabled) {
            b();
            return;
        }
        if (this.startSampleTimeInNs == 0) {
            this.startSampleTimeInNs = j6;
        } else {
            this.fpsConfig.getClass();
        }
        if (c(j6)) {
            a(j6);
        }
        this.dataSet.add(Long.valueOf(j6));
        Choreographer.getInstance().postFrameCallback(this);
    }

    public c(b bVar, com.codemonkeylabs.fpslibrary.ui.c cVar) {
        this.fpsConfig = bVar;
        this.tinyCoach = cVar;
    }
}
