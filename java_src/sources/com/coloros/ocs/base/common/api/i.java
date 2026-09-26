package com.coloros.ocs.base.common.api;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
class i extends d1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e f949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f950c;
    private h d;

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        c1.a.d(this.f950c, "business handler what ".concat(String.valueOf(i10)));
        if (i10 != 100) {
            if (i10 != 101) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            this.d.sendMessage(messageObtain);
            return;
        }
        f fVar = this.f948a;
        if (fVar != null) {
            fVar.onConnectionSucceed();
        }
        Message messageObtain2 = Message.obtain();
        messageObtain2.what = 5;
        this.d.sendMessage(messageObtain2);
    }

    i(Looper looper, h hVar) {
        super(looper);
        this.f950c = i.class.getSimpleName();
        this.d = hVar;
    }
}
