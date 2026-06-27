package com.narvii.util.attribute;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.app.NVContext;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class AttributeService {
    public static final String ACTION_REFRESH_DISCOVER = "com.narvii.attribute.REFRESH_DISCOVER";
    NVContext context;
    LocalBroadcastManager lbm;
    private final ApiResponseListener<AttributeResponse> listener = new ApiResponseListener<AttributeResponse>(AttributeResponse.class) { // from class: com.narvii.util.attribute.AttributeService.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AttributeResponse attributeResponse) throws Exception {
            AttributeActions attributeActions = attributeResponse.actions;
            if (attributeActions == null || !attributeActions.actionRefreshDiscover) {
                return;
            }
            AttributeService.this.lbm.sendBroadcast(new Intent(AttributeService.ACTION_REFRESH_DISCOVER));
        }
    };

    public AttributeService(NVContext nVContext) {
        this.context = nVContext;
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public static long getAttributeId(Object obj) {
        Matcher matcher = Pattern.compile("aid(\\d{12})", 2).matcher(String.valueOf(obj));
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return 0L;
    }

    public void attribute(Object obj) {
        long attributeId = getAttributeId(obj);
        if (attributeId != 0) {
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path("/attribution/user").param("attrId", Long.valueOf(attributeId)).build(), this.listener);
        }
    }
}
