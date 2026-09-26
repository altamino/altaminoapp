package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
@RestrictTo
public class CoreComponentFactory extends android.app.AppComponentFactory {

    @RestrictTo
    public interface CompatWrapped {
        Object a();
    }

    static <T> T a(T t5) {
        T t10;
        return (!(t5 instanceof CompatWrapped) || (t10 = (T) ((CompatWrapped) t5).a()) == null) ? t5 : t10;
    }

    @NonNull
    public Activity instantiateActivity(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (Activity) a(super.instantiateActivity(classLoader, str, intent));
    }

    @NonNull
    public Application instantiateApplication(@NonNull ClassLoader classLoader, @NonNull String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (Application) a(super.instantiateApplication(classLoader, str));
    }

    @NonNull
    public ContentProvider instantiateProvider(@NonNull ClassLoader classLoader, @NonNull String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (ContentProvider) a(super.instantiateProvider(classLoader, str));
    }

    @NonNull
    public BroadcastReceiver instantiateReceiver(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (BroadcastReceiver) a(super.instantiateReceiver(classLoader, str, intent));
    }

    @NonNull
    public Service instantiateService(@NonNull ClassLoader classLoader, @NonNull String str, @Nullable Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (Service) a(super.instantiateService(classLoader, str, intent));
    }
}
