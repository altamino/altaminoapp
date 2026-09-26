package androidx.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class NavInflater {

    @RestrictTo
    @NotNull
    public static final String APPLICATION_ID_PLACEHOLDER = "${applicationId}";

    @NotNull
    private static final String TAG_ACTION = "action";

    @NotNull
    private static final String TAG_ARGUMENT = "argument";

    @NotNull
    private static final String TAG_DEEP_LINK = "deepLink";

    @NotNull
    private static final String TAG_INCLUDE = "include";

    @NotNull
    private final Context context;

    @NotNull
    private final NavigatorProvider navigatorProvider;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ThreadLocal<TypedValue> sTmpValue = new ThreadLocal<>();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final NavType<?> a(@NotNull TypedValue value, @Nullable NavType<?> navType, @NotNull NavType<?> expectedNavType, @Nullable String str, @NotNull String foundType) throws XmlPullParserException {
            t.j(value, "value");
            t.j(expectedNavType, "expectedNavType");
            t.j(foundType, "foundType");
            if (navType != null && navType != expectedNavType) {
                throw new XmlPullParserException("Type is " + str + " but found " + foundType + ": " + value.data);
            }
            if (navType == null) {
                return expectedNavType;
            }
            return navType;
        }
    }

    public NavInflater(@NotNull Context context, @NotNull NavigatorProvider navigatorProvider) {
        t.j(context, "context");
        t.j(navigatorProvider, "navigatorProvider");
        this.context = context;
        this.navigatorProvider = navigatorProvider;
    }

    private final NavDestination a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i10) throws XmlPullParserException, IOException {
        int depth;
        NavigatorProvider navigatorProvider = this.navigatorProvider;
        String name = xmlResourceParser.getName();
        t.i(name, "parser.name");
        NavDestination navDestinationA = navigatorProvider.e(name).a();
        navDestinationA.v(this.context, attributeSet);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2) {
                String name2 = xmlResourceParser.getName();
                if (t.e(TAG_ARGUMENT, name2)) {
                    f(resources, navDestinationA, attributeSet, i10);
                } else if (t.e(TAG_DEEP_LINK, name2)) {
                    g(resources, navDestinationA, attributeSet);
                } else if (t.e(TAG_ACTION, name2)) {
                    c(resources, navDestinationA, attributeSet, xmlResourceParser, i10);
                } else if (t.e(TAG_INCLUDE, name2) && (navDestinationA instanceof NavGraph)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavInclude);
                    t.i(typedArrayObtainAttributes, "res.obtainAttributes(att…n.R.styleable.NavInclude)");
                    ((NavGraph) navDestinationA).B(b(typedArrayObtainAttributes.getResourceId(R.styleable.NavInclude_graph, 0)));
                    l0 l0Var = l0.INSTANCE;
                    typedArrayObtainAttributes.recycle();
                } else if (navDestinationA instanceof NavGraph) {
                    ((NavGraph) navDestinationA).B(a(resources, xmlResourceParser, attributeSet, i10));
                }
            }
        }
        return navDestinationA;
    }

    private final void c(Resources resources, NavDestination navDestination, AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i10) throws XmlPullParserException, IOException {
        int depth;
        Context context = this.context;
        int[] NavAction = androidx.navigation.common.R.styleable.NavAction;
        t.i(NavAction, "NavAction");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, NavAction, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_android_id, 0);
        NavAction navAction = new NavAction(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_destination, 0), null, null, 6, null);
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.d(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_launchSingleTop, false));
        builder.j(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_restoreState, false));
        builder.g(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popUpTo, -1), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_popUpToInclusive, false), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_popUpToSaveState, false));
        builder.b(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_enterAnim, -1));
        builder.c(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_exitAnim, -1));
        builder.e(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popEnterAnim, -1));
        builder.f(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popExitAnim, -1));
        navAction.e(builder.a());
        Bundle bundle = new Bundle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && t.e(TAG_ARGUMENT, xmlResourceParser.getName())) {
                e(resources, bundle, attributeSet, i10);
            }
        }
        if (!bundle.isEmpty()) {
            navAction.d(bundle);
        }
        navDestination.w(resourceId, navAction);
        typedArrayObtainStyledAttributes.recycle();
    }

    private final NavArgument d(TypedArray typedArray, Resources resources, int i10) throws XmlPullParserException {
        NavArgument.Builder builder = new NavArgument.Builder();
        int i11 = 0;
        builder.c(typedArray.getBoolean(androidx.navigation.common.R.styleable.NavArgument_nullable, false));
        ThreadLocal<TypedValue> threadLocal = sTmpValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        String string = typedArray.getString(androidx.navigation.common.R.styleable.NavArgument_argType);
        Object objH = null;
        NavType<Object> navTypeA = string != null ? NavType.Companion.a(string, resources.getResourcePackageName(i10)) : null;
        int i12 = androidx.navigation.common.R.styleable.NavArgument_android_defaultValue;
        if (typedArray.getValue(i12, typedValue)) {
            NavType<Object> navType = NavType.ReferenceType;
            if (navTypeA == navType) {
                int i13 = typedValue.resourceId;
                if (i13 != 0) {
                    i11 = i13;
                } else if (typedValue.type != 16 || typedValue.data != 0) {
                    throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + navTypeA.b() + ". Must be a reference to a resource.");
                }
                objH = Integer.valueOf(i11);
            } else {
                int i14 = typedValue.resourceId;
                if (i14 != 0) {
                    if (navTypeA != null) {
                        throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + navTypeA.b() + ". You must use a \"" + navType.b() + "\" type to reference other resources.");
                    }
                    navTypeA = navType;
                    objH = Integer.valueOf(i14);
                } else if (navTypeA == NavType.StringType) {
                    objH = typedArray.getString(i12);
                } else {
                    int i15 = typedValue.type;
                    if (i15 == 3) {
                        String string2 = typedValue.string.toString();
                        if (navTypeA == null) {
                            navTypeA = NavType.Companion.b(string2);
                        }
                        objH = navTypeA.h(string2);
                    } else if (i15 == 4) {
                        navTypeA = Companion.a(typedValue, navTypeA, NavType.FloatType, string, TypedValues.Custom.S_FLOAT);
                        objH = Float.valueOf(typedValue.getFloat());
                    } else if (i15 == 5) {
                        navTypeA = Companion.a(typedValue, navTypeA, NavType.IntType, string, TypedValues.Custom.S_DIMENSION);
                        objH = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i15 == 18) {
                        navTypeA = Companion.a(typedValue, navTypeA, NavType.BoolType, string, TypedValues.Custom.S_BOOLEAN);
                        objH = Boolean.valueOf(typedValue.data != 0);
                    } else {
                        if (i15 < 16 || i15 > 31) {
                            throw new XmlPullParserException("unsupported argument type " + typedValue.type);
                        }
                        NavType<Object> navType2 = NavType.FloatType;
                        if (navTypeA == navType2) {
                            navTypeA = Companion.a(typedValue, navTypeA, navType2, string, TypedValues.Custom.S_FLOAT);
                            objH = Float.valueOf(typedValue.data);
                        } else {
                            navTypeA = Companion.a(typedValue, navTypeA, NavType.IntType, string, TypedValues.Custom.S_INT);
                            objH = Integer.valueOf(typedValue.data);
                        }
                    }
                }
            }
        }
        if (objH != null) {
            builder.b(objH);
        }
        if (navTypeA != null) {
            builder.d(navTypeA);
        }
        return builder.a();
    }

    private final void e(Resources resources, Bundle bundle, AttributeSet attributeSet, int i10) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavArgument);
        t.i(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        t.i(string, "array.getString(R.stylea…uments must have a name\")");
        NavArgument navArgumentD = d(typedArrayObtainAttributes, resources, i10);
        if (navArgumentD.b()) {
            navArgumentD.d(string, bundle);
        }
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    private final void f(Resources resources, NavDestination navDestination, AttributeSet attributeSet, int i10) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavArgument);
        t.i(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        t.i(string, "array.getString(R.stylea…uments must have a name\")");
        navDestination.a(string, d(typedArrayObtainAttributes, resources, i10));
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    private final void g(Resources resources, NavDestination navDestination, AttributeSet attributeSet) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavDeepLink);
        t.i(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavDeepLink)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_uri);
        String string2 = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_action);
        String string3 = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_mimeType);
        if ((string == null || string.length() == 0) && ((string2 == null || string2.length() == 0) && (string3 == null || string3.length() == 0))) {
            throw new XmlPullParserException("Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType");
        }
        NavDeepLink.Builder builder = new NavDeepLink.Builder();
        if (string != null) {
            String packageName = this.context.getPackageName();
            t.i(packageName, "context.packageName");
            builder.d(kotlin.text.t.G(string, APPLICATION_ID_PLACEHOLDER, packageName, false, 4, null));
        }
        if (string2 != null && string2.length() != 0) {
            String packageName2 = this.context.getPackageName();
            t.i(packageName2, "context.packageName");
            builder.b(kotlin.text.t.G(string2, APPLICATION_ID_PLACEHOLDER, packageName2, false, 4, null));
        }
        if (string3 != null) {
            String packageName3 = this.context.getPackageName();
            t.i(packageName3, "context.packageName");
            builder.c(kotlin.text.t.G(string3, APPLICATION_ID_PLACEHOLDER, packageName3, false, 4, null));
        }
        navDestination.b(builder.a());
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    @SuppressLint({"ResourceType"})
    @NotNull
    public final NavGraph b(@NavigationRes int i10) {
        int next;
        Resources res = this.context.getResources();
        XmlResourceParser xml = res.getXml(i10);
        t.i(xml, "res.getXml(graphResId)");
        AttributeSet attrs = Xml.asAttributeSet(xml);
        do {
            try {
                try {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } catch (Exception e) {
                    throw new RuntimeException("Exception inflating " + res.getResourceName(i10) + " line " + xml.getLineNumber(), e);
                }
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        t.i(res, "res");
        t.i(attrs, "attrs");
        NavDestination navDestinationA = a(res, xml, attrs, i10);
        if (navDestinationA instanceof NavGraph) {
            NavGraph navGraph = (NavGraph) navDestinationA;
            xml.close();
            return navGraph;
        }
        throw new IllegalArgumentException(("Root element <" + name + "> did not inflate into a NavGraph").toString());
    }
}
