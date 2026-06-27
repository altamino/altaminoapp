package com.narvii.app;

import com.narvii.permisson.PermissionListener;

/* loaded from: classes.dex */
public interface IPermissionResultDispatcher {
    void registerPermissionResult(int i, PermissionListener permissionListener);

    void unRegisterPermissionResult(int i, PermissionListener permissionListener);
}
