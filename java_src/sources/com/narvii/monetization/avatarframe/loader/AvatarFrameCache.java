package com.narvii.monetization.avatarframe.loader;

import com.narvii.util.FileUtils;
import com.narvii.util.fileloader.DiskDaemonHelper;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AvatarFrameCache implements INVFileCache {

    @NotNull
    private final File dir;

    @NotNull
    private final DiskDaemonHelper diskDaemonHelper;

    @NotNull
    public final File getDir() {
        return this.dir;
    }

    public AvatarFrameCache(@NotNull File dir) {
        t.j(dir, "dir");
        this.dir = dir;
        this.diskDaemonHelper = new DiskDaemonHelper(dir, "avatar-frame-disk-daemon");
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void clear() {
        this.diskDaemonHelper.clear();
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    @NotNull
    public File get(@NotNull String fileName) {
        t.j(fileName, "fileName");
        File file = new File(this.dir, fileName);
        touch(file);
        return file;
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void put(@NotNull String fileName, @NotNull File file) {
        t.j(fileName, "fileName");
        t.j(file, "file");
        File file2 = new File(this.dir, fileName);
        FileUtils.deleteFile(file2);
        if (file.renameTo(file2)) {
            this.diskDaemonHelper.touch(file2);
        }
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public boolean remove(@NotNull String fileName) {
        t.j(fileName, "fileName");
        return FileUtils.deleteFile(new File(this.dir, fileName));
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void touch(@NotNull File file) {
        t.j(file, "file");
        this.diskDaemonHelper.touch(file);
    }

    @Override // com.narvii.util.fileloader.INVFileCache
    public void trimAndFlush(int i10, long j6) {
        this.diskDaemonHelper.trimAndFlush(i10, j6);
    }
}
