package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import com.safedk.android.utils.Logger;
import j8.o;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Navigator.Name("activity")
public class ActivityNavigator extends Navigator<Destination> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String EXTRA_NAV_CURRENT = "android-support-navigation:ActivityNavigator:current";

    @NotNull
    private static final String EXTRA_NAV_SOURCE = "android-support-navigation:ActivityNavigator:source";

    @NotNull
    private static final String EXTRA_POP_ENTER_ANIM = "android-support-navigation:ActivityNavigator:popEnterAnim";

    @NotNull
    private static final String EXTRA_POP_EXIT_ANIM = "android-support-navigation:ActivityNavigator:popExitAnim";

    @NotNull
    private static final String LOG_TAG = "ActivityNavigator";

    @NotNull
    private final Context context;

    @Nullable
    private final Activity hostActivity;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NavDestination.ClassType
    public static class Destination extends NavDestination {

        @Nullable
        private String action;

        @Nullable
        private ComponentName component;

        @Nullable
        private Uri data;

        @Nullable
        private String dataPattern;

        @Nullable
        private Intent intent;

        @Nullable
        private String targetPackage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull Navigator<? extends Destination> activityNavigator) {
            super(activityNavigator);
            t.j(activityNavigator, "activityNavigator");
        }

        @Override // androidx.navigation.NavDestination
        @RestrictTo
        public boolean A() {
            return false;
        }

        @Nullable
        public final String D() {
            return this.dataPattern;
        }

        @Nullable
        public final Intent E() {
            return this.intent;
        }

        @NotNull
        public final Destination I(@Nullable String str) {
            this.dataPattern = str;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof Destination) || !super.equals(obj)) {
                return false;
            }
            Intent intent = this.intent;
            if (intent != null) {
                if (!intent.filterEquals(((Destination) obj).intent)) {
                    return false;
                }
            } else if (((Destination) obj).intent != null) {
                return false;
            }
            return t.e(this.dataPattern, ((Destination) obj).dataPattern);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.d(ActivityNavigator.class));
            t.j(navigatorProvider, "navigatorProvider");
        }

        @Nullable
        public final String B() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getAction();
            }
            return null;
        }

        @Nullable
        public final ComponentName C() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getComponent();
            }
            return null;
        }

        @NotNull
        public final Destination F(@Nullable String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            t.g(intent);
            intent.setAction(str);
            return this;
        }

        @NotNull
        public final Destination G(@Nullable ComponentName componentName) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            t.g(intent);
            intent.setComponent(componentName);
            return this;
        }

        @NotNull
        public final Destination H(@Nullable Uri uri) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            t.g(intent);
            intent.setData(uri);
            return this;
        }

        @NotNull
        public final Destination J(@Nullable String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            t.g(intent);
            intent.setPackage(str);
            return this;
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void v(@NotNull Context context, @NotNull AttributeSet attrs) {
            t.j(context, "context");
            t.j(attrs, "attrs");
            super.v(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R.styleable.ActivityNavigator);
            t.i(typedArrayObtainAttributes, "context.resources.obtain…tyNavigator\n            )");
            String string = typedArrayObtainAttributes.getString(R.styleable.ActivityNavigator_targetPackage);
            if (string != null) {
                String packageName = context.getPackageName();
                t.i(packageName, "context.packageName");
                string = kotlin.text.t.G(string, NavInflater.APPLICATION_ID_PLACEHOLDER, packageName, false, 4, null);
            }
            J(string);
            String string2 = typedArrayObtainAttributes.getString(R.styleable.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = context.getPackageName() + string2;
                }
                G(new ComponentName(context, string2));
            }
            F(typedArrayObtainAttributes.getString(R.styleable.ActivityNavigator_action));
            String string3 = typedArrayObtainAttributes.getString(R.styleable.ActivityNavigator_data);
            if (string3 != null) {
                H(Uri.parse(string3));
            }
            I(typedArrayObtainAttributes.getString(R.styleable.ActivityNavigator_dataPattern));
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iFilterHashCode;
            int iHashCode = super.hashCode() * 31;
            Intent intent = this.intent;
            int iHashCode2 = 0;
            if (intent != null) {
                iFilterHashCode = intent.filterHashCode();
            } else {
                iFilterHashCode = 0;
            }
            int i10 = (iHashCode + iFilterHashCode) * 31;
            String str = this.dataPattern;
            if (str != null) {
                iHashCode2 = str.hashCode();
            }
            return i10 + iHashCode2;
        }

        @Override // androidx.navigation.NavDestination
        @NotNull
        public String toString() {
            ComponentName componentNameC = C();
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (componentNameC != null) {
                sb.append(" class=");
                sb.append(componentNameC.getClassName());
            } else {
                String strB = B();
                if (strB != null) {
                    sb.append(" action=");
                    sb.append(strB);
                }
            }
            String string = sb.toString();
            t.i(string, "sb.toString()");
            return string;
        }
    }

    public static void safedk_ContextCompat_startActivity_f482d8446b01c5580049a261a99b538c(Context p0, Intent p1, Bundle p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        ContextCompat.startActivity(p0, p1, p5);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @RestrictTo
    @NotNull
    public final Context m() {
        return this.context;
    }

    public static final class Extras implements Navigator.Extras {

        @Nullable
        private final ActivityOptionsCompat activityOptions;
        private final int flags;

        public static final class Builder {

            @Nullable
            private ActivityOptionsCompat activityOptions;
            private int flags;
        }

        @Nullable
        public final ActivityOptionsCompat a() {
            return this.activityOptions;
        }

        public final int b() {
            return this.flags;
        }

        public Extras(int i10, @Nullable ActivityOptionsCompat activityOptionsCompat) {
            this.flags = i10;
            this.activityOptions = activityOptionsCompat;
        }
    }

    public ActivityNavigator(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        for (Object obj : m.f(context, ActivityNavigator$hostActivity$1.INSTANCE)) {
            if (((Context) obj) instanceof Activity) {
                this.hostActivity = (Activity) obj;
            }
        }
        obj = null;
        this.hostActivity = (Activity) obj;
    }

    @Override // androidx.navigation.Navigator
    public boolean k() {
        Activity activity = this.hostActivity;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public Destination a() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public NavDestination d(@NotNull Destination destination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        ActivityOptionsCompat activityOptionsCompatA;
        Intent intent;
        int intExtra;
        t.j(destination, "destination");
        if (destination.E() == null) {
            throw new IllegalStateException(("Destination " + destination.p() + " does not have an Intent set.").toString());
        }
        Intent intent2 = new Intent(destination.E());
        if (bundle != null) {
            intent2.putExtras(bundle);
            String strD = destination.D();
            if (strD != null && strD.length() != 0) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(strD);
                while (matcher.find()) {
                    String strGroup = matcher.group(1);
                    if (!bundle.containsKey(strGroup)) {
                        throw new IllegalArgumentException("Could not find " + strGroup + " in " + bundle + " to fill data pattern " + strD);
                    }
                    matcher.appendReplacement(stringBuffer, "");
                    stringBuffer.append(Uri.encode(String.valueOf(bundle.get(strGroup))));
                }
                matcher.appendTail(stringBuffer);
                intent2.setData(Uri.parse(stringBuffer.toString()));
            }
        }
        boolean z6 = extras instanceof Extras;
        if (z6) {
            intent2.addFlags(((Extras) extras).b());
        }
        if (this.hostActivity == null) {
            intent2.addFlags(268435456);
        }
        if (navOptions != null && navOptions.g()) {
            intent2.addFlags(536870912);
        }
        Activity activity = this.hostActivity;
        if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra(EXTRA_NAV_CURRENT, 0)) != 0) {
            intent2.putExtra(EXTRA_NAV_SOURCE, intExtra);
        }
        intent2.putExtra(EXTRA_NAV_CURRENT, destination.p());
        Resources resources = this.context.getResources();
        if (navOptions != null) {
            int iC = navOptions.c();
            int iD = navOptions.d();
            if ((iC <= 0 || !t.e(resources.getResourceTypeName(iC), "animator")) && (iD <= 0 || !t.e(resources.getResourceTypeName(iD), "animator"))) {
                intent2.putExtra(EXTRA_POP_ENTER_ANIM, iC);
                intent2.putExtra(EXTRA_POP_EXIT_ANIM, iD);
            } else {
                Log.w(LOG_TAG, "Activity destinations do not support Animator resource. Ignoring popEnter resource " + resources.getResourceName(iC) + " and popExit resource " + resources.getResourceName(iD) + " when launching " + destination);
            }
        }
        if (!z6 || (activityOptionsCompatA = ((Extras) extras).a()) == null) {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent2);
        } else {
            safedk_ContextCompat_startActivity_f482d8446b01c5580049a261a99b538c(this.context, intent2, activityOptionsCompatA.b());
        }
        if (navOptions == null || this.hostActivity == null) {
            return null;
        }
        int iA = navOptions.a();
        int iB = navOptions.b();
        if ((iA <= 0 || !t.e(resources.getResourceTypeName(iA), "animator")) && (iB <= 0 || !t.e(resources.getResourceTypeName(iB), "animator"))) {
            if (iA < 0 && iB < 0) {
                return null;
            }
            this.hostActivity.overridePendingTransition(o.e(iA, 0), o.e(iB, 0));
            return null;
        }
        Log.w(LOG_TAG, "Activity destinations do not support Animator resource. Ignoring enter resource " + resources.getResourceName(iA) + " and exit resource " + resources.getResourceName(iB) + "when launching " + destination);
        return null;
    }
}
