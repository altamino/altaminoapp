package com.narvii.master.home.discover.adapter;

import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.topic.model.discover.ContentModule;

/* loaded from: classes3.dex */
public class ModuleDivideColumnIPC extends DivideColumnImpressionCollector {
    ContentModule contentModule;

    public ModuleDivideColumnIPC(NVPagedAdapter nVPagedAdapter, ContentModule contentModule) {
        super(nVPagedAdapter);
        this.contentModule = contentModule;
    }

    public ModuleDivideColumnIPC(Class cls, ContentModule contentModule) {
        super(cls);
        this.contentModule = contentModule;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
        super.completeImpressionLogBuilder(builder, objectInfo);
        ModuleLogUtils.completeModuleExtraInfo(builder, this.contentModule);
    }
}
