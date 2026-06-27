package com.narvii.util;

import com.amplitude.api.Identify;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import java.util.Map;

/* loaded from: classes3.dex */
public enum ABTest2 {
    None,
    A,
    B,
    C,
    D;

    public static boolean logAmplitude(NVContext nVContext, Identify identify) {
        return true;
    }

    public static void logLogging(NVContext nVContext, ObjectNode objectNode) {
    }

    public static boolean logTea(NVContext nVContext, Map<String, Object> map) {
        StringBuilder sb = new StringBuilder();
        boolean zAllTags = allTags(nVContext, sb);
        map.put("ab_groups", sb.toString());
        return zAllTags;
    }

    public static boolean allTags(NVContext nVContext, StringBuilder sb) {
        sb.append(',');
        for (ABTest aBTest : ABTest.LOGGING_USER_PROPS) {
            sb.append(aBTest);
            sb.append("_");
            sb.append(ABTest.ab(aBTest) ? "A" : "B");
            sb.append(',');
        }
        return true;
    }
}
