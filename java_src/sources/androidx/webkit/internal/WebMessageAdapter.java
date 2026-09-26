package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebViewFeature;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;

/* JADX INFO: loaded from: classes8.dex */
public class WebMessageAdapter implements WebMessageBoundaryInterface {
    private static final String[] sFeatures = {WebViewFeature.WEB_MESSAGE_ARRAY_BUFFER};
    private WebMessageCompat mWebMessageCompat;

    @NonNull
    private static WebMessagePortCompat[] a(InvocationHandler[] invocationHandlerArr) {
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[invocationHandlerArr.length];
        for (int i10 = 0; i10 < invocationHandlerArr.length; i10++) {
            webMessagePortCompatArr[i10] = new WebMessagePortImpl(invocationHandlerArr[i10]);
        }
        return webMessagePortCompatArr;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return sFeatures;
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    @Nullable
    @Deprecated
    public String getData() {
        return this.mWebMessageCompat.c();
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    @Nullable
    public InvocationHandler getMessagePayload() {
        WebMessagePayloadAdapter webMessagePayloadAdapter;
        int iE = this.mWebMessageCompat.e();
        if (iE == 0) {
            webMessagePayloadAdapter = new WebMessagePayloadAdapter(this.mWebMessageCompat.c());
        } else {
            if (iE != 1) {
                throw new IllegalStateException("Unknown web message payload type: " + this.mWebMessageCompat.e());
            }
            byte[] bArrB = this.mWebMessageCompat.b();
            Objects.requireNonNull(bArrB);
            webMessagePayloadAdapter = new WebMessagePayloadAdapter(bArrB);
        }
        return org.chromium.support_lib_boundary.util.a.c(webMessagePayloadAdapter);
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    @Nullable
    public InvocationHandler[] getPorts() {
        WebMessagePortCompat[] webMessagePortCompatArrD = this.mWebMessageCompat.d();
        if (webMessagePortCompatArrD == null) {
            return null;
        }
        InvocationHandler[] invocationHandlerArr = new InvocationHandler[webMessagePortCompatArrD.length];
        for (int i10 = 0; i10 < webMessagePortCompatArrD.length; i10++) {
            invocationHandlerArr[i10] = webMessagePortCompatArrD[i10].b();
        }
        return invocationHandlerArr;
    }

    public WebMessageAdapter(@NonNull WebMessageCompat webMessageCompat) {
        this.mWebMessageCompat = webMessageCompat;
    }

    @Nullable
    public static WebMessageCompat b(@NonNull WebMessageBoundaryInterface webMessageBoundaryInterface) {
        WebMessagePortCompat[] webMessagePortCompatArrA = a(webMessageBoundaryInterface.getPorts());
        if (WebViewFeatureInternal.WEB_MESSAGE_ARRAY_BUFFER.c()) {
            WebMessagePayloadBoundaryInterface webMessagePayloadBoundaryInterface = (WebMessagePayloadBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebMessagePayloadBoundaryInterface.class, webMessageBoundaryInterface.getMessagePayload());
            int type = webMessagePayloadBoundaryInterface.getType();
            if (type != 0) {
                if (type != 1) {
                    return null;
                }
                return new WebMessageCompat(webMessagePayloadBoundaryInterface.getAsArrayBuffer(), webMessagePortCompatArrA);
            }
            return new WebMessageCompat(webMessagePayloadBoundaryInterface.getAsString(), webMessagePortCompatArrA);
        }
        return new WebMessageCompat(webMessageBoundaryInterface.getData(), webMessagePortCompatArrA);
    }
}
