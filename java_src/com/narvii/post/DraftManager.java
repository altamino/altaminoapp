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

/* loaded from: classes.dex */
public class DraftManager {
    private final Comparator<DraftInfo> DI_COMP = new Comparator<DraftInfo>() { // from class: com.narvii.post.DraftManager.2
        @Override // java.util.Comparator
        public int compare(DraftInfo draftInfo, DraftInfo draftInfo2) {
            long j = draftInfo2.modifiedTime - draftInfo.modifiedTime;
            if (j == 0) {
                return 0;
            }
            return j < 0 ? -1 : 1;
        }
    };
    private final Comparator<DraftInfo> DI_COMP_CREATE = new Comparator<DraftInfo>() { // from class: com.narvii.post.DraftManager.3
        @Override // java.util.Comparator
        public int compare(DraftInfo draftInfo, DraftInfo draftInfo2) {
            long j = draftInfo2.createdTime - draftInfo.createdTime;
            if (j == 0) {
                return 0;
            }
            return j < 0 ? -1 : 1;
        }
    };
    private int communityId;
    private NVContext context;
    private File draftsDir;
    private boolean logCreatedTime;

    public DraftManager(NVContext nVContext, int i) {
        this.context = nVContext;
        this.communityId = i;
        this.draftsDir = new File(getDraftsRootDir(nVContext.getContext()), "x" + i);
    }

    public void setLogCreatedTime(boolean z) {
        this.logCreatedTime = z;
    }

    public static void archiveDrafts(NVContext nVContext, boolean z) {
        File draftsRootDir = getDraftsRootDir(nVContext.getContext());
        if (draftsRootDir.isDirectory()) {
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
            if (z) {
                Utils.deleteDir(draftsRootDir);
            }
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

    private static File getArchiveFile(Context context, String str) {
        return new File(new File(context.getFilesDir(), "archive"), "drafts-" + str + ".zip");
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

    private String createNewId() {
        return UUID.randomUUID().toString();
    }

    public File getDir(String str) {
        return new File(this.draftsDir, str);
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

    public DraftInfo getInfo(String str) throws Throwable {
        File dir = getDir(str);
        String stringFromFile = Utils.readStringFromFile(new File(dir, "type"));
        if (TextUtils.isEmpty(stringFromFile)) {
            return null;
        }
        DraftInfo draftInfo = new DraftInfo();
        draftInfo.id = str;
        draftInfo.type = stringFromFile;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(Utils.readStringFromFile(new File(dir, "params")));
        if (objectNodeCreateObjectNode == null || objectNodeCreateObjectNode.size() == 0) {
            objectNodeCreateObjectNode = null;
        }
        draftInfo.params = objectNodeCreateObjectNode;
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

    public boolean isDraftExists(String str) {
        File dir = getDir(str);
        return dir != null && dir.exists() && dir.isDirectory();
    }

    public List<DraftInfo> list() {
        return listSorted(this.DI_COMP);
    }

    public List<DraftInfo> listSortedByCreateTime() {
        return listSorted(this.DI_COMP_CREATE);
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

    public DraftInfo getLatestDraftInfo(String str) {
        prepare();
        List<DraftInfo> list = list(str);
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
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

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T extends com.narvii.post.PostObject> T readPost(java.lang.String r7, java.lang.Class<T> r8) {
        /*
            r6 = this;
            java.io.File r0 = new java.io.File
            java.io.File r7 = r6.getDir(r7)
            java.lang.String r1 = "post"
            r0.<init>(r7, r1)
            long r1 = r0.length()
            r3 = 0
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r7 != 0) goto L23
            java.io.File r7 = com.narvii.util.SafeFileOutputStream.getBakFile(r0)
            long r1 = r7.length()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L23
            goto L24
        L23:
            r7 = r0
        L24:
            long r0 = r7.length()
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 <= 0) goto L4a
            com.fasterxml.jackson.databind.ObjectMapper r0 = com.narvii.util.JacksonUtils.DEFAULT_MAPPER     // Catch: java.lang.Exception -> L35
            java.lang.Object r0 = r0.readValue(r7, r8)     // Catch: java.lang.Exception -> L35
            com.narvii.post.PostObject r0 = (com.narvii.post.PostObject) r0     // Catch: java.lang.Exception -> L35
            return r0
        L35:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "fail to read post from "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            com.narvii.util.Log.w(r7, r0)
        L4a:
            java.lang.Object r7 = r8.newInstance()     // Catch: java.lang.Exception -> L51
            com.narvii.post.PostObject r7 = (com.narvii.post.PostObject) r7     // Catch: java.lang.Exception -> L51
            return r7
        L51:
            r7 = move-exception
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.post.DraftManager.readPost(java.lang.String, java.lang.Class):com.narvii.post.PostObject");
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

    public void deleteDraft(String str) {
        Utils.deleteDir(getDir(str));
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
}
