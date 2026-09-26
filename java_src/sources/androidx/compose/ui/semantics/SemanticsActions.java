package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class SemanticsActions {
    public static final int $stable = 0;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> Collapse;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> CopyText;

    @NotNull
    private static final SemanticsPropertyKey<List<CustomAccessibilityAction>> CustomActions;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> CutText;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> Dismiss;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> Expand;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<l<List<TextLayoutResult>, Boolean>>> GetTextLayoutResult;

    @NotNull
    public static final SemanticsActions INSTANCE = new SemanticsActions();

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> OnClick;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> OnLongClick;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> PasteText;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> RequestFocus;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<p<Float, Float, Boolean>>> ScrollBy;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<l<Integer, Boolean>>> ScrollToIndex;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<l<Float, Boolean>>> SetProgress;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<q<Integer, Integer, Boolean, Boolean>>> SetSelection;

    @NotNull
    private static final SemanticsPropertyKey<AccessibilityAction<l<AnnotatedString, Boolean>>> SetText;

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> a() {
        return Collapse;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> b() {
        return CopyText;
    }

    @NotNull
    public final SemanticsPropertyKey<List<CustomAccessibilityAction>> c() {
        return CustomActions;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> d() {
        return CutText;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> e() {
        return Dismiss;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> f() {
        return Expand;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<l<List<TextLayoutResult>, Boolean>>> g() {
        return GetTextLayoutResult;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> h() {
        return OnClick;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> i() {
        return OnLongClick;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> j() {
        return PasteText;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<a<Boolean>>> k() {
        return RequestFocus;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<p<Float, Float, Boolean>>> l() {
        return ScrollBy;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<l<Integer, Boolean>>> m() {
        return ScrollToIndex;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<l<Float, Boolean>>> n() {
        return SetProgress;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<q<Integer, Integer, Boolean, Boolean>>> o() {
        return SetSelection;
    }

    @NotNull
    public final SemanticsPropertyKey<AccessibilityAction<l<AnnotatedString, Boolean>>> p() {
        return SetText;
    }

    static {
        SemanticsPropertiesKt$ActionPropertyKey$1 semanticsPropertiesKt$ActionPropertyKey$1 = SemanticsPropertiesKt$ActionPropertyKey$1.INSTANCE;
        GetTextLayoutResult = new SemanticsPropertyKey<>("GetTextLayoutResult", semanticsPropertiesKt$ActionPropertyKey$1);
        OnClick = new SemanticsPropertyKey<>("OnClick", semanticsPropertiesKt$ActionPropertyKey$1);
        OnLongClick = new SemanticsPropertyKey<>("OnLongClick", semanticsPropertiesKt$ActionPropertyKey$1);
        ScrollBy = new SemanticsPropertyKey<>("ScrollBy", semanticsPropertiesKt$ActionPropertyKey$1);
        ScrollToIndex = new SemanticsPropertyKey<>("ScrollToIndex", semanticsPropertiesKt$ActionPropertyKey$1);
        SetProgress = new SemanticsPropertyKey<>("SetProgress", semanticsPropertiesKt$ActionPropertyKey$1);
        SetSelection = new SemanticsPropertyKey<>("SetSelection", semanticsPropertiesKt$ActionPropertyKey$1);
        SetText = new SemanticsPropertyKey<>("SetText", semanticsPropertiesKt$ActionPropertyKey$1);
        CopyText = new SemanticsPropertyKey<>("CopyText", semanticsPropertiesKt$ActionPropertyKey$1);
        CutText = new SemanticsPropertyKey<>("CutText", semanticsPropertiesKt$ActionPropertyKey$1);
        PasteText = new SemanticsPropertyKey<>("PasteText", semanticsPropertiesKt$ActionPropertyKey$1);
        Expand = new SemanticsPropertyKey<>("Expand", semanticsPropertiesKt$ActionPropertyKey$1);
        Collapse = new SemanticsPropertyKey<>("Collapse", semanticsPropertiesKt$ActionPropertyKey$1);
        Dismiss = new SemanticsPropertyKey<>("Dismiss", semanticsPropertiesKt$ActionPropertyKey$1);
        RequestFocus = new SemanticsPropertyKey<>("RequestFocus", semanticsPropertiesKt$ActionPropertyKey$1);
        CustomActions = new SemanticsPropertyKey<>("CustomActions", null, 2, null);
    }

    private SemanticsActions() {
    }
}
