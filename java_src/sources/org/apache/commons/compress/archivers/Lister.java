package org.apache.commons.compress.archivers;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* JADX INFO: loaded from: classes2.dex */
public final class Lister {
    private static final ArchiveStreamFactory factory = new ArchiveStreamFactory();

    private static ArchiveInputStream createArchiveInputStream(String[] strArr, InputStream inputStream) throws ArchiveException {
        return strArr.length > 1 ? factory.createArchiveInputStream(strArr[1], inputStream) : factory.createArchiveInputStream(inputStream);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            usage();
            return;
        }
        PrintStream printStream = System.out;
        printStream.println("Analysing " + strArr[0]);
        File file = new File(strArr[0]);
        if (!file.isFile()) {
            System.err.println(file + " doesn't exist or is a directory");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]));
        try {
            ArchiveInputStream archiveInputStreamCreateArchiveInputStream = createArchiveInputStream(strArr, bufferedInputStream);
            try {
                printStream.println("Created " + archiveInputStreamCreateArchiveInputStream.toString());
                while (true) {
                    ArchiveEntry nextEntry = archiveInputStreamCreateArchiveInputStream.getNextEntry();
                    if (nextEntry == null) {
                        archiveInputStreamCreateArchiveInputStream.close();
                        bufferedInputStream.close();
                        return;
                    }
                    System.out.println(nextEntry.getName());
                    try {
                        throw th;
                    } catch (Throwable th) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    if (archiveInputStreamCreateArchiveInputStream != null) {
                        try {
                            archiveInputStreamCreateArchiveInputStream.close();
                        } catch (Throwable th5) {
                            th3.addSuppressed(th5);
                        }
                    }
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            throw th6;
        }
    }

    private static void usage() {
        System.out.println("Parameters: archive-name [archive-type]");
    }
}
