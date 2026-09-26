package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import androidx.annotation.NonNull;
import c4.j;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.g0;
import com.google.firebase.crashlytics.internal.common.u;
import com.google.firebase.crashlytics.internal.model.f0;
import com.google.firebase.crashlytics.internal.settings.i;
import f2.g;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes9.dex */
public class b {
    private static final String CRASHLYTICS_TRANSPORT_NAME = "FIREBASE_CRASHLYTICS_REPORT";
    private final e reportQueue;
    private final f2.e<f0, byte[]> transportTransform;
    private static final j TRANSFORM = new j();
    private static final String CRASHLYTICS_ENDPOINT = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String CRASHLYTICS_API_KEY = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");
    private static final f2.e<f0, byte[]> DEFAULT_TRANSFORM = new f2.e() { // from class: com.google.firebase.crashlytics.internal.send.a
        @Override // f2.e
        public final Object apply(Object obj) {
            return b.d((f0) obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] d(f0 f0Var) {
        return TRANSFORM.M(f0Var).getBytes(Charset.forName("UTF-8"));
    }

    @NonNull
    public Task<u> c(@NonNull u uVar, boolean z6) {
        return this.reportQueue.i(uVar, z6).getTask();
    }

    b(e eVar, f2.e<f0, byte[]> eVar2) {
        this.reportQueue = eVar;
        this.transportTransform = eVar2;
    }

    public static b b(Context context, i iVar, g0 g0Var) {
        com.google.android.datatransport.runtime.u.f(context);
        g gVarG = com.google.android.datatransport.runtime.u.c().g(new com.google.android.datatransport.cct.a(CRASHLYTICS_ENDPOINT, CRASHLYTICS_API_KEY));
        f2.b bVarB = f2.b.b("json");
        f2.e<f0, byte[]> eVar = DEFAULT_TRANSFORM;
        return new b(new e(gVarG.a(CRASHLYTICS_TRANSPORT_NAME, f0.class, bVarB, eVar), iVar.a(), g0Var), eVar);
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb = new StringBuilder(str.length() + str2.length());
            for (int i10 = 0; i10 < str.length(); i10++) {
                sb.append(str.charAt(i10));
                if (str2.length() > i10) {
                    sb.append(str2.charAt(i10));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }
}
