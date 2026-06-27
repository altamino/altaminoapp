package com.facebook.ads.redexgen.X;

import java.io.File;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.18, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass18 implements Comparator<File> {
    private AnonymousClass18() {
    }

    private int A00(long j, long j2) {
        int i = 0;
        char c = j < j2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    if (j != j2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i = 0;
                    c = 3;
                    break;
                case 6:
                    i = 1;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final int compare(File file, File file2) {
        return A00(file.lastModified(), file2.lastModified());
    }
}
