package com.narvii.monetization.avatarframe.loader;

import com.narvii.util.FileUtils;
import com.narvii.util.fileloader.DiskDaemonHelper;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AvatarFrameCache.kt */
/* loaded from: classes3.dex */
public final class AvatarFrameCache implements INVFileCache {
    private final File dir;
    private final DiskDaemonHelper diskDaemonHelper;

    public AvatarFrameCache(File dir) {
        Intrinsics.checkParameterIsNotNull(dir, "dir");
        this.dir = dir;
        this.diskDaemonHelper = new DiskDaemonHelper(this.dir, "avatar-frame-disk-daemon");
    }

    public final File getDir() {
        return this.dir;
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public File get(String fileName) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        File file = new File(this.dir, fileName);
        touch(file);
        return file;
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void put(String fileName, File file) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(file, "file");
        File file2 = new File(this.dir, fileName);
        FileUtils.deleteFile(file2);
        if (file.renameTo(file2)) {
            this.diskDaemonHelper.touch(file2);
        }
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public boolean remove(String fileName) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        return FileUtils.deleteFile(new File(this.dir, fileName));
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void clear() {
        this.diskDaemonHelper.clear();
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void trimAndFlush(int i, long j) {
        this.diskDaemonHelper.trimAndFlush(i, j);
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void touch(File file) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        this.diskDaemonHelper.touch(file);
    }
}
