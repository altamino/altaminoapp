package com.bytedance.tea.common.utility.io;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
