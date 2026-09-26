package com.narvii.util;

import com.narvii.model.Comment;
import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes9.dex */
public class DeeplinkUtils {
    public static String getDeepLink(NVObject nVObject) {
        if (nVObject == null) {
            return null;
        }
        String str = nVObject.objectTypeName() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + nVObject.id();
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
