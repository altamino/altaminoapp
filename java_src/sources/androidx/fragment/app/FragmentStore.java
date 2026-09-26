package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
class FragmentStore {
    private static final String TAG = "FragmentManager";
    private FragmentManagerViewModel mNonConfig;
    private final ArrayList<Fragment> mAdded = new ArrayList<>();
    private final HashMap<String, FragmentStateManager> mActive = new HashMap<>();
    private final HashMap<String, FragmentState> mSavedState = new HashMap<>();

    void A(@NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        this.mNonConfig = fragmentManagerViewModel;
    }

    FragmentManagerViewModel p() {
        return this.mNonConfig;
    }

    @Nullable
    FragmentState B(@NonNull String str, @Nullable FragmentState fragmentState) {
        return fragmentState != null ? this.mSavedState.put(str, fragmentState) : this.mSavedState.remove(str);
    }

    void a(@NonNull Fragment fragment) {
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.mAdded) {
            this.mAdded.add(fragment);
        }
        fragment.mAdded = true;
    }

    void b() {
        this.mActive.values().removeAll(Collections.singleton(null));
    }

    boolean c(@NonNull String str) {
        return this.mActive.get(str) != null;
    }

    void d(int i10) {
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                fragmentStateManager.u(i10);
            }
        }
    }

    void e(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        String str2 = str + "    ";
        if (!this.mActive.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragmentK = fragmentStateManager.k();
                    printWriter.println(fragmentK);
                    fragmentK.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.mAdded.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size; i10++) {
                Fragment fragment = this.mAdded.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    @Nullable
    Fragment f(@NonNull String str) {
        FragmentStateManager fragmentStateManager = this.mActive.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.k();
        }
        return null;
    }

    @Nullable
    Fragment g(@IdRes int i10) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null && fragment.mFragmentId == i10) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragmentK = fragmentStateManager.k();
                if (fragmentK.mFragmentId == i10) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    @Nullable
    Fragment h(@Nullable String str) {
        if (str != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragmentK = fragmentStateManager.k();
                if (str.equals(fragmentK.mTag)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    @Nullable
    Fragment i(@NonNull String str) {
        Fragment fragmentFindFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null && (fragmentFindFragmentByWho = fragmentStateManager.k().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int j(@NonNull Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.mAdded.indexOf(fragment);
        for (int i10 = iIndexOf - 1; i10 >= 0; i10--) {
            Fragment fragment2 = this.mAdded.get(i10);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.mAdded.size()) {
                return -1;
            }
            Fragment fragment3 = this.mAdded.get(iIndexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    @NonNull
    List<FragmentStateManager> k() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    @NonNull
    List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    @NonNull
    ArrayList<FragmentState> m() {
        return new ArrayList<>(this.mSavedState.values());
    }

    @Nullable
    FragmentStateManager n(@NonNull String str) {
        return this.mActive.get(str);
    }

    @NonNull
    List<Fragment> o() {
        ArrayList arrayList;
        if (this.mAdded.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.mAdded) {
            arrayList = new ArrayList(this.mAdded);
        }
        return arrayList;
    }

    @Nullable
    FragmentState q(@NonNull String str) {
        return this.mSavedState.get(str);
    }

    void t() {
        Iterator<Fragment> it = this.mAdded.iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = this.mActive.get(it.next().mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.m();
            }
        }
        for (FragmentStateManager fragmentStateManager2 : this.mActive.values()) {
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.m();
                Fragment fragmentK = fragmentStateManager2.k();
                if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                    if (fragmentK.mBeingSaved && !this.mSavedState.containsKey(fragmentK.mWho)) {
                        fragmentStateManager2.s();
                    }
                    s(fragmentStateManager2);
                }
            }
        }
    }

    void u(@NonNull Fragment fragment) {
        synchronized (this.mAdded) {
            this.mAdded.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void v() {
        this.mActive.clear();
    }

    void w(@Nullable List<String> list) {
        this.mAdded.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.P0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentF);
                }
                a(fragmentF);
            }
        }
    }

    void x(@NonNull ArrayList<FragmentState> arrayList) {
        this.mSavedState.clear();
        for (FragmentState fragmentState : arrayList) {
            this.mSavedState.put(fragmentState.mWho, fragmentState);
        }
    }

    @NonNull
    ArrayList<String> y() {
        ArrayList<String> arrayList = new ArrayList<>(this.mActive.size());
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragmentK = fragmentStateManager.k();
                fragmentStateManager.s();
                arrayList.add(fragmentK.mWho);
                if (FragmentManager.P0(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragmentK + ": " + fragmentK.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    @Nullable
    ArrayList<String> z() {
        synchronized (this.mAdded) {
            try {
                if (this.mAdded.isEmpty()) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>(this.mAdded.size());
                for (Fragment fragment : this.mAdded) {
                    arrayList.add(fragment.mWho);
                    if (FragmentManager.P0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment.mWho + "): " + fragment);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    FragmentStore() {
    }

    void r(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment fragmentK = fragmentStateManager.k();
        if (c(fragmentK.mWho)) {
            return;
        }
        this.mActive.put(fragmentK.mWho, fragmentStateManager);
        if (fragmentK.mRetainInstanceChangedWhileDetached) {
            if (fragmentK.mRetainInstance) {
                this.mNonConfig.b(fragmentK);
            } else {
                this.mNonConfig.l(fragmentK);
            }
            fragmentK.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragmentK);
        }
    }

    void s(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment fragmentK = fragmentStateManager.k();
        if (fragmentK.mRetainInstance) {
            this.mNonConfig.l(fragmentK);
        }
        if (this.mActive.put(fragmentK.mWho, null) != null && FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragmentK);
        }
    }
}
