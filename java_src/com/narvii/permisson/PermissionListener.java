package com.narvii.permisson;

import java.util.ArrayList;

/* loaded from: classes.dex */
public interface PermissionListener {
    void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList);

    void onPermissionGranted(int i);
}
