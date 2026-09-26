package com.narvii.util;

import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentExtensionsKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.util.FragmentExtensionsKt$viewBinding$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements kotlin.properties.d<Fragment, T>, DefaultLifecycleObserver {
        final /* synthetic */ l<LayoutInflater, T> $initialize;
        final /* synthetic */ Fragment $this_viewBinding;

        @Nullable
        private T binding;

        /* JADX INFO: renamed from: com.narvii.util.FragmentExtensionsKt$viewBinding$1$1, reason: invalid class name and collision with other inner class name */
        static final class C03631 extends v implements l<LifecycleOwner, l0> {
            C03631() {
                super(1);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(LifecycleOwner lifecycleOwner) {
                invoke2(lifecycleOwner);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LifecycleOwner lifecycleOwner) {
                lifecycleOwner.getLifecycle().a(AnonymousClass1.this);
            }
        }

        @Override // kotlin.properties.d
        public /* bridge */ /* synthetic */ Object getValue(Fragment fragment, KProperty kProperty) {
            return getValue2(fragment, (KProperty<?>) kProperty);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* bridge */ /* synthetic */ void onCreate(@NotNull LifecycleOwner lifecycleOwner) {
            androidx.lifecycle.c.a(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onDestroy(@NotNull LifecycleOwner owner) {
            t.j(owner, "owner");
            this.binding = null;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* bridge */ /* synthetic */ void onPause(@NotNull LifecycleOwner lifecycleOwner) {
            androidx.lifecycle.c.c(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* bridge */ /* synthetic */ void onResume(@NotNull LifecycleOwner lifecycleOwner) {
            androidx.lifecycle.c.d(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* bridge */ /* synthetic */ void onStart(@NotNull LifecycleOwner lifecycleOwner) {
            androidx.lifecycle.c.e(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public /* bridge */ /* synthetic */ void onStop(@NotNull LifecycleOwner lifecycleOwner) {
            androidx.lifecycle.c.f(this, lifecycleOwner);
        }

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Fragment fragment, l<? super LayoutInflater, ? extends T> lVar) {
            this.$this_viewBinding = fragment;
            this.$initialize = lVar;
            fragment.getViewLifecycleOwnerLiveData().i(fragment, new FragmentExtensionsKt$sam$androidx_lifecycle_Observer$0(new C03631()));
        }

        /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
        public T getValue2(@NotNull Fragment thisRef, @NotNull KProperty<?> property) {
            t.j(thisRef, "thisRef");
            t.j(property, "property");
            T t5 = this.binding;
            if (t5 != null) {
                return t5;
            }
            if (this.$this_viewBinding.getViewLifecycleOwner().getLifecycle().b() == Lifecycle.State.DESTROYED) {
                throw new IllegalStateException("Called before onCreateView or after onDestroyView.".toString());
            }
            l<LayoutInflater, T> lVar = this.$initialize;
            LayoutInflater layoutInflater = this.$this_viewBinding.getLayoutInflater();
            t.i(layoutInflater, "getLayoutInflater(...)");
            T tInvoke = lVar.invoke(layoutInflater);
            this.binding = tInvoke;
            return tInvoke;
        }
    }

    @NotNull
    public static final <T> kotlin.properties.d<Fragment, T> viewBinding(@NotNull Fragment fragment, @NotNull l<? super LayoutInflater, ? extends T> initialize) {
        t.j(fragment, "<this>");
        t.j(initialize, "initialize");
        return new AnonymousClass1(fragment, initialize);
    }
}
