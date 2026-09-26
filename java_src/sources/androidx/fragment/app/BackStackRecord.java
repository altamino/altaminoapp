package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    private static final String TAG = "FragmentManager";
    boolean mBeingSaved;
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    BackStackRecord(@NonNull FragmentManager fragmentManager) {
        super(fragmentManager.z0(), fragmentManager.C0() != null ? fragmentManager.C0().f().getClassLoader() : null);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = fragmentManager;
    }

    public void I(String str, PrintWriter printWriter) {
        J(str, printWriter, true);
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.i(this);
        return true;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.mName;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int j() {
        return H(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int k() {
        return H(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction A(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.mFragmentManager != this.mManager) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.mManager);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.A(fragment, state);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction B(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.mFragmentManager) == null || fragmentManager == this.mManager) {
            return super.B(fragment);
        }
        throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction E(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.E(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void F(int i10) {
        if (this.mAddToBackStack) {
            if (FragmentManager.P0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.mOps.size();
            for (int i11 = 0; i11 < size; i11++) {
                FragmentTransaction.Op op = this.mOps.get(i11);
                Fragment fragment = op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (FragmentManager.P0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + op.mFragment + " to " + op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    void G() {
        int size = this.mOps.size() - 1;
        while (size >= 0) {
            FragmentTransaction.Op op = this.mOps.get(size);
            if (op.mFromExpandedOp) {
                if (op.mCmd == 8) {
                    op.mFromExpandedOp = false;
                    this.mOps.remove(size - 1);
                    size--;
                } else {
                    int i10 = op.mFragment.mContainerId;
                    op.mCmd = 2;
                    op.mFromExpandedOp = false;
                    for (int i11 = size - 1; i11 >= 0; i11--) {
                        FragmentTransaction.Op op2 = this.mOps.get(i11);
                        if (op2.mFromExpandedOp && op2.mFragment.mContainerId == i10) {
                            this.mOps.remove(i11);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    int H(boolean z6) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
            I("  ", printWriter);
            printWriter.close();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.n();
        } else {
            this.mIndex = -1;
        }
        this.mManager.c0(this, z6);
        return this.mIndex;
    }

    public void J(String str, PrintWriter printWriter, boolean z6) {
        String str2;
        if (z6) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mOps.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.mOps.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransaction.Op op = this.mOps.get(i10);
            switch (op.mCmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(op.mFragment);
            if (z6) {
                if (op.mEnterAnim != 0 || op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.mExitAnim));
                }
                if (op.mPopEnterAnim != 0 || op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.mPopExitAnim));
                }
            }
        }
    }

    void K() {
        int size = this.mOps.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransaction.Op op = this.mOps.get(i10);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            switch (op.mCmd) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, false);
                    this.mManager.j(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.s1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.M0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, false);
                    this.mManager.J1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.A(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, false);
                    this.mManager.p(fragment);
                    break;
                case 8:
                    this.mManager.H1(fragment);
                    break;
                case 9:
                    this.mManager.H1(null);
                    break;
                case 10:
                    this.mManager.G1(fragment, op.mCurrentMaxState);
                    break;
            }
        }
    }

    void L() {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = this.mOps.get(size);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.z1(this.mTransition));
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            switch (op.mCmd) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, true);
                    this.mManager.s1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.j(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.J1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, true);
                    this.mManager.M0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.p(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    this.mManager.F1(fragment, true);
                    this.mManager.A(fragment);
                    break;
                case 8:
                    this.mManager.H1(null);
                    break;
                case 9:
                    this.mManager.H1(fragment);
                    break;
                case 10:
                    this.mManager.G1(fragment, op.mOldMaxState);
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    Fragment M(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i10 = 0;
        while (i10 < this.mOps.size()) {
            FragmentTransaction.Op op = this.mOps.get(i10);
            int i11 = op.mCmd;
            if (i11 == 1) {
                arrayList.add(op.mFragment);
            } else if (i11 == 2) {
                Fragment fragment3 = op.mFragment;
                int i12 = fragment3.mContainerId;
                boolean z6 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.mContainerId == i12) {
                        if (fragment4 == fragment3) {
                            z6 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.mOps.add(i10, new FragmentTransaction.Op(9, fragment4, true));
                                i10++;
                                fragment2 = null;
                            }
                            FragmentTransaction.Op op2 = new FragmentTransaction.Op(3, fragment4, true);
                            op2.mEnterAnim = op.mEnterAnim;
                            op2.mPopEnterAnim = op.mPopEnterAnim;
                            op2.mExitAnim = op.mExitAnim;
                            op2.mPopExitAnim = op.mPopExitAnim;
                            this.mOps.add(i10, op2);
                            arrayList.remove(fragment4);
                            i10++;
                        }
                    }
                }
                if (z6) {
                    this.mOps.remove(i10);
                    i10--;
                } else {
                    op.mCmd = 1;
                    op.mFromExpandedOp = true;
                    arrayList.add(fragment3);
                }
            } else if (i11 == 3 || i11 == 6) {
                arrayList.remove(op.mFragment);
                Fragment fragment5 = op.mFragment;
                if (fragment5 == fragment2) {
                    this.mOps.add(i10, new FragmentTransaction.Op(9, fragment5));
                    i10++;
                    fragment2 = null;
                }
            } else if (i11 == 7) {
                arrayList.add(op.mFragment);
            } else if (i11 == 8) {
                this.mOps.add(i10, new FragmentTransaction.Op(9, fragment2, true));
                op.mFromExpandedOp = true;
                i10++;
                fragment2 = op.mFragment;
            }
            i10++;
        }
        return fragment2;
    }

    public void N() {
        if (this.mCommitRunnables != null) {
            for (int i10 = 0; i10 < this.mCommitRunnables.size(); i10++) {
                this.mCommitRunnables.get(i10).run();
            }
            this.mCommitRunnables = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    Fragment O(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = this.mOps.get(size);
            int i10 = op.mCmd;
            if (i10 == 1) {
                arrayList.remove(op.mFragment);
            } else if (i10 != 3) {
                switch (i10) {
                    case 6:
                        arrayList.add(op.mFragment);
                        break;
                    case 7:
                        arrayList.remove(op.mFragment);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = op.mFragment;
                        break;
                    case 10:
                        op.mCurrentMaxState = op.mOldMaxState;
                        break;
                }
            } else {
                arrayList.add(op.mFragment);
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction o(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.o(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction r(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.r(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean s() {
        return this.mOps.isEmpty();
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction t(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            return super.t(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void l() {
        p();
        this.mManager.f0(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void m() {
        p();
        this.mManager.f0(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    void q(int i10, Fragment fragment, @Nullable String str, int i11) {
        super.q(i10, fragment, str, i11);
        fragment.mFragmentManager = this.mManager;
    }

    BackStackRecord(@NonNull BackStackRecord backStackRecord) {
        super(backStackRecord.mManager.z0(), backStackRecord.mManager.C0() != null ? backStackRecord.mManager.C0().f().getClassLoader() : null, backStackRecord);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = backStackRecord.mManager;
        this.mCommitted = backStackRecord.mCommitted;
        this.mIndex = backStackRecord.mIndex;
        this.mBeingSaved = backStackRecord.mBeingSaved;
    }
}
