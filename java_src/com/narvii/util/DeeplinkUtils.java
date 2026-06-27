package com.narvii.util;

import com.narvii.model.Comment;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class DeeplinkUtils {
    public static String getDeepLink(NVObject nVObject) {
        if (nVObject == null) {
            return null;
        }
        String str = nVObject.objectTypeName() + "/" + nVObject.id();
        if (!(nVObject instanceof Comment)) {
            return str;
        }
        Comment comment = (Comment) nVObject;
        return str + "?parent-type=" + comment.parentType + "&parent-id=" + comment.parentId;
    }

    public static String getNdcDeepLink(NVObject nVObject) {
        return "ndc://" + getDeepLink(nVObject);
    }
}
