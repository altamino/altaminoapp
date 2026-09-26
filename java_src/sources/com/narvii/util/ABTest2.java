package com.narvii.util;

import androidx.exifinterface.media.ExifInterface;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public enum ABTest2 {
    None,
    A,
    B,
    C,
    D;

    public static void logLogging(NVContext nVContext, ObjectNode objectNode) {
    }

    public static boolean allTags(NVContext nVContext, StringBuilder sb) {
        sb.append(kotlinx.serialization.json.internal.b.COMMA);
        for (ABTest aBTest : ABTest.LOGGING_USER_PROPS) {
            sb.append(aBTest);
            sb.append("_");
            sb.append(ABTest.ab(nVContext.getContext(), aBTest) ? ExifInterface.GPS_MEASUREMENT_IN_PROGRESS : "B");
            sb.append(kotlinx.serialization.json.internal.b.COMMA);
        }
        return true;
    }

    public static boolean logTea(NVContext nVContext, Map<String, Object> map) {
        StringBuilder sb = new StringBuilder();
        boolean zAllTags = allTags(nVContext, sb);
        map.put("ab_groups", sb.toString());
        return zAllTags;
    }
}
