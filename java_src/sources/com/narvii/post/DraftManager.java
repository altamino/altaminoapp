package com.narvii.post;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.modulization.Module;
import com.narvii.scene.SceneConstant;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.SafeFileOutputStream;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class DraftManager {
    private final Comparator<DraftInfo> DI_COMP = new Comparator<DraftInfo>() { // from class: com.narvii.post.DraftManager.2
        @Override // java.util.Comparator
        public int compare(DraftInfo draftInfo, DraftInfo draftInfo2) {
            long j6 = draftInfo2.modifiedTime - draftInfo.modifiedTime;
            if (j6 == 0) {
                return 0;
            }
            return j6 < 0 ? -1 : 1;
        }
    };
    private final Comparator<DraftInfo> DI_COMP_CREATE = new Comparator<DraftInfo>() { // from class: com.narvii.post.DraftManager.3
        @Override // java.util.Comparator
        public int compare(DraftInfo draftInfo, DraftInfo draftInfo2) {
            long j6 = draftInfo2.createdTime - draftInfo.createdTime;
            if (j6 == 0) {
                return 0;
            }
            return j6 < 0 ? -1 : 1;
        }
    };
    private int communityId;
    private NVContext context;
    private File draftsDir;
    private boolean logCreatedTime;

    public List<DraftInfo> list() {
        return listSorted(this.DI_COMP);
    }

    public List<DraftInfo> listSortedByCreateTime() {
        return listSorted(this.DI_COMP_CREATE);
    }

    public void setLogCreatedTime(boolean z6) {
        this.logCreatedTime = z6;
    }

    private static File getArchiveFile(Context context, String str) {
        return new File(new File(context.getFilesDir(), "archive"), "drafts-" + str + ".zip");
    }

    public static File getDraftsRootDir(Context context) {
        return new File(context.getFilesDir(), "drafts");
    }

    public static File[] listArchiveFiles(Context context) {
        File[] fileArrListFiles = new File(context.getFilesDir(), "archive").listFiles(new FileFilter() { // from class: com.narvii.post.DraftManager.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file.getName().startsWith("drafts-");
            }
        });
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    private boolean prepare() {
        String userId;
        AccountService accountService = (AccountService) this.context.getService("account");
        if (accountService != null && (userId = accountService.getUserId()) != null) {
            File archiveFile = getArchiveFile(this.context.getContext(), userId);
            if (archiveFile.length() > 0) {
                File draftsRootDir = getDraftsRootDir(this.context.getContext());
                if (!draftsRootDir.mkdir()) {
                    return false;
                }
                ZipUtils.extract(archiveFile, draftsRootDir);
                archiveFile.delete();
            }
        }
        return true;
    }

    public static void removeOldDrafts(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("postindex", 0);
        for (String str : sharedPreferences.getAll().keySet()) {
            if ("index".equals(sharedPreferences.getString(str, null))) {
                context.getSharedPreferences(str, 0).edit().clear().commit();
            }
        }
        sharedPreferences.edit().clear().commit();
    }

    public void clearDrafts() {
        Utils.deleteDir(this.draftsDir);
    }

    public void deleteDrafts(List<DraftInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (DraftInfo draftInfo : list) {
            if (draftInfo != null) {
                deleteDraft(draftInfo.id);
            }
        }
    }

    public File getDir(String str) {
        return new File(this.draftsDir, str);
    }

    public List<DraftInfo> list(String str) {
        if (TextUtils.isEmpty(str)) {
            return list();
        }
        List<DraftInfo> list = list();
        if (list.size() == 0) {
            return Collections.emptyList();
        }
        Iterator<DraftInfo> it = list.iterator();
        while (it.hasNext()) {
            DraftInfo next = it.next();
            if (next == null || !TextUtils.equals(next.type, str)) {
                it.remove();
            }
        }
        return list;
    }

    public List<DraftInfo> listSortedByCreateTime(String str) {
        if (TextUtils.isEmpty(str)) {
            return list();
        }
        List<DraftInfo> listListSortedByCreateTime = listSortedByCreateTime();
        if (listListSortedByCreateTime.size() == 0) {
            return Collections.emptyList();
        }
        Iterator<DraftInfo> it = listListSortedByCreateTime.iterator();
        while (it.hasNext()) {
            DraftInfo next = it.next();
            if (next == null || !TextUtils.equals(next.type, str)) {
                it.remove();
            }
        }
        return listListSortedByCreateTime;
    }

    public <T extends PostObject> T readPost(String str, Class<T> cls) {
        File file = new File(getDir(str), Module.MODULE_POSTS);
        if (file.length() == 0) {
            File bakFile = SafeFileOutputStream.getBakFile(file);
            if (bakFile.length() > 0) {
                file = bakFile;
            }
        }
        if (file.length() > 0) {
            try {
                return (T) JacksonUtils.DEFAULT_MAPPER.readValue(file, cls);
            } catch (Exception e) {
                Log.w("fail to read post from " + file, e);
            }
        }
        try {
            return cls.newInstance();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean savePost(String str, PostObject postObject) throws Throwable {
        File file = new File(getDir(str), Module.MODULE_POSTS);
        try {
            byte[] dataFromFile = Utils.readDataFromFile(file);
            if (dataFromFile == null) {
                JacksonUtils.DEFAULT_MAPPER.writeValue(file, postObject);
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(dataFromFile.length, 4));
                JacksonUtils.DEFAULT_MAPPER.writeValue(byteArrayOutputStream, postObject);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (Arrays.equals(dataFromFile, byteArray)) {
                    return false;
                }
                Utils.writeToFile(file, byteArray, true);
            }
            return true;
        } catch (Exception e) {
            Log.w("fail to save post to " + file, e);
            return false;
        }
    }

    public DraftManager(NVContext nVContext, int i10) {
        this.context = nVContext;
        this.communityId = i10;
        this.draftsDir = new File(getDraftsRootDir(nVContext.getContext()), "x" + i10);
    }

    public static void archiveDrafts(NVContext nVContext, boolean z6) {
        File draftsRootDir = getDraftsRootDir(nVContext.getContext());
        if (!draftsRootDir.isDirectory()) {
            return;
        }
        String userId = ((AccountService) nVContext.getService("account")).getUserId();
        if (userId != null) {
            File archiveFile = getArchiveFile(nVContext.getContext(), userId);
            try {
                clearRedundantFiles(draftsRootDir);
                ZipUtils.storeFile(draftsRootDir, archiveFile);
            } catch (Exception e) {
                Log.e("fail to archive drafts", e);
            }
        }
        if (z6) {
            Utils.deleteDir(draftsRootDir);
        }
    }

    private static void clearRedundantFiles(File file) {
        for (File file2 : file.listFiles()) {
            if (file2.exists() && file2.isDirectory()) {
                for (File file3 : file2.listFiles()) {
                    File file4 = new File(file3, SceneConstant.PREVIEW_VIDEO_FOLDER);
                    if (file4.exists() && file4.isDirectory()) {
                        FileUtils.deleteFile(file4);
                    }
                }
            }
        }
    }

    private String createNewId() {
        return UUID.randomUUID().toString();
    }

    private List<DraftInfo> listSorted(Comparator<DraftInfo> comparator) throws Throwable {
        prepare();
        if (this.draftsDir.isDirectory()) {
            ArrayList arrayList = new ArrayList();
            for (File file : this.draftsDir.listFiles()) {
                DraftInfo info = getInfo(file.getName());
                if (info != null) {
                    arrayList.add(info);
                }
            }
            Collections.sort(arrayList, comparator);
            return arrayList;
        }
        return Collections.emptyList();
    }

    public String createDraft(String str, ObjectNode objectNode, PostObject postObject) {
        prepare();
        String strCreateNewId = createNewId();
        File dir = getDir(strCreateNewId);
        dir.mkdirs();
        Utils.writeToFile(new File(dir, "type"), str);
        if (objectNode != null && objectNode.size() > 0) {
            Utils.writeToFile(new File(dir, "params"), objectNode.toString());
        }
        if (postObject != null) {
            Utils.writeToFile(new File(dir, Module.MODULE_POSTS), JacksonUtils.safeWriteAsString(postObject));
        }
        if (this.logCreatedTime) {
            Utils.writeToFile(new File(dir, "createTime"), System.currentTimeMillis() + "");
        }
        return strCreateNewId;
    }

    public void deleteDraft(String str) {
        Utils.deleteDir(getDir(str));
    }

    public DraftInfo getInfo(String str) throws Throwable {
        File dir = getDir(str);
        String stringFromFile = Utils.readStringFromFile(new File(dir, "type"));
        ObjectNode objectNode = null;
        if (TextUtils.isEmpty(stringFromFile)) {
            return null;
        }
        DraftInfo draftInfo = new DraftInfo();
        draftInfo.id = str;
        draftInfo.type = stringFromFile;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(Utils.readStringFromFile(new File(dir, "params")));
        if (objectNodeCreateObjectNode != null && objectNodeCreateObjectNode.size() != 0) {
            objectNode = objectNodeCreateObjectNode;
        }
        draftInfo.params = objectNode;
        draftInfo.modifiedTime = Math.max(new File(dir, Module.MODULE_POSTS).lastModified(), dir.lastModified());
        if (this.logCreatedTime) {
            String stringFromFile2 = Utils.readStringFromFile(new File(dir, "createTime"));
            if (stringFromFile2 != null) {
                try {
                    draftInfo.createdTime = Long.valueOf(stringFromFile2).longValue();
                } catch (Exception unused) {
                    draftInfo.createdTime = draftInfo.modifiedTime;
                }
            } else {
                draftInfo.createdTime = draftInfo.modifiedTime;
            }
        }
        return draftInfo;
    }

    public DraftInfo getLatestDraftInfo(String str) {
        prepare();
        List<DraftInfo> list = list(str);
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    public boolean hasDraft(String str) throws Throwable {
        prepare();
        if (this.draftsDir.isDirectory()) {
            for (File file : this.draftsDir.listFiles()) {
                DraftInfo info = getInfo(file.getName());
                if (info != null && TextUtils.equals(str, info.type)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isDraftExists(String str) {
        File dir = getDir(str);
        if (dir != null && dir.exists() && dir.isDirectory()) {
            return true;
        }
        return false;
    }
}
