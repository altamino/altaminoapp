package com.narvii.app;

import com.narvii.permisson.PermissionListener;

/* JADX INFO: loaded from: classes10.dex */
public interface IPermissionResultDispatcher {
    void registerPermissionResult(int i10, PermissionListener permissionListener);

    void unRegisterPermissionResult(int i10, PermissionListener permissionListener);
}
