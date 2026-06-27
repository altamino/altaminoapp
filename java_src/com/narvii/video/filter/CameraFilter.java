package com.narvii.video.filter;

import java.io.File;
import java.util.List;
import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes3.dex */
public interface CameraFilter {
    int customFilterCamera(byte[] bArr, int i, EGLContext eGLContext, int i2, int i3);

    void initCustomFilter();

    void initFilterResource(String str, List<File> list, FilterCallBack filterCallBack);

    boolean isInitSuccessful();

    boolean needFilter();

    void onCameraChanged();

    void onDestroy();

    void updateFilter(Object obj);
}
