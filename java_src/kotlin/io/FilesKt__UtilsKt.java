package kotlin.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.kt */
/* loaded from: classes4.dex */
public class FilesKt__UtilsKt extends FilesKt__FileTreeWalkKt {
    public static String getExtension(File extension) {
        Intrinsics.checkParameterIsNotNull(extension, "$this$extension");
        String name = extension.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        return StringsKt__StringsKt.substringAfterLast(name, '.', "");
    }

    public static String getNameWithoutExtension(File nameWithoutExtension) {
        Intrinsics.checkParameterIsNotNull(nameWithoutExtension, "$this$nameWithoutExtension");
        String name = nameWithoutExtension.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        return StringsKt__StringsKt.substringBeforeLast$default(name, ".", null, 2, null);
    }

    public static /* synthetic */ File copyTo$default(File file, File file2, boolean z, int i, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        copyTo(file, file2, z, i);
        return file2;
    }

    public static final File copyTo(File copyTo, File target, boolean z, int i) throws IOException {
        Intrinsics.checkParameterIsNotNull(copyTo, "$this$copyTo");
        Intrinsics.checkParameterIsNotNull(target, "target");
        if (!copyTo.exists()) {
            throw new NoSuchFileException(copyTo, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            boolean z2 = true;
            if (z && target.delete()) {
                z2 = false;
            }
            if (z2) {
                throw new FileAlreadyExistsException(copyTo, target, "The destination file already exists.");
            }
        }
        if (copyTo.isDirectory()) {
            if (!target.mkdirs()) {
                throw new FileSystemException(copyTo, target, "Failed to create target directory.");
            }
        } else {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(copyTo);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, i);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                } finally {
                }
            } finally {
            }
        }
        return target;
    }
}
