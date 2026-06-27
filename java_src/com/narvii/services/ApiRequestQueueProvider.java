package com.narvii.services;

import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.NoCache;
import com.narvii.app.NVContext;
import com.narvii.util.http.ProxyStack;

/* loaded from: classes.dex */
public class ApiRequestQueueProvider implements AutostartServiceProvider<RequestQueue> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RequestQueue requestQueue) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RequestQueue requestQueue) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RequestQueue requestQueue) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RequestQueue requestQueue) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RequestQueue requestQueue) {
    }

    @Override // com.narvii.services.ServiceProvider
    public RequestQueue create(NVContext nVContext) {
        RequestQueue requestQueue = new RequestQueue(new NoCache(), new BasicNetwork(new ProxyStack(nVContext)), 4);
        requestQueue.start();
        return requestQueue;
    }
}
