package androidx.compose.ui.platform;

import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableString;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.R;
import androidx.compose.ui.TempListUtilsKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.platform.accessibility.CollectionInfoKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidAccessibilitySpannableString_androidKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat {
    public static final int AccessibilityCursorPositionUndefined = -1;
    public static final int AccessibilitySliderStepsCount = 20;

    @NotNull
    public static final String ClassName = "android.view.View";

    @NotNull
    public static final String ExtraDataTestTagKey = "androidx.compose.ui.semantics.testTag";
    public static final int InvalidId = Integer.MIN_VALUE;

    @NotNull
    public static final String LogTag = "AccessibilityDelegate";
    public static final int ParcelSafeTextLength = 100000;
    public static final long SendRecurringAccessibilityEventsIntervalMillis = 100;
    public static final long TextTraversedEventTimeoutMillis = 1000;
    private int accessibilityCursorPosition;
    private boolean accessibilityForceEnabledForTesting;

    @NotNull
    private final android.view.accessibility.AccessibilityManager accessibilityManager;

    @NotNull
    private SparseArrayCompat<SparseArrayCompat<CharSequence>> actionIdToLabel;

    @NotNull
    private final kotlinx.coroutines.channels.d<w7.l0> boundsUpdateChannel;
    private boolean checkingForSemanticsChanges;

    @NotNull
    private Map<Integer, SemanticsNodeWithAdjustedBounds> currentSemanticsNodes;
    private boolean currentSemanticsNodesInvalidated;
    private int focusedVirtualViewId;

    @NotNull
    private final Handler handler;
    private int hoveredVirtualViewId;

    @NotNull
    private SparseArrayCompat<Map<CharSequence, Integer>> labelToActionId;

    @NotNull
    private AccessibilityNodeProviderCompat nodeProvider;

    @NotNull
    private ArraySet<Integer> paneDisplayed;

    @Nullable
    private PendingTextTraversedEvent pendingTextTraversedEvent;

    @NotNull
    private Map<Integer, SemanticsNodeCopy> previousSemanticsNodes;

    @NotNull
    private SemanticsNodeCopy previousSemanticsRoot;

    @Nullable
    private Integer previousTraversedNode;

    @NotNull
    private final List<ScrollObservationScope> scrollObservationScopes;

    @NotNull
    private final Runnable semanticsChangeChecker;

    @NotNull
    private final e8.l<ScrollObservationScope, w7.l0> sendScrollEventIfNeededLambda;

    @NotNull
    private final ArraySet<LayoutNode> subtreeChangedLayoutNodes;

    @NotNull
    private final AndroidComposeView view;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final int[] AccessibilityActionsResourceIds = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    @RequiresApi
    private static final class Api24Impl {

        @NotNull
        public static final Api24Impl INSTANCE = new Api24Impl();

        @DoNotInline
        public static final void a(@NotNull AccessibilityNodeInfoCompat info, @NotNull SemanticsNode semanticsNode) {
            AccessibilityAction accessibilityAction;
            kotlin.jvm.internal.t.j(info, "info");
            kotlin.jvm.internal.t.j(semanticsNode, "semanticsNode");
            if (!AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode) || (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), SemanticsActions.INSTANCE.n())) == null) {
                return;
            }
            info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionSetProgress, accessibilityAction.b()));
        }

        private Api24Impl() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    static final class Api28Impl {

        @NotNull
        public static final Api28Impl INSTANCE = new Api28Impl();

        @DoNotInline
        public static final void a(@NotNull AccessibilityEvent event, int i10, int i11) {
            kotlin.jvm.internal.t.j(event, "event");
            event.setScrollDeltaX(i10);
            event.setScrollDeltaY(i11);
        }

        private Api28Impl() {
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class MyNodeProvider extends AccessibilityNodeProvider {
        public MyNodeProvider() {
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i10, @NotNull AccessibilityNodeInfo info, @NotNull String extraDataKey, @Nullable Bundle bundle) {
            kotlin.jvm.internal.t.j(info, "info");
            kotlin.jvm.internal.t.j(extraDataKey, "extraDataKey");
            AndroidComposeViewAccessibilityDelegateCompat.this.j(i10, info, extraDataKey, bundle);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        @Nullable
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.q(i10);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i10, int i11, @Nullable Bundle bundle) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.G(i10, i11, bundle);
        }
    }

    private static final class PendingTextTraversedEvent {
        private final int action;
        private final int fromIndex;
        private final int granularity;

        @NotNull
        private final SemanticsNode node;
        private final int toIndex;
        private final long traverseTime;

        public final int a() {
            return this.action;
        }

        public final int b() {
            return this.fromIndex;
        }

        public final int c() {
            return this.granularity;
        }

        @NotNull
        public final SemanticsNode d() {
            return this.node;
        }

        public final int e() {
            return this.toIndex;
        }

        public final long f() {
            return this.traverseTime;
        }

        public PendingTextTraversedEvent(@NotNull SemanticsNode node, int i10, int i11, int i12, int i13, long j6) {
            kotlin.jvm.internal.t.j(node, "node");
            this.node = node;
            this.action = i10;
            this.granularity = i11;
            this.fromIndex = i12;
            this.toIndex = i13;
            this.traverseTime = j6;
        }
    }

    @VisibleForTesting
    public static final class SemanticsNodeCopy {

        @NotNull
        private final Set<Integer> children;

        @NotNull
        private final SemanticsConfiguration unmergedConfig;

        @NotNull
        public final Set<Integer> a() {
            return this.children;
        }

        @NotNull
        public final SemanticsConfiguration b() {
            return this.unmergedConfig;
        }

        public SemanticsNodeCopy(@NotNull SemanticsNode semanticsNode, @NotNull Map<Integer, SemanticsNodeWithAdjustedBounds> currentSemanticsNodes) {
            kotlin.jvm.internal.t.j(semanticsNode, "semanticsNode");
            kotlin.jvm.internal.t.j(currentSemanticsNodes, "currentSemanticsNodes");
            this.unmergedConfig = semanticsNode.s();
            this.children = new LinkedHashSet();
            List<SemanticsNode> listO = semanticsNode.o();
            int size = listO.size();
            for (int i10 = 0; i10 < size; i10++) {
                SemanticsNode semanticsNode2 = listO.get(i10);
                if (currentSemanticsNodes.containsKey(Integer.valueOf(semanticsNode2.i()))) {
                    this.children.add(Integer.valueOf(semanticsNode2.i()));
                }
            }
        }

        public final boolean c() {
            return this.unmergedConfig.c(SemanticsProperties.INSTANCE.p());
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            iArr[ToggleableState.On.ordinal()] = 1;
            iArr[ToggleableState.Off.ordinal()] = 2;
            iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean B(int i10) {
        return this.focusedVirtualViewId == i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v61 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x00e6 -> B:59:0x00e7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:59:0x00e7
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:127)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:75)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final boolean G(int r13, int r14, android.os.Bundle r15) {
        /*
            Method dump skipped, instruction units count: 1436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.G(int, int, android.os.Bundle):boolean");
    }

    private static final boolean H(ScrollAxisRange scrollAxisRange, float f) {
        return (f < 0.0f && scrollAxisRange.c().invoke().floatValue() > 0.0f) || (f > 0.0f && scrollAxisRange.c().invoke().floatValue() < scrollAxisRange.a().invoke().floatValue());
    }

    private final RectF c0(SemanticsNode semanticsNode, Rect rect) {
        if (semanticsNode == null) {
            return null;
        }
        Rect rectT = rect.t(semanticsNode.n());
        Rect rectF = semanticsNode.f();
        Rect rectQ = rectT.r(rectF) ? rectT.q(rectF) : null;
        if (rectQ == null) {
            return null;
        }
        long jN = this.view.n(OffsetKt.a(rectQ.j(), rectQ.m()));
        long jN2 = this.view.n(OffsetKt.a(rectQ.k(), rectQ.e()));
        return new RectF(Offset.m(jN), Offset.n(jN), Offset.m(jN2), Offset.n(jN2));
    }

    private final String w(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode == null) {
            return null;
        }
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (semanticsConfigurationS.c(semanticsProperties.c())) {
            return TempListUtilsKt.d((List) semanticsNode.s().f(semanticsProperties.c()), ",", null, null, 0, null, null, 62, null);
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.t(semanticsNode)) {
            AnnotatedString annotatedStringY = y(semanticsNode.s());
            if (annotatedStringY != null) {
                return annotatedStringY.g();
            }
            return null;
        }
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties.x());
        if (list == null || (annotatedString = (AnnotatedString) kotlin.collections.d0.l0(list)) == null) {
            return null;
        }
        return annotatedString.g();
    }

    private final AccessibilityIterators.TextSegmentIterator x(SemanticsNode semanticsNode, int i10) {
        String strW;
        if (semanticsNode == null || (strW = w(semanticsNode)) == null || strW.length() == 0) {
            return null;
        }
        if (i10 == 1) {
            AccessibilityIterators.CharacterTextSegmentIterator.Companion companion = AccessibilityIterators.CharacterTextSegmentIterator.Companion;
            Locale locale = this.view.getContext().getResources().getConfiguration().locale;
            kotlin.jvm.internal.t.i(locale, "view.context.resources.configuration.locale");
            AccessibilityIterators.CharacterTextSegmentIterator characterTextSegmentIteratorA = companion.a(locale);
            characterTextSegmentIteratorA.e(strW);
            return characterTextSegmentIteratorA;
        }
        if (i10 == 2) {
            AccessibilityIterators.WordTextSegmentIterator.Companion companion2 = AccessibilityIterators.WordTextSegmentIterator.Companion;
            Locale locale2 = this.view.getContext().getResources().getConfiguration().locale;
            kotlin.jvm.internal.t.i(locale2, "view.context.resources.configuration.locale");
            AccessibilityIterators.WordTextSegmentIterator wordTextSegmentIteratorA = companion2.a(locale2);
            wordTextSegmentIteratorA.e(strW);
            return wordTextSegmentIteratorA;
        }
        if (i10 != 4) {
            if (i10 == 8) {
                AccessibilityIterators.ParagraphTextSegmentIterator paragraphTextSegmentIteratorA = AccessibilityIterators.ParagraphTextSegmentIterator.Companion.a();
                paragraphTextSegmentIteratorA.e(strW);
                return paragraphTextSegmentIteratorA;
            }
            if (i10 != 16) {
                return null;
            }
        }
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        if (!semanticsConfigurationS.c(semanticsActions.g())) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        e8.l lVar = (e8.l) ((AccessibilityAction) semanticsNode.s().f(semanticsActions.g())).a();
        if (!kotlin.jvm.internal.t.e(lVar != null ? (Boolean) lVar.invoke(arrayList) : null, Boolean.TRUE)) {
            return null;
        }
        TextLayoutResult textLayoutResult = (TextLayoutResult) arrayList.get(0);
        if (i10 == 4) {
            AccessibilityIterators.LineTextSegmentIterator lineTextSegmentIteratorA = AccessibilityIterators.LineTextSegmentIterator.Companion.a();
            lineTextSegmentIteratorA.j(strW, textLayoutResult);
            return lineTextSegmentIteratorA;
        }
        AccessibilityIterators.PageTextSegmentIterator pageTextSegmentIteratorA = AccessibilityIterators.PageTextSegmentIterator.Companion.a();
        pageTextSegmentIteratorA.j(strW, textLayoutResult, semanticsNode);
        return pageTextSegmentIteratorA;
    }

    public final void F() {
        this.currentSemanticsNodesInvalidated = true;
        if (!A() || this.checkingForSemanticsChanges) {
            return;
        }
        this.checkingForSemanticsChanges = true;
        this.handler.post(this.semanticsChangeChecker);
    }

    @VisibleForTesting
    public final void J(int i10, @NotNull AccessibilityNodeInfoCompat info, @NotNull SemanticsNode semanticsNode) {
        LayoutNodeWrapper layoutNodeWrapperE;
        int iN;
        String str;
        kotlin.jvm.internal.t.j(info, "info");
        kotlin.jvm.internal.t.j(semanticsNode, "semanticsNode");
        info.e0(ClassName);
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        Role role = (Role) SemanticsConfigurationKt.a(semanticsConfigurationS, semanticsProperties.s());
        if (role != null) {
            int iM = role.m();
            if (semanticsNode.t() || semanticsNode.o().isEmpty()) {
                Role.Companion companion = Role.Companion;
                if (Role.j(role.m(), companion.f())) {
                    info.D0(this.view.getContext().getResources().getString(R.string.tab));
                } else {
                    if (Role.j(iM, companion.a())) {
                        str = "android.widget.Button";
                    } else if (Role.j(iM, companion.b())) {
                        str = "android.widget.CheckBox";
                    } else if (Role.j(iM, companion.e())) {
                        str = "android.widget.Switch";
                    } else if (Role.j(iM, companion.d())) {
                        str = "android.widget.RadioButton";
                    } else {
                        str = Role.j(iM, companion.c()) ? "android.widget.ImageView" : null;
                    }
                    if (!Role.j(role.m(), companion.c()) || AndroidComposeViewAccessibilityDelegateCompat_androidKt.n(semanticsNode.k(), AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1.INSTANCE) == null || semanticsNode.s().p()) {
                        info.e0(str);
                    }
                }
            }
            w7.l0 l0Var = w7.l0.INSTANCE;
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.t(semanticsNode)) {
            info.e0("android.widget.EditText");
        }
        if (semanticsNode.h().c(semanticsProperties.x())) {
            info.e0("android.widget.TextView");
        }
        info.x0(this.view.getContext().getPackageName());
        List<SemanticsNode> listP = semanticsNode.p();
        int size = listP.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            SemanticsNode semanticsNode2 = listP.get(i12);
            if (v().containsKey(Integer.valueOf(semanticsNode2.i()))) {
                AndroidViewHolder androidViewHolder = this.view.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(semanticsNode2.k());
                if (androidViewHolder != null) {
                    info.c(androidViewHolder);
                } else {
                    info.d(this.view, semanticsNode2.i());
                }
            }
        }
        if (this.focusedVirtualViewId == i10) {
            info.X(true);
            info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else {
            info.X(false);
            info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_ACCESSIBILITY_FOCUS);
        }
        b0(semanticsNode, info);
        a0(semanticsNode, info);
        SemanticsConfiguration semanticsConfigurationS2 = semanticsNode.s();
        SemanticsProperties semanticsProperties2 = SemanticsProperties.INSTANCE;
        info.K0((CharSequence) SemanticsConfigurationKt.a(semanticsConfigurationS2, semanticsProperties2.v()));
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties2.z());
        if (toggleableState != null) {
            info.c0(true);
            int i13 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i13 == 1) {
                info.d0(true);
                int iE = Role.Companion.e();
                if (role != null && Role.j(role.m(), iE) && info.x() == null) {
                    info.K0(this.view.getContext().getResources().getString(R.string.on));
                }
            } else if (i13 == 2) {
                info.d0(false);
                int iE2 = Role.Companion.e();
                if (role != null && Role.j(role.m(), iE2) && info.x() == null) {
                    info.K0(this.view.getContext().getResources().getString(R.string.off));
                }
            } else if (i13 == 3 && info.x() == null) {
                info.K0(this.view.getContext().getResources().getString(R.string.indeterminate));
            }
            w7.l0 l0Var2 = w7.l0.INSTANCE;
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties2.u());
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            int iF = Role.Companion.f();
            if (role != null && Role.j(role.m(), iF)) {
                info.G0(zBooleanValue);
            } else {
                info.c0(true);
                info.d0(zBooleanValue);
                if (info.x() == null) {
                    info.K0(zBooleanValue ? this.view.getContext().getResources().getString(R.string.selected) : this.view.getContext().getResources().getString(R.string.not_selected));
                }
            }
            w7.l0 l0Var3 = w7.l0.INSTANCE;
        }
        if (!semanticsNode.s().p() || semanticsNode.o().isEmpty()) {
            List list = (List) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties2.c());
            info.i0(list != null ? (String) kotlin.collections.d0.l0(list) : null);
        }
        if (semanticsNode.s().p()) {
            info.E0(true);
        }
        String str2 = (String) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties2.w());
        if (str2 != null) {
            for (SemanticsNode semanticsNodeM = semanticsNode; semanticsNodeM != null; semanticsNodeM = semanticsNodeM.m()) {
                SemanticsConfiguration semanticsConfigurationS3 = semanticsNodeM.s();
                SemanticsPropertiesAndroid semanticsPropertiesAndroid = SemanticsPropertiesAndroid.INSTANCE;
                if (semanticsConfigurationS3.c(semanticsPropertiesAndroid.a())) {
                    if (!((Boolean) semanticsNodeM.s().f(semanticsPropertiesAndroid.a())).booleanValue()) {
                        break;
                    }
                    info.O0(str2);
                    break;
                }
            }
        }
        SemanticsConfiguration semanticsConfigurationS4 = semanticsNode.s();
        SemanticsProperties semanticsProperties3 = SemanticsProperties.INSTANCE;
        if (((w7.l0) SemanticsConfigurationKt.a(semanticsConfigurationS4, semanticsProperties3.h())) != null) {
            info.q0(true);
            w7.l0 l0Var4 = w7.l0.INSTANCE;
        }
        info.B0(AndroidComposeViewAccessibilityDelegateCompat_androidKt.r(semanticsNode));
        info.l0(AndroidComposeViewAccessibilityDelegateCompat_androidKt.t(semanticsNode));
        info.m0(AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode));
        info.o0(semanticsNode.s().c(semanticsProperties3.g()));
        if (info.I()) {
            info.p0(((Boolean) semanticsNode.s().f(semanticsProperties3.g())).booleanValue());
            if (info.J()) {
                info.a(2);
            } else {
                info.a(1);
            }
        }
        if (semanticsNode.t()) {
            SemanticsNode semanticsNodeM2 = semanticsNode.m();
            layoutNodeWrapperE = semanticsNodeM2 != null ? semanticsNodeM2.e() : null;
        } else {
            layoutNodeWrapperE = semanticsNode.e();
        }
        info.P0((layoutNodeWrapperE == null || !layoutNodeWrapperE.Q1()) && SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.l()) == null);
        LiveRegionMode liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.o());
        if (liveRegionMode != null) {
            int i14 = liveRegionMode.i();
            LiveRegionMode.Companion companion2 = LiveRegionMode.Companion;
            info.t0((LiveRegionMode.f(i14, companion2.b()) || !LiveRegionMode.f(i14, companion2.a())) ? 1 : 2);
            w7.l0 l0Var5 = w7.l0.INSTANCE;
        }
        info.f0(false);
        SemanticsConfiguration semanticsConfigurationS5 = semanticsNode.s();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfigurationS5, semanticsActions.h());
        if (accessibilityAction != null) {
            boolean zE = kotlin.jvm.internal.t.e(SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.u()), Boolean.TRUE);
            info.f0(!zE);
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode) && !zE) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.b()));
            }
            w7.l0 l0Var6 = w7.l0.INSTANCE;
        }
        info.u0(false);
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.i());
        if (accessibilityAction2 != null) {
            info.u0(true);
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.b()));
            }
            w7.l0 l0Var7 = w7.l0.INSTANCE;
        }
        AccessibilityAction accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.b());
        if (accessibilityAction3 != null) {
            info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.b()));
            w7.l0 l0Var8 = w7.l0.INSTANCE;
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
            AccessibilityAction accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.p());
            if (accessibilityAction4 != null) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(2097152, accessibilityAction4.b()));
                w7.l0 l0Var9 = w7.l0.INSTANCE;
            }
            AccessibilityAction accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.d());
            if (accessibilityAction5 != null) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction5.b()));
                w7.l0 l0Var10 = w7.l0.INSTANCE;
            }
            AccessibilityAction accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.j());
            if (accessibilityAction6 != null) {
                if (info.J() && this.view.getClipboardManager().c()) {
                    info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction6.b()));
                }
                w7.l0 l0Var11 = w7.l0.INSTANCE;
            }
        }
        String strW = w(semanticsNode);
        if (strW != null && strW.length() != 0) {
            info.M0(u(semanticsNode), t(semanticsNode));
            AccessibilityAction accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.o());
            info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, accessibilityAction7 != null ? accessibilityAction7.b() : null));
            info.a(256);
            info.a(512);
            info.w0(11);
            List list2 = (List) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.c());
            if ((list2 == null || list2.isEmpty()) && semanticsNode.s().c(semanticsActions.g()) && !AndroidComposeViewAccessibilityDelegateCompat_androidKt.l(semanticsNode)) {
                info.w0(info.t() | 20);
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 26) {
            ArrayList arrayList = new ArrayList();
            CharSequence charSequenceY = info.y();
            if (charSequenceY != null && charSequenceY.length() != 0 && semanticsNode.s().c(semanticsActions.g())) {
                arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
            }
            if (semanticsNode.s().c(semanticsProperties3.w())) {
                arrayList.add(ExtraDataTestTagKey);
            }
            if (!arrayList.isEmpty()) {
                AccessibilityNodeInfoVerificationHelperMethods accessibilityNodeInfoVerificationHelperMethods = AccessibilityNodeInfoVerificationHelperMethods.INSTANCE;
                AccessibilityNodeInfo accessibilityNodeInfoQ0 = info.Q0();
                kotlin.jvm.internal.t.i(accessibilityNodeInfoQ0, "info.unwrap()");
                accessibilityNodeInfoVerificationHelperMethods.a(accessibilityNodeInfoQ0, arrayList);
            }
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.r());
        if (progressBarRangeInfo != null) {
            if (semanticsNode.s().c(semanticsActions.n())) {
                info.e0("android.widget.SeekBar");
            } else {
                info.e0("android.widget.ProgressBar");
            }
            if (progressBarRangeInfo != ProgressBarRangeInfo.Companion.a()) {
                info.C0(AccessibilityNodeInfoCompat.RangeInfoCompat.a(1, progressBarRangeInfo.c().getStart().floatValue(), progressBarRangeInfo.c().c().floatValue(), progressBarRangeInfo.b()));
                if (info.x() == null) {
                    j8.e<Float> eVarC = progressBarRangeInfo.c();
                    float fM = j8.o.m(eVarC.c().floatValue() - eVarC.getStart().floatValue() == 0.0f ? 0.0f : (progressBarRangeInfo.b() - eVarC.getStart().floatValue()) / (eVarC.c().floatValue() - eVarC.getStart().floatValue()), 0.0f, 1.0f);
                    if (fM == 0.0f) {
                        iN = 0;
                    } else {
                        iN = 100;
                        if (fM != 1.0f) {
                            iN = j8.o.n(g8.c.c(fM * 100), 1, 99);
                        }
                    }
                    info.K0(this.view.getContext().getResources().getString(R.string.template_percent, Integer.valueOf(iN)));
                }
            } else if (info.x() == null) {
                info.K0(this.view.getContext().getResources().getString(R.string.in_progress));
            }
            if (semanticsNode.s().c(semanticsActions.n()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
                if (progressBarRangeInfo.b() < j8.o.d(progressBarRangeInfo.c().c().floatValue(), progressBarRangeInfo.c().getStart().floatValue())) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                }
                if (progressBarRangeInfo.b() > j8.o.i(progressBarRangeInfo.c().getStart().floatValue(), progressBarRangeInfo.c().c().floatValue())) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                }
            }
        }
        if (i15 >= 24) {
            Api24Impl.a(info, semanticsNode);
        }
        CollectionInfoKt.d(semanticsNode, info);
        CollectionInfoKt.e(semanticsNode, info);
        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.i());
        AccessibilityAction accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.l());
        if (scrollAxisRange != null && accessibilityAction8 != null) {
            if (!CollectionInfoKt.b(semanticsNode)) {
                info.e0("android.widget.HorizontalScrollView");
            }
            if (scrollAxisRange.a().invoke().floatValue() > 0.0f) {
                info.F0(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
                if (L(scrollAxisRange)) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    info.b(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.s(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT);
                }
                if (K(scrollAxisRange)) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    info.b(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.s(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT);
                }
            }
        }
        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.A());
        if (scrollAxisRange2 != null && accessibilityAction8 != null) {
            if (!CollectionInfoKt.b(semanticsNode)) {
                info.e0("android.widget.ScrollView");
            }
            if (scrollAxisRange2.a().invoke().floatValue() > 0.0f) {
                info.F0(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
                if (L(scrollAxisRange2)) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
                }
                if (K(scrollAxisRange2)) {
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    info.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
                }
            }
        }
        info.y0((CharSequence) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties3.p()));
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
            AccessibilityAction accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.f());
            if (accessibilityAction9 != null) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction9.b()));
                w7.l0 l0Var12 = w7.l0.INSTANCE;
            }
            AccessibilityAction accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.a());
            if (accessibilityAction10 != null) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction10.b()));
                w7.l0 l0Var13 = w7.l0.INSTANCE;
            }
            AccessibilityAction accessibilityAction11 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsActions.e());
            if (accessibilityAction11 != null) {
                info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction11.b()));
                w7.l0 l0Var14 = w7.l0.INSTANCE;
            }
            if (semanticsNode.s().c(semanticsActions.c())) {
                List list3 = (List) semanticsNode.s().f(semanticsActions.c());
                int size2 = list3.size();
                int[] iArr = AccessibilityActionsResourceIds;
                if (size2 >= iArr.length) {
                    throw new IllegalStateException("Can't have more than " + iArr.length + " custom actions for one widget");
                }
                SparseArrayCompat<CharSequence> sparseArrayCompat = new SparseArrayCompat<>();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (this.labelToActionId.f(i10)) {
                    Map<CharSequence, Integer> mapJ = this.labelToActionId.j(i10);
                    List listU0 = kotlin.collections.p.u0(iArr);
                    ArrayList arrayList2 = new ArrayList();
                    int size3 = list3.size();
                    for (int i16 = 0; i16 < size3; i16++) {
                        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) list3.get(i16);
                        kotlin.jvm.internal.t.g(mapJ);
                        if (mapJ.containsKey(customAccessibilityAction.b())) {
                            Integer num = mapJ.get(customAccessibilityAction.b());
                            kotlin.jvm.internal.t.g(num);
                            sparseArrayCompat.o(num.intValue(), customAccessibilityAction.b());
                            linkedHashMap.put(customAccessibilityAction.b(), num);
                            listU0.remove(num);
                            info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(num.intValue(), customAccessibilityAction.b()));
                        } else {
                            arrayList2.add(customAccessibilityAction);
                        }
                    }
                    int size4 = arrayList2.size();
                    while (i11 < size4) {
                        CustomAccessibilityAction customAccessibilityAction2 = (CustomAccessibilityAction) arrayList2.get(i11);
                        int iIntValue = ((Number) listU0.get(i11)).intValue();
                        sparseArrayCompat.o(iIntValue, customAccessibilityAction2.b());
                        linkedHashMap.put(customAccessibilityAction2.b(), Integer.valueOf(iIntValue));
                        info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iIntValue, customAccessibilityAction2.b()));
                        i11++;
                    }
                } else {
                    int size5 = list3.size();
                    while (i11 < size5) {
                        CustomAccessibilityAction customAccessibilityAction3 = (CustomAccessibilityAction) list3.get(i11);
                        int i17 = AccessibilityActionsResourceIds[i11];
                        sparseArrayCompat.o(i17, customAccessibilityAction3.b());
                        linkedHashMap.put(customAccessibilityAction3.b(), Integer.valueOf(i17));
                        info.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i17, customAccessibilityAction3.b()));
                        i11++;
                    }
                }
                this.actionIdToLabel.o(i10, sparseArrayCompat);
                this.labelToActionId.o(i10, linkedHashMap);
            }
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    @NotNull
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NotNull View host) {
        kotlin.jvm.internal.t.j(host, "host");
        return this.nodeProvider;
    }

    public AndroidComposeViewAccessibilityDelegateCompat(@NotNull AndroidComposeView view) {
        kotlin.jvm.internal.t.j(view, "view");
        this.view = view;
        this.hoveredVirtualViewId = Integer.MIN_VALUE;
        Object systemService = view.getContext().getSystemService("accessibility");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        }
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
        this.handler = new Handler(Looper.getMainLooper());
        this.nodeProvider = new AccessibilityNodeProviderCompat(new MyNodeProvider());
        this.focusedVirtualViewId = Integer.MIN_VALUE;
        this.actionIdToLabel = new SparseArrayCompat<>();
        this.labelToActionId = new SparseArrayCompat<>();
        this.accessibilityCursorPosition = -1;
        this.subtreeChangedLayoutNodes = new ArraySet<>();
        this.boundsUpdateChannel = kotlinx.coroutines.channels.g.b(-1, null, null, 6, null);
        this.currentSemanticsNodesInvalidated = true;
        this.currentSemanticsNodes = kotlin.collections.s0.h();
        this.paneDisplayed = new ArraySet<>();
        this.previousSemanticsNodes = new LinkedHashMap();
        this.previousSemanticsRoot = new SemanticsNodeCopy(view.getSemanticsOwner().a(), kotlin.collections.s0.h());
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View view2) {
                kotlin.jvm.internal.t.j(view2, "view");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View view2) {
                kotlin.jvm.internal.t.j(view2, "view");
                AndroidComposeViewAccessibilityDelegateCompat.this.handler.removeCallbacks(AndroidComposeViewAccessibilityDelegateCompat.this.semanticsChangeChecker);
            }
        });
        this.semanticsChangeChecker = new Runnable() { // from class: androidx.compose.ui.platform.h
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeViewAccessibilityDelegateCompat.O(this.f122a);
            }
        };
        this.scrollObservationScopes = new ArrayList();
        this.sendScrollEventIfNeededLambda = new AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1(this);
    }

    private final boolean A() {
        return this.accessibilityForceEnabledForTesting || (this.accessibilityManager.isEnabled() && this.accessibilityManager.isTouchExplorationEnabled());
    }

    private final void D(LayoutNode layoutNode) {
        if (this.subtreeChangedLayoutNodes.add(layoutNode)) {
            this.boundsUpdateChannel.p(w7.l0.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(AndroidComposeViewAccessibilityDelegateCompat this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        androidx.compose.ui.node.b.a(this$0.view, false, 1, null);
        this$0.n();
        this$0.checkingForSemanticsChanges = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int P(int i10) {
        if (i10 == this.view.getSemanticsOwner().a().i()) {
            return -1;
        }
        return i10;
    }

    private final boolean R(int i10, int i11, Integer num, List<String> list) {
        if (i10 == Integer.MIN_VALUE || !A()) {
            return false;
        }
        AccessibilityEvent accessibilityEventP = p(i10, i11);
        if (num != null) {
            accessibilityEventP.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            accessibilityEventP.setContentDescription(TempListUtilsKt.d(list, ",", null, null, 0, null, null, 62, null));
        }
        return Q(accessibilityEventP);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean S(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i10, int i11, Integer num, List list, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            num = null;
        }
        if ((i12 & 8) != 0) {
            list = null;
        }
        return androidComposeViewAccessibilityDelegateCompat.R(i10, i11, num, list);
    }

    private final void U(int i10) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.pendingTextTraversedEvent;
        if (pendingTextTraversedEvent != null) {
            if (i10 != pendingTextTraversedEvent.d().i()) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.f() <= 1000) {
                AccessibilityEvent accessibilityEventP = p(P(pendingTextTraversedEvent.d().i()), 131072);
                accessibilityEventP.setFromIndex(pendingTextTraversedEvent.b());
                accessibilityEventP.setToIndex(pendingTextTraversedEvent.e());
                accessibilityEventP.setAction(pendingTextTraversedEvent.a());
                accessibilityEventP.setMovementGranularity(pendingTextTraversedEvent.c());
                accessibilityEventP.getText().add(w(pendingTextTraversedEvent.d()));
                Q(accessibilityEventP);
            }
        }
        this.pendingTextTraversedEvent = null;
    }

    private final void X(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<SemanticsNode> listO = semanticsNode.o();
        int size = listO.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode2 = listO.get(i10);
            if (v().containsKey(Integer.valueOf(semanticsNode2.i()))) {
                if (!semanticsNodeCopy.a().contains(Integer.valueOf(semanticsNode2.i()))) {
                    D(semanticsNode.k());
                    return;
                }
                linkedHashSet.add(Integer.valueOf(semanticsNode2.i()));
            }
        }
        Iterator<Integer> it = semanticsNodeCopy.a().iterator();
        while (it.hasNext()) {
            if (!linkedHashSet.contains(Integer.valueOf(it.next().intValue()))) {
                D(semanticsNode.k());
                return;
            }
        }
        List<SemanticsNode> listO2 = semanticsNode.o();
        int size2 = listO2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            SemanticsNode semanticsNode3 = listO2.get(i11);
            if (v().containsKey(Integer.valueOf(semanticsNode3.i()))) {
                SemanticsNodeCopy semanticsNodeCopy2 = this.previousSemanticsNodes.get(Integer.valueOf(semanticsNode3.i()));
                kotlin.jvm.internal.t.g(semanticsNodeCopy2);
                X(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    private final void b0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        AnnotatedString annotatedString;
        FontFamily.Resolver fontFamilyResolver = this.view.getFontFamilyResolver();
        AnnotatedString annotatedStringY = y(semanticsNode.s());
        SpannableString spannableStringB = null;
        SpannableString spannableString = (SpannableString) e0(annotatedStringY != null ? AndroidAccessibilitySpannableString_androidKt.b(annotatedStringY, this.view.getDensity(), fontFamilyResolver) : null, 100000);
        List list = (List) SemanticsConfigurationKt.a(semanticsNode.s(), SemanticsProperties.INSTANCE.x());
        if (list != null && (annotatedString = (AnnotatedString) kotlin.collections.d0.l0(list)) != null) {
            spannableStringB = AndroidAccessibilitySpannableString_androidKt.b(annotatedString, this.view.getDensity(), fontFamilyResolver);
        }
        SpannableString spannableString2 = (SpannableString) e0(spannableStringB, 100000);
        if (spannableString == null) {
            spannableString = spannableString2;
        }
        accessibilityNodeInfoCompat.L0(spannableString);
    }

    private final <T extends CharSequence> T e0(T t5, @IntRange int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (t5 == null || t5.length() == 0 || t5.length() <= i10) {
            return t5;
        }
        int i11 = i10 - 1;
        if (Character.isHighSurrogate(t5.charAt(i11)) && Character.isLowSurrogate(t5.charAt(i10))) {
            i10 = i11;
        }
        return (T) t5.subSequence(0, i10);
    }

    private final void f0(int i10) {
        int i11 = this.hoveredVirtualViewId;
        if (i11 == i10) {
            return;
        }
        this.hoveredVirtualViewId = i10;
        S(this, i10, 128, null, null, 12, null);
        S(this, i11, 256, null, null, 12, null);
    }

    private final void g0() {
        SemanticsConfiguration semanticsConfigurationB;
        for (Integer id : this.paneDisplayed) {
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = v().get(id);
            String str = null;
            SemanticsNode semanticsNodeB = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.b() : null;
            if (semanticsNodeB == null || !AndroidComposeViewAccessibilityDelegateCompat_androidKt.q(semanticsNodeB)) {
                this.paneDisplayed.remove(id);
                kotlin.jvm.internal.t.i(id, "id");
                int iIntValue = id.intValue();
                SemanticsNodeCopy semanticsNodeCopy = this.previousSemanticsNodes.get(id);
                if (semanticsNodeCopy != null && (semanticsConfigurationB = semanticsNodeCopy.b()) != null) {
                    str = (String) SemanticsConfigurationKt.a(semanticsConfigurationB, SemanticsProperties.INSTANCE.p());
                }
                T(iIntValue, 32, str);
            }
        }
        this.previousSemanticsNodes.clear();
        for (Map.Entry<Integer, SemanticsNodeWithAdjustedBounds> entry : v().entrySet()) {
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.q(entry.getValue().b()) && this.paneDisplayed.add(entry.getKey())) {
                T(entry.getKey().intValue(), 16, (String) entry.getValue().b().s().f(SemanticsProperties.INSTANCE.p()));
            }
            this.previousSemanticsNodes.put(entry.getKey(), new SemanticsNodeCopy(entry.getValue().b(), v()));
        }
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().a(), v());
    }

    private final void n() {
        X(this.view.getSemanticsOwner().a(), this.previousSemanticsRoot);
        W(v());
        g0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccessibilityNodeInfo q(int i10) {
        LifecycleOwner lifecycleOwnerA;
        Lifecycle lifecycle;
        AndroidComposeView.ViewTreeOwners viewTreeOwners = this.view.getViewTreeOwners();
        if (((viewTreeOwners == null || (lifecycleOwnerA = viewTreeOwners.a()) == null || (lifecycle = lifecycleOwnerA.getLifecycle()) == null) ? null : lifecycle.b()) == Lifecycle.State.DESTROYED) {
            return null;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatQ = AccessibilityNodeInfoCompat.Q();
        kotlin.jvm.internal.t.i(accessibilityNodeInfoCompatQ, "obtain()");
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = v().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds == null) {
            accessibilityNodeInfoCompatQ.U();
            return null;
        }
        SemanticsNode semanticsNodeB = semanticsNodeWithAdjustedBounds.b();
        if (i10 == -1) {
            Object objJ = ViewCompat.J(this.view);
            accessibilityNodeInfoCompatQ.z0(objJ instanceof View ? (View) objJ : null);
        } else {
            if (semanticsNodeB.m() == null) {
                throw new IllegalStateException("semanticsNode " + i10 + " has null parent");
            }
            SemanticsNode semanticsNodeM = semanticsNodeB.m();
            kotlin.jvm.internal.t.g(semanticsNodeM);
            int i11 = semanticsNodeM.i();
            accessibilityNodeInfoCompatQ.A0(this.view, i11 != this.view.getSemanticsOwner().a().i() ? i11 : -1);
        }
        accessibilityNodeInfoCompatQ.J0(this.view, i10);
        android.graphics.Rect rectA = semanticsNodeWithAdjustedBounds.a();
        long jN = this.view.n(OffsetKt.a(rectA.left, rectA.top));
        long jN2 = this.view.n(OffsetKt.a(rectA.right, rectA.bottom));
        accessibilityNodeInfoCompatQ.a0(new android.graphics.Rect((int) Math.floor(Offset.m(jN)), (int) Math.floor(Offset.n(jN)), (int) Math.ceil(Offset.m(jN2)), (int) Math.ceil(Offset.n(jN2))));
        J(i10, accessibilityNodeInfoCompatQ, semanticsNodeB);
        return accessibilityNodeInfoCompatQ.Q0();
    }

    private final AccessibilityEvent r(int i10, Integer num, Integer num2, Integer num3, String str) {
        AccessibilityEvent accessibilityEventP = p(i10, 8192);
        if (num != null) {
            accessibilityEventP.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            accessibilityEventP.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            accessibilityEventP.setItemCount(num3.intValue());
        }
        if (str != null) {
            accessibilityEventP.getText().add(str);
        }
        return accessibilityEventP;
    }

    private final Map<Integer, SemanticsNodeWithAdjustedBounds> v() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodes = AndroidComposeViewAccessibilityDelegateCompat_androidKt.o(this.view.getSemanticsOwner());
            this.currentSemanticsNodesInvalidated = false;
        }
        return this.currentSemanticsNodes;
    }

    private final AnnotatedString y(SemanticsConfiguration semanticsConfiguration) {
        return (AnnotatedString) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.INSTANCE.e());
    }

    public final void E(@NotNull LayoutNode layoutNode) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        this.currentSemanticsNodesInvalidated = true;
        if (A()) {
            D(layoutNode);
        }
    }

    @VisibleForTesting
    public final void W(@NotNull Map<Integer, SemanticsNodeWithAdjustedBounds> newSemanticsNodes) {
        String strG;
        kotlin.jvm.internal.t.j(newSemanticsNodes, "newSemanticsNodes");
        ArrayList arrayList = new ArrayList(this.scrollObservationScopes);
        this.scrollObservationScopes.clear();
        Iterator<Integer> it = newSemanticsNodes.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            SemanticsNodeCopy semanticsNodeCopy = this.previousSemanticsNodes.get(Integer.valueOf(iIntValue));
            if (semanticsNodeCopy != null) {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = newSemanticsNodes.get(Integer.valueOf(iIntValue));
                SemanticsNode semanticsNodeB = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.b() : null;
                kotlin.jvm.internal.t.g(semanticsNodeB);
                Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it2 = semanticsNodeB.s().iterator();
                while (true) {
                    boolean zU = false;
                    while (true) {
                        if (!it2.hasNext()) {
                            if (!zU) {
                                zU = AndroidComposeViewAccessibilityDelegateCompat_androidKt.u(semanticsNodeB, semanticsNodeCopy);
                            }
                            if (!zU) {
                                break;
                            }
                            S(this, P(iIntValue), 2048, 0, null, 8, null);
                            break;
                        }
                        Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object> next = it2.next();
                        SemanticsPropertyKey<?> key = next.getKey();
                        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
                        if (((kotlin.jvm.internal.t.e(key, semanticsProperties.i()) || kotlin.jvm.internal.t.e(next.getKey(), semanticsProperties.A())) && M(iIntValue, arrayList)) || !kotlin.jvm.internal.t.e(next.getValue(), SemanticsConfigurationKt.a(semanticsNodeCopy.b(), next.getKey()))) {
                            SemanticsPropertyKey<?> key2 = next.getKey();
                            if (kotlin.jvm.internal.t.e(key2, semanticsProperties.p())) {
                                Object value = next.getValue();
                                if (value == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                }
                                String str = (String) value;
                                if (semanticsNodeCopy.c()) {
                                    T(iIntValue, 8, str);
                                }
                            } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.v()) || kotlin.jvm.internal.t.e(key2, semanticsProperties.z())) {
                                S(this, P(iIntValue), 2048, 64, null, 8, null);
                                S(this, P(iIntValue), 2048, 0, null, 8, null);
                            } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.r())) {
                                S(this, P(iIntValue), 2048, 64, null, 8, null);
                                S(this, P(iIntValue), 2048, 0, null, 8, null);
                            } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.u())) {
                                Role role = (Role) SemanticsConfigurationKt.a(semanticsNodeB.h(), semanticsProperties.s());
                                int iF = Role.Companion.f();
                                if (role == null || !Role.j(role.m(), iF)) {
                                    S(this, P(iIntValue), 2048, 64, null, 8, null);
                                    S(this, P(iIntValue), 2048, 0, null, 8, null);
                                } else if (kotlin.jvm.internal.t.e(SemanticsConfigurationKt.a(semanticsNodeB.h(), semanticsProperties.u()), Boolean.TRUE)) {
                                    AccessibilityEvent accessibilityEventP = p(P(iIntValue), 4);
                                    SemanticsNode semanticsNode = new SemanticsNode(semanticsNodeB.l(), true);
                                    List list = (List) SemanticsConfigurationKt.a(semanticsNode.h(), semanticsProperties.c());
                                    String strD = list != null ? TempListUtilsKt.d(list, ",", null, null, 0, null, null, 62, null) : null;
                                    List list2 = (List) SemanticsConfigurationKt.a(semanticsNode.h(), semanticsProperties.x());
                                    String strD2 = list2 != null ? TempListUtilsKt.d(list2, ",", null, null, 0, null, null, 62, null) : null;
                                    if (strD != null) {
                                        accessibilityEventP.setContentDescription(strD);
                                        w7.l0 l0Var = w7.l0.INSTANCE;
                                    }
                                    if (strD2 != null) {
                                        accessibilityEventP.getText().add(strD2);
                                    }
                                    Q(accessibilityEventP);
                                } else {
                                    S(this, P(iIntValue), 2048, 0, null, 8, null);
                                }
                            } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.c())) {
                                int iP = P(iIntValue);
                                Object value2 = next.getValue();
                                if (value2 == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                                }
                                R(iP, 2048, 4, (List) value2);
                            } else {
                                String str2 = "";
                                if (kotlin.jvm.internal.t.e(key2, semanticsProperties.e())) {
                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.t(semanticsNodeB)) {
                                        AnnotatedString annotatedStringY = y(semanticsNodeCopy.b());
                                        if (annotatedStringY == null) {
                                            annotatedStringY = "";
                                        }
                                        AnnotatedString annotatedStringY2 = y(semanticsNodeB.s());
                                        str2 = annotatedStringY2 != null ? annotatedStringY2 : "";
                                        int length = annotatedStringY.length();
                                        int length2 = str2.length();
                                        int iJ = j8.o.j(length, length2);
                                        int i10 = 0;
                                        while (i10 < iJ && annotatedStringY.charAt(i10) == str2.charAt(i10)) {
                                            i10++;
                                        }
                                        int i11 = 0;
                                        while (i11 < iJ - i10) {
                                            int i12 = iJ;
                                            if (annotatedStringY.charAt((length - 1) - i11) != str2.charAt((length2 - 1) - i11)) {
                                                break;
                                            }
                                            i11++;
                                            iJ = i12;
                                        }
                                        AccessibilityEvent accessibilityEventP2 = p(P(iIntValue), 16);
                                        accessibilityEventP2.setFromIndex(i10);
                                        accessibilityEventP2.setRemovedCount((length - i11) - i10);
                                        accessibilityEventP2.setAddedCount((length2 - i11) - i10);
                                        accessibilityEventP2.setBeforeText(annotatedStringY);
                                        accessibilityEventP2.getText().add(e0(str2, 100000));
                                        Q(accessibilityEventP2);
                                    } else {
                                        S(this, P(iIntValue), 2048, 2, null, 8, null);
                                    }
                                } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.y())) {
                                    AnnotatedString annotatedStringY3 = y(semanticsNodeB.s());
                                    if (annotatedStringY3 != null && (strG = annotatedStringY3.g()) != null) {
                                        str2 = strG;
                                    }
                                    long jR = ((TextRange) semanticsNodeB.s().f(semanticsProperties.y())).r();
                                    Q(r(P(iIntValue), Integer.valueOf(TextRange.n(jR)), Integer.valueOf(TextRange.i(jR)), Integer.valueOf(str2.length()), (String) e0(str2, 100000)));
                                    U(semanticsNodeB.i());
                                } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.i()) || kotlin.jvm.internal.t.e(key2, semanticsProperties.A())) {
                                    D(semanticsNodeB.k());
                                    ScrollObservationScope scrollObservationScopeM = AndroidComposeViewAccessibilityDelegateCompat_androidKt.m(this.scrollObservationScopes, iIntValue);
                                    kotlin.jvm.internal.t.g(scrollObservationScopeM);
                                    scrollObservationScopeM.f((ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNodeB.s(), semanticsProperties.i()));
                                    scrollObservationScopeM.i((ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNodeB.s(), semanticsProperties.A()));
                                    V(scrollObservationScopeM);
                                } else if (kotlin.jvm.internal.t.e(key2, semanticsProperties.g())) {
                                    Object value3 = next.getValue();
                                    if (value3 == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                                    }
                                    if (((Boolean) value3).booleanValue()) {
                                        Q(p(P(semanticsNodeB.i()), 8));
                                    }
                                    S(this, P(semanticsNodeB.i()), 2048, 0, null, 8, null);
                                } else {
                                    SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
                                    if (kotlin.jvm.internal.t.e(key2, semanticsActions.c())) {
                                        List list3 = (List) semanticsNodeB.s().f(semanticsActions.c());
                                        List list4 = (List) SemanticsConfigurationKt.a(semanticsNodeCopy.b(), semanticsActions.c());
                                        if (list4 != null) {
                                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                                            int size = list3.size();
                                            for (int i13 = 0; i13 < size; i13++) {
                                                linkedHashSet.add(((CustomAccessibilityAction) list3.get(i13)).b());
                                            }
                                            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                            int size2 = list4.size();
                                            for (int i14 = 0; i14 < size2; i14++) {
                                                linkedHashSet2.add(((CustomAccessibilityAction) list4.get(i14)).b());
                                            }
                                            if (linkedHashSet.containsAll(linkedHashSet2) && linkedHashSet2.containsAll(linkedHashSet)) {
                                                break;
                                            }
                                        } else if (!list3.isEmpty()) {
                                        }
                                        zU = true;
                                    } else if (next.getValue() instanceof AccessibilityAction) {
                                        Object value4 = next.getValue();
                                        if (value4 == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>");
                                        }
                                        zU = !AndroidComposeViewAccessibilityDelegateCompat_androidKt.j((AccessibilityAction) value4, SemanticsConfigurationKt.a(semanticsNodeCopy.b(), next.getKey()));
                                    } else {
                                        zU = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0071 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:31:0x007d A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:25:0x0063, B:29:0x0075, B:31:0x007d, B:33:0x0086, B:35:0x008f, B:36:0x00a0, B:38:0x00a7, B:39:0x00b0, B:20:0x0050), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:25:0x0063, B:29:0x0075, B:31:0x007d, B:33:0x0086, B:35:0x008f, B:36:0x00a0, B:38:0x00a7, B:39:0x00b0, B:20:0x0050), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x008f A[Catch: all -> 0x0039, LOOP:0: B:34:0x008d->B:35:0x008f, LOOP_END, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:25:0x0063, B:29:0x0075, B:31:0x007d, B:33:0x0086, B:35:0x008f, B:36:0x00a0, B:38:0x00a7, B:39:0x00b0, B:20:0x0050), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a7 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:25:0x0063, B:29:0x0075, B:31:0x007d, B:33:0x0086, B:35:0x008f, B:36:0x00a0, B:38:0x00a7, B:39:0x00b0, B:20:0x0050), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00c3 -> B:14:0x0037). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object k(@org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super w7.l0> r11) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.k(kotlin.coroutines.d):java.lang.Object");
    }

    @VisibleForTesting
    public final boolean m(@NotNull Collection<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes, boolean z6, int i10, long j6) {
        SemanticsPropertyKey<ScrollAxisRange> semanticsPropertyKeyI;
        ScrollAxisRange scrollAxisRange;
        kotlin.jvm.internal.t.j(currentSemanticsNodes, "currentSemanticsNodes");
        if (Offset.j(j6, Offset.Companion.b()) || !Offset.p(j6)) {
            return false;
        }
        if (z6) {
            semanticsPropertyKeyI = SemanticsProperties.INSTANCE.A();
        } else {
            if (z6) {
                throw new w7.s();
            }
            semanticsPropertyKeyI = SemanticsProperties.INSTANCE.i();
        }
        Collection<SemanticsNodeWithAdjustedBounds> collection = currentSemanticsNodes;
        if (collection.isEmpty()) {
            return false;
        }
        for (SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds : collection) {
            if (RectHelper_androidKt.c(semanticsNodeWithAdjustedBounds.a()).b(j6) && (scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNodeWithAdjustedBounds.b().h(), semanticsPropertyKeyI)) != null) {
                int i11 = scrollAxisRange.b() ? -i10 : i10;
                if (!(i10 == 0 && scrollAxisRange.b()) && i11 >= 0) {
                    if (scrollAxisRange.c().invoke().floatValue() < scrollAxisRange.a().invoke().floatValue()) {
                        return true;
                    }
                } else if (scrollAxisRange.c().invoke().floatValue() > 0.0f) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean s(@NotNull MotionEvent event) {
        kotlin.jvm.internal.t.j(event, "event");
        if (!A()) {
            return false;
        }
        int action = event.getAction();
        if (action == 7 || action == 9) {
            int iZ = z(event.getX(), event.getY());
            boolean zDispatchGenericMotionEvent = this.view.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(event);
            f0(iZ);
            if (iZ == Integer.MIN_VALUE) {
                return zDispatchGenericMotionEvent;
            }
            return true;
        }
        if (action != 10) {
            return false;
        }
        if (this.hoveredVirtualViewId == Integer.MIN_VALUE) {
            return this.view.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(event);
        }
        f0(Integer.MIN_VALUE);
        return true;
    }

    @VisibleForTesting
    public final int z(float f, float f6) {
        LayoutNode layoutNodeA;
        SemanticsEntity semanticsEntityJ = null;
        androidx.compose.ui.node.b.a(this.view, false, 1, null);
        HitTestResult hitTestResult = new HitTestResult();
        this.view.getRoot().E0(OffsetKt.a(f, f6), hitTestResult, (12 & 4) != 0, (12 & 8) != 0);
        SemanticsEntity semanticsEntity = (SemanticsEntity) kotlin.collections.d0.w0(hitTestResult);
        if (semanticsEntity != null && (layoutNodeA = semanticsEntity.a()) != null) {
            semanticsEntityJ = SemanticsNodeKt.j(layoutNodeA);
        }
        if (semanticsEntityJ != null) {
            SemanticsNode semanticsNode = new SemanticsNode(semanticsEntityJ, false);
            LayoutNodeWrapper layoutNodeWrapperE = semanticsNode.e();
            if (!semanticsNode.s().c(SemanticsProperties.INSTANCE.l()) && !layoutNodeWrapperE.Q1() && this.view.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(semanticsEntityJ.a()) == null) {
                return P(semanticsEntityJ.c().getId());
            }
        }
        return Integer.MIN_VALUE;
    }

    private final boolean C(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!semanticsConfigurationS.c(semanticsProperties.c()) && semanticsNode.s().c(semanticsProperties.e())) {
            return true;
        }
        return false;
    }

    private static final float I(float f, float f6) {
        if (Math.signum(f) == Math.signum(f6)) {
            if (Math.abs(f) >= Math.abs(f6)) {
                return f6;
            }
            return f;
        }
        return 0.0f;
    }

    private static final boolean K(ScrollAxisRange scrollAxisRange) {
        if ((scrollAxisRange.c().invoke().floatValue() > 0.0f && !scrollAxisRange.b()) || (scrollAxisRange.c().invoke().floatValue() < scrollAxisRange.a().invoke().floatValue() && scrollAxisRange.b())) {
            return true;
        }
        return false;
    }

    private static final boolean L(ScrollAxisRange scrollAxisRange) {
        if ((scrollAxisRange.c().invoke().floatValue() < scrollAxisRange.a().invoke().floatValue() && !scrollAxisRange.b()) || (scrollAxisRange.c().invoke().floatValue() > 0.0f && scrollAxisRange.b())) {
            return true;
        }
        return false;
    }

    private final boolean M(int i10, List<ScrollObservationScope> list) {
        boolean z6;
        ScrollObservationScope scrollObservationScopeM = AndroidComposeViewAccessibilityDelegateCompat_androidKt.m(list, i10);
        if (scrollObservationScopeM != null) {
            z6 = false;
        } else {
            scrollObservationScopeM = new ScrollObservationScope(i10, this.scrollObservationScopes, null, null, null, null);
            z6 = true;
        }
        this.scrollObservationScopes.add(scrollObservationScopeM);
        return z6;
    }

    private final boolean N(int i10) {
        if (!A() || B(i10)) {
            return false;
        }
        int i11 = this.focusedVirtualViewId;
        if (i11 != Integer.MIN_VALUE) {
            S(this, i11, 65536, null, null, 12, null);
        }
        this.focusedVirtualViewId = i10;
        this.view.invalidate();
        S(this, i10, 32768, null, null, 12, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Q(AccessibilityEvent accessibilityEvent) {
        if (!A()) {
            return false;
        }
        return this.view.getParent().requestSendAccessibilityEvent(this.view, accessibilityEvent);
    }

    private final void T(int i10, int i11, String str) {
        AccessibilityEvent accessibilityEventP = p(P(i10), 32);
        accessibilityEventP.setContentChangeTypes(i11);
        if (str != null) {
            accessibilityEventP.getText().add(str);
        }
        Q(accessibilityEventP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(ScrollObservationScope scrollObservationScope) {
        if (!scrollObservationScope.isValid()) {
            return;
        }
        this.view.getSnapshotObserver().e(scrollObservationScope, this.sendScrollEventIfNeededLambda, new AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1(scrollObservationScope, this));
    }

    private final void Y(LayoutNode layoutNode, ArraySet<Integer> arraySet) {
        LayoutNode layoutNodeN;
        SemanticsEntity semanticsEntityJ;
        if (!layoutNode.K0() || this.view.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().containsKey(layoutNode)) {
            return;
        }
        SemanticsEntity semanticsEntityJ2 = SemanticsNodeKt.j(layoutNode);
        if (semanticsEntityJ2 == null) {
            LayoutNode layoutNodeN2 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.n(layoutNode, AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.INSTANCE);
            if (layoutNodeN2 != null) {
                semanticsEntityJ2 = SemanticsNodeKt.j(layoutNodeN2);
            } else {
                semanticsEntityJ2 = null;
            }
            if (semanticsEntityJ2 == null) {
                return;
            }
        }
        if (!semanticsEntityJ2.j().p() && (layoutNodeN = AndroidComposeViewAccessibilityDelegateCompat_androidKt.n(layoutNode, AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.INSTANCE)) != null && (semanticsEntityJ = SemanticsNodeKt.j(layoutNodeN)) != null) {
            semanticsEntityJ2 = semanticsEntityJ;
        }
        int id = semanticsEntityJ2.c().getId();
        if (!arraySet.add(Integer.valueOf(id))) {
            return;
        }
        S(this, P(id), 2048, 1, null, 8, null);
    }

    private final boolean Z(SemanticsNode semanticsNode, int i10, int i11, boolean z6) {
        String strW;
        Integer numValueOf;
        Integer numValueOf2;
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        boolean z10 = false;
        if (semanticsConfigurationS.c(semanticsActions.o()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.k(semanticsNode)) {
            e8.q qVar = (e8.q) ((AccessibilityAction) semanticsNode.s().f(semanticsActions.o())).a();
            if (qVar == null) {
                return false;
            }
            return ((Boolean) qVar.invoke(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z6))).booleanValue();
        }
        if ((i10 == i11 && i11 == this.accessibilityCursorPosition) || (strW = w(semanticsNode)) == null) {
            return false;
        }
        if (i10 < 0 || i10 != i11 || i11 > strW.length()) {
            i10 = -1;
        }
        this.accessibilityCursorPosition = i10;
        if (strW.length() > 0) {
            z10 = true;
        }
        int iP = P(semanticsNode.i());
        Integer numValueOf3 = null;
        if (z10) {
            numValueOf = Integer.valueOf(this.accessibilityCursorPosition);
        } else {
            numValueOf = null;
        }
        if (z10) {
            numValueOf2 = Integer.valueOf(this.accessibilityCursorPosition);
        } else {
            numValueOf2 = null;
        }
        if (z10) {
            numValueOf3 = Integer.valueOf(strW.length());
        }
        Q(r(iP, numValueOf, numValueOf2, numValueOf3, strW));
        U(semanticsNode.i());
        return true;
    }

    private final void a0(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (semanticsConfigurationS.c(semanticsProperties.f())) {
            accessibilityNodeInfoCompat.j0(true);
            accessibilityNodeInfoCompat.n0((CharSequence) SemanticsConfigurationKt.a(semanticsNode.s(), semanticsProperties.f()));
        }
    }

    private final boolean d0(SemanticsNode semanticsNode, int i10, boolean z6, boolean z10) {
        int[] iArrB;
        int iU;
        int i11;
        int i12;
        int i13 = semanticsNode.i();
        Integer num = this.previousTraversedNode;
        if (num == null || i13 != num.intValue()) {
            this.accessibilityCursorPosition = -1;
            this.previousTraversedNode = Integer.valueOf(semanticsNode.i());
        }
        String strW = w(semanticsNode);
        boolean z11 = false;
        if (strW != null && strW.length() != 0) {
            AccessibilityIterators.TextSegmentIterator textSegmentIteratorX = x(semanticsNode, i10);
            if (textSegmentIteratorX == null) {
                return false;
            }
            int iT = t(semanticsNode);
            if (iT == -1) {
                if (z6) {
                    iT = 0;
                } else {
                    iT = strW.length();
                }
            }
            if (z6) {
                iArrB = textSegmentIteratorX.a(iT);
            } else {
                iArrB = textSegmentIteratorX.b(iT);
            }
            if (iArrB == null) {
                return false;
            }
            int i14 = iArrB[0];
            z11 = true;
            int i15 = iArrB[1];
            if (z10 && C(semanticsNode)) {
                iU = u(semanticsNode);
                if (iU == -1) {
                    if (z6) {
                        iU = i14;
                    } else {
                        iU = i15;
                    }
                }
                if (z6) {
                    i11 = i15;
                } else {
                    i11 = i14;
                }
            } else {
                if (z6) {
                    iU = i15;
                } else {
                    iU = i14;
                }
                i11 = iU;
            }
            if (z6) {
                i12 = 256;
            } else {
                i12 = 512;
            }
            this.pendingTextTraversedEvent = new PendingTextTraversedEvent(semanticsNode, i12, i10, i14, i15, SystemClock.uptimeMillis());
            Z(semanticsNode, iU, i11, true);
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        SemanticsNode semanticsNodeB;
        String str2;
        int length;
        Boolean bool;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = v().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds != null && (semanticsNodeB = semanticsNodeWithAdjustedBounds.b()) != null) {
            String strW = w(semanticsNodeB);
            SemanticsConfiguration semanticsConfigurationS = semanticsNodeB.s();
            SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
            if (semanticsConfigurationS.c(semanticsActions.g()) && bundle != null && kotlin.jvm.internal.t.e(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
                int i11 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
                int i12 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
                if (i12 > 0 && i11 >= 0) {
                    if (strW != null) {
                        length = strW.length();
                    } else {
                        length = Integer.MAX_VALUE;
                    }
                    if (i11 < length) {
                        ArrayList arrayList = new ArrayList();
                        e8.l lVar = (e8.l) ((AccessibilityAction) semanticsNodeB.s().f(semanticsActions.g())).a();
                        if (lVar != null) {
                            bool = (Boolean) lVar.invoke(arrayList);
                        } else {
                            bool = null;
                        }
                        if (kotlin.jvm.internal.t.e(bool, Boolean.TRUE)) {
                            TextLayoutResult textLayoutResult = (TextLayoutResult) arrayList.get(0);
                            ArrayList arrayList2 = new ArrayList();
                            for (int i13 = 0; i13 < i12; i13++) {
                                int i14 = i11 + i13;
                                if (i14 >= textLayoutResult.k().j().length()) {
                                    arrayList2.add(null);
                                } else {
                                    arrayList2.add(c0(semanticsNodeB, textLayoutResult.c(i14)));
                                }
                            }
                            Bundle extras = accessibilityNodeInfo.getExtras();
                            Object[] array = arrayList2.toArray(new RectF[0]);
                            if (array != null) {
                                extras.putParcelableArray(str, (Parcelable[]) array);
                                return;
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                        return;
                    }
                }
                Log.e(LogTag, "Invalid arguments for accessibility character locations");
                return;
            }
            SemanticsConfiguration semanticsConfigurationS2 = semanticsNodeB.s();
            SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
            if (semanticsConfigurationS2.c(semanticsProperties.w()) && bundle != null && kotlin.jvm.internal.t.e(str, ExtraDataTestTagKey) && (str2 = (String) SemanticsConfigurationKt.a(semanticsNodeB.s(), semanticsProperties.w())) != null) {
                accessibilityNodeInfo.getExtras().putCharSequence(str, str2);
            }
        }
    }

    private final boolean o(int i10) {
        if (B(i10)) {
            this.focusedVirtualViewId = Integer.MIN_VALUE;
            this.view.invalidate();
            S(this, i10, 65536, null, null, 12, null);
            return true;
        }
        return false;
    }

    private final int t(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!semanticsConfigurationS.c(semanticsProperties.c()) && semanticsNode.s().c(semanticsProperties.y())) {
            return TextRange.i(((TextRange) semanticsNode.s().f(semanticsProperties.y())).r());
        }
        return this.accessibilityCursorPosition;
    }

    private final int u(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfigurationS = semanticsNode.s();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!semanticsConfigurationS.c(semanticsProperties.c()) && semanticsNode.s().c(semanticsProperties.y())) {
            return TextRange.n(((TextRange) semanticsNode.s().f(semanticsProperties.y())).r());
        }
        return this.accessibilityCursorPosition;
    }

    public final boolean l(boolean z6, int i10, long j6) {
        return m(v().values(), z6, i10, j6);
    }

    @VisibleForTesting
    @NotNull
    public final AccessibilityEvent p(int i10, int i11) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
        kotlin.jvm.internal.t.i(accessibilityEventObtain, "obtain(eventType)");
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName(ClassName);
        accessibilityEventObtain.setPackageName(this.view.getContext().getPackageName());
        accessibilityEventObtain.setSource(this.view, i10);
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = v().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds != null) {
            accessibilityEventObtain.setPassword(AndroidComposeViewAccessibilityDelegateCompat_androidKt.r(semanticsNodeWithAdjustedBounds.b()));
        }
        return accessibilityEventObtain;
    }
}
