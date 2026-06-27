package com.narvii.paging.source;

import com.narvii.app.NVContext;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public class ShareDataSourceHolder {
    private ConcurrentLinkedQueue<NVContext> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
    public DataSource shareDataSource;

    public void addHost(NVContext nVContext) {
        if (nVContext == null) {
            return;
        }
        this.concurrentLinkedQueue.add(nVContext);
    }

    public void removeHost(NVContext nVContext) {
        if (nVContext == null) {
            return;
        }
        this.concurrentLinkedQueue.remove(nVContext);
    }
}
