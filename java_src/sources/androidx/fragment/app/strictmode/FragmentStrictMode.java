package androidx.fragment.app.strictmode;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentStrictMode {

    @NotNull
    private static final String TAG = "FragmentStrictMode";

    @NotNull
    public static final FragmentStrictMode INSTANCE = new FragmentStrictMode();

    @NotNull
    private static Policy defaultPolicy = Policy.LAX;

    public enum Flag {
        PENALTY_LOG,
        PENALTY_DEATH,
        DETECT_FRAGMENT_REUSE,
        DETECT_FRAGMENT_TAG_USAGE,
        DETECT_RETAIN_INSTANCE_USAGE,
        DETECT_SET_USER_VISIBLE_HINT,
        DETECT_TARGET_FRAGMENT_USAGE,
        DETECT_WRONG_FRAGMENT_CONTAINER
    }

    public interface OnViolationListener {
        void a(@NotNull Violation violation);
    }

    public static final class Policy {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final Policy LAX = new Policy(y0.e(), null, s0.h());

        @NotNull
        private final Set<Flag> flags;

        @Nullable
        private final OnViolationListener listener;

        @NotNull
        private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations;

        public static final class Builder {

            @Nullable
            private OnViolationListener listener;

            @NotNull
            private final Set<Flag> flags = new LinkedHashSet();

            @NotNull
            private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations = new LinkedHashMap();
        }

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @NotNull
        public final Set<Flag> a() {
            return this.flags;
        }

        @Nullable
        public final OnViolationListener b() {
            return this.listener;
        }

        @NotNull
        public final Map<String, Set<Class<? extends Violation>>> c() {
            return this.mAllowedViolations;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Policy(@NotNull Set<? extends Flag> flags, @Nullable OnViolationListener onViolationListener, @NotNull Map<String, ? extends Set<Class<? extends Violation>>> allowedViolations) {
            t.j(flags, "flags");
            t.j(allowedViolations, "allowedViolations");
            this.flags = flags;
            this.listener = onViolationListener;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends Set<Class<? extends Violation>>> entry : allowedViolations.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            this.mAllowedViolations = linkedHashMap;
        }
    }

    private final void g(Violation violation) {
        if (FragmentManager.P0(3)) {
            Log.d(FragmentManager.TAG, "StrictMode violation in " + violation.a().getClass().getName(), violation);
        }
    }

    private final Policy c(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
                t.i(parentFragmentManager, "declaringFragment.parentFragmentManager");
                if (parentFragmentManager.I0() != null) {
                    Policy policyI0 = parentFragmentManager.I0();
                    t.g(policyI0);
                    return policyI0;
                }
            }
            fragment = fragment.getParentFragment();
        }
        return defaultPolicy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Policy policy, Violation violation) {
        t.j(policy, "$policy");
        t.j(violation, "$violation");
        policy.b().a(violation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(String str, Violation violation) {
        t.j(violation, "$violation");
        Log.e(TAG, "Policy violation with PENALTY_DEATH in " + str, violation);
        throw violation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void h(@NotNull Fragment fragment, @NotNull String previousFragmentId) {
        t.j(fragment, "fragment");
        t.j(previousFragmentId, "previousFragmentId");
        FragmentReuseViolation fragmentReuseViolation = new FragmentReuseViolation(fragment, previousFragmentId);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(fragmentReuseViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_FRAGMENT_REUSE) && fragmentStrictMode.r(policyC, fragment.getClass(), fragmentReuseViolation.getClass())) {
            fragmentStrictMode.d(policyC, fragmentReuseViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void i(@NotNull Fragment fragment, @Nullable ViewGroup viewGroup) {
        t.j(fragment, "fragment");
        FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(fragment, viewGroup);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(fragmentTagUsageViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_FRAGMENT_TAG_USAGE) && fragmentStrictMode.r(policyC, fragment.getClass(), fragmentTagUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, fragmentTagUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void j(@NotNull Fragment fragment) {
        t.j(fragment, "fragment");
        GetRetainInstanceUsageViolation getRetainInstanceUsageViolation = new GetRetainInstanceUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(getRetainInstanceUsageViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_RETAIN_INSTANCE_USAGE) && fragmentStrictMode.r(policyC, fragment.getClass(), getRetainInstanceUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, getRetainInstanceUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void k(@NotNull Fragment fragment) {
        t.j(fragment, "fragment");
        GetTargetFragmentRequestCodeUsageViolation getTargetFragmentRequestCodeUsageViolation = new GetTargetFragmentRequestCodeUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(getTargetFragmentRequestCodeUsageViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.r(policyC, fragment.getClass(), getTargetFragmentRequestCodeUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, getTargetFragmentRequestCodeUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void l(@NotNull Fragment fragment) {
        t.j(fragment, "fragment");
        GetTargetFragmentUsageViolation getTargetFragmentUsageViolation = new GetTargetFragmentUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(getTargetFragmentUsageViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.r(policyC, fragment.getClass(), getTargetFragmentUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, getTargetFragmentUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void m(@NotNull Fragment fragment) {
        t.j(fragment, "fragment");
        SetRetainInstanceUsageViolation setRetainInstanceUsageViolation = new SetRetainInstanceUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(setRetainInstanceUsageViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_RETAIN_INSTANCE_USAGE) && fragmentStrictMode.r(policyC, fragment.getClass(), setRetainInstanceUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, setRetainInstanceUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void n(@NotNull Fragment violatingFragment, @NotNull Fragment targetFragment, int i10) {
        t.j(violatingFragment, "violatingFragment");
        t.j(targetFragment, "targetFragment");
        SetTargetFragmentUsageViolation setTargetFragmentUsageViolation = new SetTargetFragmentUsageViolation(violatingFragment, targetFragment, i10);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(setTargetFragmentUsageViolation);
        Policy policyC = fragmentStrictMode.c(violatingFragment);
        if (policyC.a().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.r(policyC, violatingFragment.getClass(), setTargetFragmentUsageViolation.getClass())) {
            fragmentStrictMode.d(policyC, setTargetFragmentUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void o(@NotNull Fragment fragment, boolean z6) {
        t.j(fragment, "fragment");
        SetUserVisibleHintViolation setUserVisibleHintViolation = new SetUserVisibleHintViolation(fragment, z6);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(setUserVisibleHintViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_SET_USER_VISIBLE_HINT) && fragmentStrictMode.r(policyC, fragment.getClass(), setUserVisibleHintViolation.getClass())) {
            fragmentStrictMode.d(policyC, setUserVisibleHintViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public static final void p(@NotNull Fragment fragment, @NotNull ViewGroup container) {
        t.j(fragment, "fragment");
        t.j(container, "container");
        WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(fragment, container);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.g(wrongFragmentContainerViolation);
        Policy policyC = fragmentStrictMode.c(fragment);
        if (policyC.a().contains(Flag.DETECT_WRONG_FRAGMENT_CONTAINER) && fragmentStrictMode.r(policyC, fragment.getClass(), wrongFragmentContainerViolation.getClass())) {
            fragmentStrictMode.d(policyC, wrongFragmentContainerViolation);
        }
    }

    private FragmentStrictMode() {
    }

    private final void d(final Policy policy, final Violation violation) {
        Fragment fragmentA = violation.a();
        final String name = fragmentA.getClass().getName();
        if (policy.a().contains(Flag.PENALTY_LOG)) {
            Log.d(TAG, "Policy violation in " + name, violation);
        }
        if (policy.b() != null) {
            q(fragmentA, new Runnable() { // from class: w.a
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentStrictMode.e(policy, violation);
                }
            });
        }
        if (policy.a().contains(Flag.PENALTY_DEATH)) {
            q(fragmentA, new Runnable() { // from class: w.b
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentStrictMode.f(name, violation);
                }
            });
        }
    }

    private final void q(Fragment fragment, Runnable runnable) {
        if (fragment.isAdded()) {
            Handler handlerG = fragment.getParentFragmentManager().C0().g();
            t.i(handlerG, "fragment.parentFragmentManager.host.handler");
            if (t.e(handlerG.getLooper(), Looper.myLooper())) {
                runnable.run();
                return;
            } else {
                handlerG.post(runnable);
                return;
            }
        }
        runnable.run();
    }

    private final boolean r(Policy policy, Class<? extends Fragment> cls, Class<? extends Violation> cls2) {
        Set<Class<? extends Violation>> set = policy.c().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (!t.e(cls2.getSuperclass(), Violation.class) && d0.Z(set, cls2.getSuperclass())) {
            return false;
        }
        return !set.contains(cls2);
    }
}
