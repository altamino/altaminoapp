package com.narvii.util.diagnosis;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;

/* loaded from: classes3.dex */
public class WsTask extends DiagnosisTask implements WsService.WsListener {
    WsService ws;

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    WsTask(NVContext nVContext) {
        super(nVContext, "Ws");
        this.ws = (WsService) nVContext.getService("ws");
        this.ws.listeners.addListener(this);
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void destory() {
        this.ws.listeners.removeListener(this);
        super.destory();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.ws.isConnected()) {
            this.result = true;
            return;
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 116;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("threadChannelUserInfoList", JacksonUtils.createArrayNode());
        wsRequest.object = objectNodeCreateObjectNode;
        this.ws.sendRequest(wsRequest);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        if (this.result == null) {
            this.result = true;
            this.error = null;
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        if (this.result == null) {
            this.result = true;
            this.error = null;
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
        if (this.result == null) {
            this.result = false;
            this.error = wsError;
        }
    }
}
