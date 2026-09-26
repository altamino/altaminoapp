package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class k extends Fragment {
    private static final String TAG = "RMFragment";
    private final Set<k> childRequestManagerFragments;
    private final com.bumptech.glide.manager.a lifecycle;

    @Nullable
    private Fragment parentFragmentHint;

    @Nullable
    private com.bumptech.glide.j requestManager;
    private final m requestManagerTreeNode;

    @Nullable
    private k rootRequestManagerFragment;

    private class a implements m {
        a() {
        }

        @Override // com.bumptech.glide.manager.m
        @NonNull
        public Set<com.bumptech.glide.j> a() {
            Set<k> setB = k.this.b();
            HashSet hashSet = new HashSet(setB.size());
            for (k kVar : setB) {
                if (kVar.e() != null) {
                    hashSet.add(kVar.e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        this(new com.bumptech.glide.manager.a());
    }

    @NonNull
    com.bumptech.glide.manager.a c() {
        return this.lifecycle;
    }

    @Nullable
    public com.bumptech.glide.j e() {
        return this.requestManager;
    }

    @NonNull
    public m f() {
        return this.requestManagerTreeNode;
    }

    public void k(@Nullable com.bumptech.glide.j jVar) {
        this.requestManager = jVar;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    k(@NonNull com.bumptech.glide.manager.a aVar) {
        this.requestManagerTreeNode = new a();
        this.childRequestManagerFragments = new HashSet();
        this.lifecycle = aVar;
    }

    private void a(k kVar) {
        this.childRequestManagerFragments.add(kVar);
    }

    private void i(k kVar) {
        this.childRequestManagerFragments.remove(kVar);
    }

    private void l() {
        k kVar = this.rootRequestManagerFragment;
        if (kVar != null) {
            kVar.i(this);
            this.rootRequestManagerFragment = null;
        }
    }

    @NonNull
    @TargetApi(17)
    Set<k> b() {
        if (equals(this.rootRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.childRequestManagerFragments);
        }
        if (this.rootRequestManagerFragment == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (k kVar : this.rootRequestManagerFragment.b()) {
            if (g(kVar.getParentFragment())) {
                hashSet.add(kVar);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    void j(@Nullable Fragment fragment) {
        this.parentFragmentHint = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        h(fragment.getActivity());
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + d() + "}";
    }

    @Nullable
    @TargetApi(17)
    private Fragment d() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            return this.parentFragmentHint;
        }
        return parentFragment;
    }

    @TargetApi(17)
    private boolean g(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 != null) {
                if (parentFragment2.equals(parentFragment)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    private void h(@NonNull Activity activity) {
        l();
        k kVarI = com.bumptech.glide.b.c(activity).k().i(activity);
        this.rootRequestManagerFragment = kVarI;
        if (!equals(kVarI)) {
            this.rootRequestManagerFragment.a(this);
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            h(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lifecycle.c();
        l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.lifecycle.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.lifecycle.e();
    }
}
