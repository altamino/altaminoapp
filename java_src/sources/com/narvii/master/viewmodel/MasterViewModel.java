package com.narvii.master.viewmodel;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.narvii.app.NVApplication;
import com.narvii.master.viewmodel.repository.AccountRepository;
import com.narvii.services.incubator.IncubatorBackToHomeHelper;
import defpackage.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class MasterViewModel extends ViewModel {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final a<MasterUiState> _reLoginEvent;

    @NotNull
    private final AccountRepository accountRepository;

    @NotNull
    private final LiveData<MasterUiState> reLoginEvent;

    @NotNull
    private final SharedPreferences sharedPreferences;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ViewModelProvider.Factory factory(@NotNull final AccountRepository accountRepository, @NotNull final SharedPreferences sharedPreferences) {
            t.j(accountRepository, "accountRepository");
            t.j(sharedPreferences, "sharedPreferences");
            return new ViewModelProvider.Factory() { // from class: com.narvii.master.viewmodel.MasterViewModel$Companion$factory$1
                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public /* bridge */ /* synthetic */ ViewModel create(@NotNull Class cls, @NotNull CreationExtras creationExtras) {
                    return j.b(this, cls, creationExtras);
                }

                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
                    t.j(modelClass, "modelClass");
                    return new MasterViewModel(accountRepository, sharedPreferences);
                }
            };
        }
    }

    @NotNull
    public static final ViewModelProvider.Factory factory(@NotNull AccountRepository accountRepository, @NotNull SharedPreferences sharedPreferences) {
        return Companion.factory(accountRepository, sharedPreferences);
    }

    @NotNull
    public final LiveData<MasterUiState> getReLoginEvent() {
        return this.reLoginEvent;
    }

    public MasterViewModel(@NotNull AccountRepository accountRepository, @NotNull SharedPreferences sharedPreferences) {
        t.j(accountRepository, "accountRepository");
        t.j(sharedPreferences, "sharedPreferences");
        this.accountRepository = accountRepository;
        this.sharedPreferences = sharedPreferences;
        a<MasterUiState> aVar = new a<>();
        this._reLoginEvent = aVar;
        this.reLoginEvent = aVar;
    }

    private final boolean disallowOnBoarding(Intent intent) {
        return intent.getBooleanExtra("disallowOnBoarding", false);
    }

    private final boolean isMaster() {
        return NVApplication.CLIENT_TYPE == 100;
    }

    private final boolean isNotExploreTab(String str) {
        return !t.e(str, "explore");
    }

    private final boolean notShowLoginWhenOpenMaster(Intent intent) {
        return intent.getBooleanExtra(IncubatorBackToHomeHelper.NOT_SHOW_LOGIN_WHEN_OPEN_MASTER, true);
    }

    private final boolean signUpIsNotEnabled() {
        return !this.sharedPreferences.contains("signUpStrategy");
    }

    public final void launchReLogin(@Nullable Bundle bundle, @Nullable Intent intent) {
        if (bundle == null || intent == null || !isReloginIntent(intent)) {
            return;
        }
        this._reLoginEvent.m(new MasterUiState(true));
    }

    public final boolean shouldLaunchLoginIfExploreRequested(@NotNull Intent intent) {
        t.j(intent, "intent");
        String stringExtra = intent.getStringExtra("tab");
        if (stringExtra == null || isNotExploreTab(stringExtra) || !isMaster() || this.accountRepository.hasAccount() || notShowLoginWhenOpenMaster(intent)) {
            return false;
        }
        return signUpIsNotEnabled() || disallowOnBoarding(intent);
    }

    private final boolean isReloginIntent(Intent intent) {
        String host;
        Uri data = intent.getData();
        if (data != null) {
            host = data.getHost();
        } else {
            host = null;
        }
        return t.e("relogin", host);
    }
}
