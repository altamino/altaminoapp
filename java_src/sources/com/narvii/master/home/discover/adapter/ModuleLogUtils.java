package com.narvii.master.home.discover.adapter;

import com.narvii.logging.LogEvent;
import com.narvii.topic.model.discover.ContentModule;

/* JADX INFO: loaded from: classes10.dex */
public class ModuleLogUtils {
    public static void completeModuleExtraInfo(LogEvent.Builder builder, ContentModule contentModule) {
        if (contentModule != null) {
            builder.extraParam("moduleDisplayName", contentModule.displayName);
            int i10 = contentModule.linkedObjectType;
            if (i10 == 126) {
                builder.extraParam("moduleInterestId", contentModule.getInterestId());
            } else if (i10 == 128) {
                builder.extraParam("moduleTopicId", contentModule.getTopicId() + "");
            }
            builder.extraParam("moduleId", contentModule.moduleId);
        }
    }
}
