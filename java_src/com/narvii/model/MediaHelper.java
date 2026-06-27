package com.narvii.model;

import java.util.List;

/* loaded from: classes3.dex */
public class MediaHelper {
    public static String[] getUrlsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = list.get(i).url;
        }
        return strArr;
    }

    public static String[] getVideoUrlsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).isVideo()) {
                strArr[i] = list.get(i).url;
            }
        }
        return strArr;
    }

    public static float[] getVideoDurationsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new float[0];
        }
        float[] fArr = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).isVideo()) {
                fArr[i] = list.get(i).duration;
            }
        }
        return fArr;
    }
}
