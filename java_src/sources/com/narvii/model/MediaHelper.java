package com.narvii.model;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class MediaHelper {
    public static String[] getUrlsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            strArr[i10] = list.get(i10).url;
        }
        return strArr;
    }

    public static float[] getVideoDurationsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new float[0];
        }
        float[] fArr = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).isVideo()) {
                fArr[i10] = list.get(i10).duration;
            }
        }
        return fArr;
    }

    public static String[] getVideoUrlsFromMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).isVideo()) {
                strArr[i10] = list.get(i10).url;
            }
        }
        return strArr;
    }
}
