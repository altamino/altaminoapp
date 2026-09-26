package com.narvii.permisson;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public interface PermissionListener {
    void onPermissionDenied(int i10, boolean z6, ArrayList<String> arrayList);

    void onPermissionGranted(int i10);
}
