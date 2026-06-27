package com.narvii.pushservice;

import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsService;

/* loaded from: classes.dex */
public class WsPushRelayProvider implements AutostartServiceProvider<WsPushRelayProvider>, WsService.WsListener {
    PushService push;

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, WsPushRelayProvider wsPushRelayProvider) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, WsPushRelayProvider wsPushRelayProvider) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, WsPushRelayProvider wsPushRelayProvider) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, WsPushRelayProvider wsPushRelayProvider) {
    }

    @Override // com.narvii.services.ServiceProvider
    public WsPushRelayProvider create(NVContext nVContext) {
        WsService wsService = (WsService) nVContext.getService("ws");
        if (wsService != null) {
            this.push = (PushService) nVContext.getService("push");
            wsService.listeners.addListener(this);
        }
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, WsPushRelayProvider wsPushRelayProvider) {
        WsService wsService = (WsService) nVContext.getService("ws");
        if (wsService != null) {
            wsService.listeners.removeListener(this);
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) throws Throwable {
        JsonNode jsonNodeNodePath;
        PushPayload pushPayload;
        if (wsMessage.type != 10 || (jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, ApiRequest.MULTIPART_NAME_PAYLOAD)) == null || (pushPayload = (PushPayload) JacksonUtils.readAs(String.valueOf(jsonNodeNodePath), PushPayload.class)) == null) {
            return;
        }
        this.push.dispatchPushPayload(pushPayload);
    }
}
