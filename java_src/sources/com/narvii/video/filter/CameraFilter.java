package com.narvii.video.filter;

import java.io.File;
import java.util.List;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes11.dex */
public interface CameraFilter {
    int customFilterCamera(byte[] bArr, int i10, EGLContext eGLContext, int i11, int i12);

    void initCustomFilter();

    void initFilterResource(String str, List<File> list, FilterCallBack filterCallBack);

    boolean isInitSuccessful();

    boolean needFilter();

    void onCameraChanged();

    void onDestroy();

    void updateFilter(Object obj);
}
