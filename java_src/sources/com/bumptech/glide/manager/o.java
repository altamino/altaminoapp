package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class o extends Fragment {
    private static final String TAG = "SupportRMFragment";
    private final Set<o> childRequestManagerFragments;
    private final com.bumptech.glide.manager.a lifecycle;

    @Nullable
    private Fragment parentFragmentHint;

    @Nullable
    private com.bumptech.glide.j requestManager;
    private final m requestManagerTreeNode;

    @Nullable
    private o rootRequestManagerFragment;

    private class a implements m {
        a() {
        }

        @Override // com.bumptech.glide.manager.m
        @NonNull
        public Set<com.bumptech.glide.j> a() {
            Set<o> setG = o.this.g();
            HashSet hashSet = new HashSet(setG.size());
            for (o oVar : setG) {
                if (oVar.j() != null) {
                    hashSet.add(oVar.j());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + o.this + "}";
        }
    }

    public o() {
        this(new com.bumptech.glide.manager.a());
    }

    @NonNull
    com.bumptech.glide.manager.a h() {
        return this.lifecycle;
    }

    @Nullable
    public com.bumptech.glide.j j() {
        return this.requestManager;
    }

    @NonNull
    public m k() {
        return this.requestManagerTreeNode;
    }

    public void q(@Nullable com.bumptech.glide.j jVar) {
        this.requestManager = jVar;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public o(@NonNull com.bumptech.glide.manager.a aVar) {
        this.requestManagerTreeNode = new a();
        this.childRequestManagerFragments = new HashSet();
        this.lifecycle = aVar;
    }

    private void f(o oVar) {
        this.childRequestManagerFragments.add(oVar);
    }

    private void o(o oVar) {
        this.childRequestManagerFragments.remove(oVar);
    }

    private void r() {
        o oVar = this.rootRequestManagerFragment;
        if (oVar != null) {
            oVar.o(this);
            this.rootRequestManagerFragment = null;
        }
    }

    @NonNull
    Set<o> g() {
        o oVar = this.rootRequestManagerFragment;
        if (oVar == null) {
            return Collections.emptySet();
        }
        if (equals(oVar)) {
            return Collections.unmodifiableSet(this.childRequestManagerFragments);
        }
        HashSet hashSet = new HashSet();
        for (o oVar2 : this.rootRequestManagerFragment.g()) {
            if (m(oVar2.i())) {
                hashSet.add(oVar2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    void p(@Nullable Fragment fragment) {
        FragmentManager fragmentManagerL;
        this.parentFragmentHint = fragment;
        if (fragment == null || fragment.getContext() == null || (fragmentManagerL = l(fragment)) == null) {
            return;
        }
        n(fragment.getContext(), fragmentManagerL);
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + i() + "}";
    }

    @Nullable
    private Fragment i() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            return this.parentFragmentHint;
        }
        return parentFragment;
    }

    @Nullable
    private static FragmentManager l(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    private boolean m(@NonNull Fragment fragment) {
        Fragment fragmentI = i();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment != null) {
                if (parentFragment.equals(fragmentI)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    private void n(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        r();
        o oVarK = com.bumptech.glide.b.c(context).k().k(context, fragmentManager);
        this.rootRequestManagerFragment = oVarK;
        if (!equals(oVarK)) {
            this.rootRequestManagerFragment.f(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager fragmentManagerL = l(this);
        if (fragmentManagerL == null) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unable to register fragment with root, ancestor detached");
            }
        } else {
            try {
                n(getContext(), fragmentManagerL);
            } catch (IllegalStateException e) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Unable to register fragment with root", e);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lifecycle.c();
        r();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.parentFragmentHint = null;
        r();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.lifecycle.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.lifecycle.e();
    }
}
