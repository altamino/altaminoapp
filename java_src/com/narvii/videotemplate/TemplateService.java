package com.narvii.videotemplate;

import android.app.IntentService;
import android.content.Intent;
import android.os.Process;
import com.narvii.util.BlockingItem;
import com.narvii.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import kotlin.TypeCastException;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: TemplateService.kt */
/* loaded from: classes3.dex */
public final class TemplateService extends IntentService {
    public TemplateService() {
        super("template");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) throws InterruptedException, IOException {
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        int iMyPid = Process.myPid();
        Log.i("template starting at pid " + iMyPid);
        File file = new File(getFilesDir(), "template");
        file.mkdir();
        File file2 = new File(file, "template.pid");
        FilesKt__FileReadWriteKt.writeText(file2, String.valueOf(iMyPid), Charsets.US_ASCII);
        VideoTemplateJni.CONDITION = new BlockingItem<>();
        Serializable serializableExtra = intent.getSerializableExtra("com.narvii.videotemplate.templateConfig");
        if (serializableExtra == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.videotemplate.Template");
        }
        intent.getStringArrayListExtra("com.narvii.videotemplate.inputPathList");
        intent.getIntArrayExtra("com.narvii.videotemplate.inputType");
        intent.getStringExtra("com.narvii.videotemplate.outVideoPath");
        VideoTemplateJni.bindContext(this);
        VideoTemplateJni.create(((Template) serializableExtra).segments);
        VideoTemplateJni.CONDITION.take();
        Log.i("template finished");
        sendBroadcast(new Intent(TemplateServiceKt.VIDEO_TEMPLATE_PROCESS_FINISH));
        VideoTemplateJni.unbindContext();
        VideoTemplateJni.CONDITION = null;
        Thread.sleep(50L);
        file2.delete();
        Process.killProcess(Process.myPid());
    }
}
