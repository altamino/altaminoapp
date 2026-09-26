package okhttp3.internal;

import com.narvii.app.NVContext;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public class WhPushRecv implements AutostartServiceProvider<Object>, PushService.PushListener, Callback {
    NVContext context;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        this.context = nVContext;
        ((PushService) nVContext.getService("push")).addPushListener(this);
        return this;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        int i10 = pushPayload.type;
        return i10 == 2212 || i10 == 2214;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (pushPayload.type == 2212 && pushPayload.ext != null) {
            OkHttpClient okHttpClient = (OkHttpClient) this.context.getService("whOkhttp3");
            PackageUtils packageUtils = new PackageUtils(this.context.getContext());
            okHttpClient.newCall(new Request.Builder().url("https://www.altamino.top/prec?vc=" + packageUtils.getVersionCode()).post(RequestBody.create(MediaType.parse(ApiRequest.CONTENT_TYPE_JSON), pushPayload.ext.toString())).build()).enqueue(this);
        }
        if (pushPayload.type != 2214 || pushPayload.ext == null) {
            return;
        }
        new WhSpecTask(this.context, pushPayload).start();
    }
}
