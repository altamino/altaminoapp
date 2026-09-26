package com.narvii.master.launch;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.narvii.amino.BuildConfig;
import com.narvii.util.Log;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class FirstLaunchViewModel extends ViewModel {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final MutableLiveData<InstallType> _installState;

    @NotNull
    private final LiveData<InstallType> installState;

    @NotNull
    private final FirstLaunchRepository launchRepository;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ViewModelProvider.Factory getFactory(@NotNull final Context context) {
            t.j(context, "context");
            return new ViewModelProvider.Factory() { // from class: com.narvii.master.launch.FirstLaunchViewModel$Companion$getFactory$1
                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public /* bridge */ /* synthetic */ ViewModel create(@NotNull Class cls, @NotNull CreationExtras creationExtras) {
                    return j.b(this, cls, creationExtras);
                }

                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
                    t.j(modelClass, "modelClass");
                    return new FirstLaunchViewModel(new FirstLaunchRepository(context));
                }
            };
        }
    }

    @NotNull
    public static final ViewModelProvider.Factory getFactory(@NotNull Context context) {
        return Companion.getFactory(context);
    }

    @NotNull
    public final LiveData<InstallType> getInstallState() {
        return this.installState;
    }

    public FirstLaunchViewModel(@NotNull FirstLaunchRepository launchRepository) {
        t.j(launchRepository, "launchRepository");
        this.launchRepository = launchRepository;
        MutableLiveData<InstallType> mutableLiveData = new MutableLiveData<>();
        this._installState = mutableLiveData;
        this.installState = mutableLiveData;
        checkInstallType();
    }

    public final void checkInstallType() {
        int versionCode = this.launchRepository.getVersionCode();
        if (versionCode == -1) {
            this.launchRepository.saveVersionCode(BuildConfig.VERSION_CODE);
            Log.i("FirstLaunchViewModel", "First launch");
            this._installState.p(InstallType.FreshInstall.INSTANCE);
        } else {
            if (versionCode >= 39569) {
                Log.i("FirstLaunchViewModel", "Normal launch");
                this._installState.p(InstallType.NormalLaunch.INSTANCE);
                return;
            }
            this.launchRepository.saveVersionCode(BuildConfig.VERSION_CODE);
            Log.i("FirstLaunchViewModel", "Upgrade from " + versionCode + " to " + BuildConfig.VERSION_CODE);
            this._installState.p(new InstallType.Upgrade(versionCode, BuildConfig.VERSION_CODE));
        }
    }
}
