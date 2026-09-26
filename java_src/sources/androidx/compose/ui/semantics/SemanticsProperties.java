package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import e8.l;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class SemanticsProperties {
    public static final int $stable = 0;

    @NotNull
    public static final SemanticsProperties INSTANCE = new SemanticsProperties();

    @NotNull
    private static final SemanticsPropertyKey<List<String>> ContentDescription = new SemanticsPropertyKey<>("ContentDescription", SemanticsProperties$ContentDescription$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<String> StateDescription = new SemanticsPropertyKey<>("StateDescription", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<ProgressBarRangeInfo> ProgressBarRangeInfo = new SemanticsPropertyKey<>("ProgressBarRangeInfo", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<String> PaneTitle = new SemanticsPropertyKey<>("PaneTitle", SemanticsProperties$PaneTitle$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<l0> SelectableGroup = new SemanticsPropertyKey<>("SelectableGroup", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<CollectionInfo> CollectionInfo = new SemanticsPropertyKey<>("CollectionInfo", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<CollectionItemInfo> CollectionItemInfo = new SemanticsPropertyKey<>("CollectionItemInfo", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l0> Heading = new SemanticsPropertyKey<>("Heading", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l0> Disabled = new SemanticsPropertyKey<>("Disabled", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<LiveRegionMode> LiveRegion = new SemanticsPropertyKey<>("LiveRegion", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<Boolean> Focused = new SemanticsPropertyKey<>("Focused", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l0> InvisibleToUser = new SemanticsPropertyKey<>("InvisibleToUser", SemanticsProperties$InvisibleToUser$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<ScrollAxisRange> HorizontalScrollAxisRange = new SemanticsPropertyKey<>("HorizontalScrollAxisRange", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<ScrollAxisRange> VerticalScrollAxisRange = new SemanticsPropertyKey<>("VerticalScrollAxisRange", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l0> IsPopup = new SemanticsPropertyKey<>("IsPopup", SemanticsProperties$IsPopup$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<l0> IsDialog = new SemanticsPropertyKey<>("IsDialog", SemanticsProperties$IsDialog$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<Role> Role = new SemanticsPropertyKey<>("Role", SemanticsProperties$Role$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<String> TestTag = new SemanticsPropertyKey<>("TestTag", SemanticsProperties$TestTag$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<List<AnnotatedString>> Text = new SemanticsPropertyKey<>("Text", SemanticsProperties$Text$1.INSTANCE);

    @NotNull
    private static final SemanticsPropertyKey<AnnotatedString> EditableText = new SemanticsPropertyKey<>("EditableText", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<TextRange> TextSelectionRange = new SemanticsPropertyKey<>("TextSelectionRange", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<ImeAction> ImeAction = new SemanticsPropertyKey<>("ImeAction", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<Boolean> Selected = new SemanticsPropertyKey<>("Selected", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<ToggleableState> ToggleableState = new SemanticsPropertyKey<>("ToggleableState", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l0> Password = new SemanticsPropertyKey<>("Password", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<String> Error = new SemanticsPropertyKey<>("Error", null, 2, null);

    @NotNull
    private static final SemanticsPropertyKey<l<Object, Integer>> IndexForKey = new SemanticsPropertyKey<>("IndexForKey", null, 2, null);

    @NotNull
    public final SemanticsPropertyKey<ScrollAxisRange> A() {
        return VerticalScrollAxisRange;
    }

    @NotNull
    public final SemanticsPropertyKey<CollectionInfo> a() {
        return CollectionInfo;
    }

    @NotNull
    public final SemanticsPropertyKey<CollectionItemInfo> b() {
        return CollectionItemInfo;
    }

    @NotNull
    public final SemanticsPropertyKey<List<String>> c() {
        return ContentDescription;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> d() {
        return Disabled;
    }

    @NotNull
    public final SemanticsPropertyKey<AnnotatedString> e() {
        return EditableText;
    }

    @NotNull
    public final SemanticsPropertyKey<String> f() {
        return Error;
    }

    @NotNull
    public final SemanticsPropertyKey<Boolean> g() {
        return Focused;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> h() {
        return Heading;
    }

    @NotNull
    public final SemanticsPropertyKey<ScrollAxisRange> i() {
        return HorizontalScrollAxisRange;
    }

    @NotNull
    public final SemanticsPropertyKey<ImeAction> j() {
        return ImeAction;
    }

    @NotNull
    public final SemanticsPropertyKey<l<Object, Integer>> k() {
        return IndexForKey;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> l() {
        return InvisibleToUser;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> m() {
        return IsDialog;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> n() {
        return IsPopup;
    }

    @NotNull
    public final SemanticsPropertyKey<LiveRegionMode> o() {
        return LiveRegion;
    }

    @NotNull
    public final SemanticsPropertyKey<String> p() {
        return PaneTitle;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> q() {
        return Password;
    }

    @NotNull
    public final SemanticsPropertyKey<ProgressBarRangeInfo> r() {
        return ProgressBarRangeInfo;
    }

    @NotNull
    public final SemanticsPropertyKey<Role> s() {
        return Role;
    }

    @NotNull
    public final SemanticsPropertyKey<l0> t() {
        return SelectableGroup;
    }

    @NotNull
    public final SemanticsPropertyKey<Boolean> u() {
        return Selected;
    }

    @NotNull
    public final SemanticsPropertyKey<String> v() {
        return StateDescription;
    }

    @NotNull
    public final SemanticsPropertyKey<String> w() {
        return TestTag;
    }

    @NotNull
    public final SemanticsPropertyKey<List<AnnotatedString>> x() {
        return Text;
    }

    @NotNull
    public final SemanticsPropertyKey<TextRange> y() {
        return TextSelectionRange;
    }

    @NotNull
    public final SemanticsPropertyKey<ToggleableState> z() {
        return ToggleableState;
    }

    private SemanticsProperties() {
    }
}
