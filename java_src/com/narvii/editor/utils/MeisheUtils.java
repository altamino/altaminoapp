package com.narvii.editor.utils;

import android.os.Build;
import com.meicam.sdk.NvsAssetPackageManager;
import com.meicam.sdk.NvsStreamingContext;
import com.narvii.app.NVContext;
import com.narvii.asset.AssetDownloader;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FileUtils;
import com.narvii.video.model.Caption;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class MeisheUtils {
    public static final String CAPTION_STYLE = ".captionstyle";
    public static boolean isSupportMeishe = true;

    public static boolean isSupportMeishe() {
        String str = Build.CPU_ABI;
        return str != null && str.startsWith("arm") && isSupportMeishe && Build.VERSION.SDK_INT >= 21;
    }

    public static void checkCaptionStyle(NVContext nVContext, SceneDraft sceneDraft) {
        ArrayList<Caption> arrayList;
        if (sceneDraft == null || sceneDraft.sceneInfos == null) {
            return;
        }
        NvsAssetPackageManager assetPackageManager = NvsStreamingContext.getInstance().getAssetPackageManager();
        for (SceneInfo sceneInfo : sceneDraft.sceneInfos) {
            if (sceneInfo != null && (arrayList = sceneInfo.captions) != null) {
                Iterator<Caption> it = arrayList.iterator();
                while (it.hasNext()) {
                    Caption next = it.next();
                    if (next.styleId != null && next.styleObjectId != null) {
                        boolean z = !FileUtils.isEmpty(((AssetDownloader) nVContext.getService("captionStyle")).getDownloadedFile(next.styleObjectId));
                        if ((assetPackageManager.getAssetPackageStatus(next.styleId, 2) != 0) && !z) {
                            assetPackageManager.uninstallAssetPackage(next.styleId, 2);
                        }
                    }
                }
            }
        }
    }

    public static void uninstallAllAssetsOfType(int i) {
        NvsAssetPackageManager assetPackageManager;
        List<String> assetPackageListOfType;
        if (isSupportMeishe() && (assetPackageListOfType = (assetPackageManager = NvsStreamingContext.getInstance().getAssetPackageManager()).getAssetPackageListOfType(i)) != null) {
            Iterator<String> it = assetPackageListOfType.iterator();
            while (it.hasNext()) {
                assetPackageManager.uninstallAssetPackage(it.next(), i);
            }
        }
    }

    public static String installAsset(File file, int i, String str) {
        File file2;
        File file3;
        if (file != null && file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                file2 = null;
                file3 = null;
                for (File file4 : fileArrListFiles) {
                    if (file4 != null && file4.exists()) {
                        if (file2 == null && file4.getName().endsWith(str)) {
                            file2 = file4;
                        } else if (file3 == null && file4.getName().endsWith(".lic")) {
                            file3 = file4;
                        }
                    }
                }
            } else {
                file2 = null;
                file3 = null;
            }
            if (file2 != null && file3 != null) {
                NvsAssetPackageManager assetPackageManager = NvsStreamingContext.getInstance().getAssetPackageManager();
                StringBuilder sb = new StringBuilder();
                int iInstallAssetPackage = assetPackageManager.installAssetPackage(file2.getAbsolutePath(), file3.getAbsolutePath(), i, true, sb);
                if (iInstallAssetPackage == 0) {
                    return sb.toString();
                }
                if (iInstallAssetPackage == 2) {
                    int assetPackageVersion = assetPackageManager.getAssetPackageVersion(sb.toString(), i);
                    int assetPackageVersionFromAssetPackageFilePath = assetPackageManager.getAssetPackageVersionFromAssetPackageFilePath(file2.getAbsolutePath());
                    if (assetPackageVersionFromAssetPackageFilePath > assetPackageVersion) {
                        if (assetPackageManager.upgradeAssetPackage(file2.getAbsolutePath(), file3.getAbsolutePath(), i, true, sb) == 0) {
                            return sb.toString();
                        }
                    } else {
                        if (assetPackageVersionFromAssetPackageFilePath == assetPackageVersion) {
                            return sb.toString();
                        }
                        StringBuilder sb2 = new StringBuilder();
                        assetPackageManager.uninstallAssetPackage(sb2.toString(), i);
                        if (assetPackageManager.installAssetPackage(file2.getAbsolutePath(), file3.getAbsolutePath(), i, true, sb2) == 0) {
                            return sb2.toString();
                        }
                    }
                }
            }
        }
        return null;
    }
}
