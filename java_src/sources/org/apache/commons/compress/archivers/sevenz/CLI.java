package org.apache.commons.compress.archivers.sevenz;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes6.dex */
public class CLI {

    private enum Mode {
        LIST("Analysing") { // from class: org.apache.commons.compress.archivers.sevenz.CLI.Mode.1
            private String getContentMethods(SevenZArchiveEntry sevenZArchiveEntry) {
                StringBuilder sb = new StringBuilder();
                boolean z6 = true;
                for (SevenZMethodConfiguration sevenZMethodConfiguration : sevenZArchiveEntry.getContentMethods()) {
                    if (!z6) {
                        sb.append(", ");
                    }
                    sb.append(sevenZMethodConfiguration.getMethod());
                    if (sevenZMethodConfiguration.getOptions() != null) {
                        sb.append("(");
                        sb.append(sevenZMethodConfiguration.getOptions());
                        sb.append(")");
                    }
                    z6 = false;
                }
                return sb.toString();
            }

            @Override // org.apache.commons.compress.archivers.sevenz.CLI.Mode
            public void takeAction(SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) {
                PrintStream printStream = System.out;
                printStream.print(sevenZArchiveEntry.getName());
                if (sevenZArchiveEntry.isDirectory()) {
                    printStream.print(" dir");
                } else {
                    printStream.print(" " + sevenZArchiveEntry.getCompressedSize() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + sevenZArchiveEntry.getSize());
                }
                if (sevenZArchiveEntry.getHasLastModifiedDate()) {
                    printStream.print(" " + sevenZArchiveEntry.getLastModifiedDate());
                } else {
                    printStream.print(" no last modified date");
                }
                if (sevenZArchiveEntry.isDirectory()) {
                    printStream.println("");
                    return;
                }
                printStream.println(" " + getContentMethods(sevenZArchiveEntry));
            }
        },
        EXTRACT("Extracting") { // from class: org.apache.commons.compress.archivers.sevenz.CLI.Mode.2
            private final byte[] buf = new byte[8192];

            @Override // org.apache.commons.compress.archivers.sevenz.CLI.Mode
            public void takeAction(SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
                File file = new File(sevenZArchiveEntry.getName());
                if (sevenZArchiveEntry.isDirectory()) {
                    if (!file.isDirectory() && !file.mkdirs()) {
                        throw new IOException("Cannot create directory " + file);
                    }
                    System.out.println("created directory " + file);
                    return;
                }
                System.out.println("extracting to " + file);
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                    throw new IOException("Cannot create " + parentFile);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    long size = sevenZArchiveEntry.getSize();
                    long j6 = 0;
                    while (j6 < size) {
                        int i10 = sevenZFile.read(this.buf, 0, (int) Math.min(size - j6, this.buf.length));
                        if (i10 < 1) {
                            throw new IOException("reached end of entry " + sevenZArchiveEntry.getName() + " after " + j6 + " bytes, expected " + size);
                        }
                        j6 += (long) i10;
                        fileOutputStream.write(this.buf, 0, i10);
                    }
                    fileOutputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            }
        };

        private final String message;

        public String getMessage() {
            return this.message;
        }

        public abstract void takeAction(SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) throws IOException;

        Mode(String str) {
            this.message = str;
        }
    }

    private static Mode grabMode(String[] strArr) {
        return strArr.length < 2 ? Mode.LIST : (Mode) Enum.valueOf(Mode.class, strArr[1].toUpperCase());
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            usage();
            return;
        }
        Mode modeGrabMode = grabMode(strArr);
        System.out.println(modeGrabMode.getMessage() + " " + strArr[0]);
        File file = new File(strArr[0]);
        if (!file.isFile()) {
            System.err.println(file + " doesn't exist or is a directory");
        }
        SevenZFile sevenZFile = new SevenZFile(file);
        while (true) {
            try {
                SevenZArchiveEntry nextEntry = sevenZFile.getNextEntry();
                if (nextEntry == null) {
                    sevenZFile.close();
                    return;
                }
                modeGrabMode.takeAction(sevenZFile, nextEntry);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        sevenZFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    private static void usage() {
        System.out.println("Parameters: archive-name [list|extract]");
    }
}
