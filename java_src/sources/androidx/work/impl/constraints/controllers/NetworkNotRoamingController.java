package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkNotRoamingController extends ConstraintController<NetworkState> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TAG;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    static {
        String strI = Logger.i("NetworkNotRoamingCtrlr");
        t.i(strI, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")");
        TAG = strI;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkNotRoamingController(@NotNull ConstraintTracker<NetworkState> tracker) {
        super(tracker);
        t.j(tracker, "tracker");
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean b(@NotNull WorkSpec workSpec) {
        t.j(workSpec, "workSpec");
        if (workSpec.constraints.d() == NetworkType.NOT_ROAMING) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(@NotNull NetworkState value) {
        t.j(value, "value");
        if (Build.VERSION.SDK_INT < 24) {
            Logger.e().a(TAG, "Not-roaming network constraint is not supported before API 24, only checking for connected state.");
            if (value.a()) {
                return false;
            }
        } else if (value.a() && value.c()) {
            return false;
        }
        return true;
    }
}
