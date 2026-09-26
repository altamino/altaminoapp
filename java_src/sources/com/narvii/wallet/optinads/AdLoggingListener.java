package com.narvii.wallet.optinads;

import com.narvii.app.NVApplication;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;

/* JADX INFO: loaded from: classes10.dex */
class AdLoggingListener {
    private String type;

    public AdLoggingListener(String str) {
        this.type = str;
    }

    static void logClick(String str) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.mopubClick).extraParam("adUnitId", str).send();
    }

    static void logFail(String str) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.mopubLoadResult).extraParam("adUnitId", str).extraParam("code", 9).extraParam("info", "").send();
    }

    static void logSuccess(String str) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.mopubLoadResult).extraParam("adUnitId", str).extraParam("code", 0).extraParam("info", "AD_SUCCESS").send();
    }
}
