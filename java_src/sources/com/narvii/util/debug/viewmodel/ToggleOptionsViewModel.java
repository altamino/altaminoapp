package com.narvii.util.debug.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.narvii.util.debug.model.FailAttestation;
import com.narvii.util.debug.model.ToggleOptionsRepository;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class ToggleOptionsViewModel extends ViewModel {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final MutableLiveData<DebugToggleOptionsViewState> _toggleViewState;

    @NotNull
    private final ToggleOptionsRepository toggleOptionsRepository;

    @NotNull
    private final LiveData<DebugToggleOptionsViewState> toggleViewState;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ViewModelProvider.Factory factory(@NotNull final ToggleOptionsRepository toggleOptionsRepository) {
            t.j(toggleOptionsRepository, "toggleOptionsRepository");
            return new ViewModelProvider.Factory() { // from class: com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$Companion$factory$1
                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public /* bridge */ /* synthetic */ ViewModel create(@NotNull Class cls, @NotNull CreationExtras creationExtras) {
                    return j.b(this, cls, creationExtras);
                }

                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
                    t.j(modelClass, "modelClass");
                    return new ToggleOptionsViewModel(toggleOptionsRepository);
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$fetchToggleOptions$1, reason: invalid class name */
    @f(c = "com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$fetchToggleOptions$1", f = "ToggleOptionsViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        int label;

        AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return ToggleOptionsViewModel.this.new AnonymousClass1(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                ToggleOptionsViewModel.this._toggleViewState.p(DebugToggleOptionsViewState.Loading.INSTANCE);
                try {
                    ToggleOptionsViewModel.this._toggleViewState.p(new DebugToggleOptionsViewState.Success(new FailAttestation(ToggleOptionsViewModel.this.toggleOptionsRepository.shouldAttestationFailure())));
                } catch (Exception e) {
                    ToggleOptionsViewModel.this._toggleViewState.p(new DebugToggleOptionsViewState.Error(e));
                }
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$updateAttestationFailure$1, reason: invalid class name and case insensitive filesystem */
    @f(c = "com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$updateAttestationFailure$1", f = "ToggleOptionsViewModel.kt", l = {}, m = "invokeSuspend")
    static final class C05641 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ boolean $shouldFail;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05641(boolean z6, d<? super C05641> dVar) {
            super(2, dVar);
            this.$shouldFail = z6;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return ToggleOptionsViewModel.this.new C05641(this.$shouldFail, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((C05641) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                ToggleOptionsViewModel.this._toggleViewState.p(DebugToggleOptionsViewState.Loading.INSTANCE);
                try {
                    ToggleOptionsViewModel.this.toggleOptionsRepository.updateAttestationFailure(this.$shouldFail);
                    ToggleOptionsViewModel.this._toggleViewState.p(new DebugToggleOptionsViewState.Success(new FailAttestation(this.$shouldFail)));
                } catch (Exception e) {
                    ToggleOptionsViewModel.this._toggleViewState.p(new DebugToggleOptionsViewState.Error(e));
                }
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @NotNull
    public static final ViewModelProvider.Factory factory(@NotNull ToggleOptionsRepository toggleOptionsRepository) {
        return Companion.factory(toggleOptionsRepository);
    }

    @NotNull
    public final LiveData<DebugToggleOptionsViewState> getToggleViewState() {
        return this.toggleViewState;
    }

    public ToggleOptionsViewModel(@NotNull ToggleOptionsRepository toggleOptionsRepository) {
        t.j(toggleOptionsRepository, "toggleOptionsRepository");
        this.toggleOptionsRepository = toggleOptionsRepository;
        MutableLiveData<DebugToggleOptionsViewState> mutableLiveData = new MutableLiveData<>(DebugToggleOptionsViewState.Loading.INSTANCE);
        this._toggleViewState = mutableLiveData;
        this.toggleViewState = mutableLiveData;
    }

    public final void fetchToggleOptions() {
        kotlinx.coroutines.k.d(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void updateAttestationFailure(boolean z6) {
        kotlinx.coroutines.k.d(ViewModelKt.a(this), null, null, new C05641(z6, null), 3, null);
    }
}
