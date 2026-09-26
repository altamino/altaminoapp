package com.mixpanel.android.util;

import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    private static final String DEFAULT_DIRECTORY_PREFIX = "MixpanelAPI.Images.";
    private static final String FILE_PREFIX = "MP_IMG_";

    public static void a(File file) {
        File[] fileArrListFiles;
        try {
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    a(file2);
                }
            }
            if (file.getName().contains(DEFAULT_DIRECTORY_PREFIX) || file.getName().contains(FILE_PREFIX)) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }
}
