package com.narvii.util.crashlytics;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class FakeAppContext extends Application {
    private final String fakePackageName;
    private PackageManager pm;

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this;
    }

    public FakeAppContext(Context context, String str) throws Exception {
        Field declaredField = ContextWrapper.class.getDeclaredField("mBase");
        declaredField.setAccessible(true);
        declaredField.set(this, context);
        this.fakePackageName = str;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        return this.fakePackageName;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        if (this.pm == null) {
            this.pm = new FakePackageManager(super.getPackageManager(), getBaseContext().getPackageName(), this.fakePackageName);
        }
        return this.pm;
    }
}
