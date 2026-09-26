package com.bytedance.tea.common.utility.io;

import com.google.common.base.c;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes11.dex */
public class FileUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f921a = {71, 73, 70, 56, TarConstants.LF_CONTIG, 97};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f922b = {71, 73, 70, 56, 57, 97};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f923c = {-1, -40, -1};
    private static final byte[] d = {-119, 80, 78, 71, c.CR, 10, c.SUB, 10};

    public enum ImageType {
        UNKNOWN,
        JPG,
        PNG,
        GIF
    }
}
