package androidx.core.view.accessibility;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.BuildCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";

    @SuppressLint({"ActionValue"})
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    private static final int BOOLEAN_PROPERTY_IS_HEADING = 2;
    private static final int BOOLEAN_PROPERTY_IS_SHOWING_HINT = 4;
    private static final int BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY = 8;
    private static final String BOOLEAN_PROPERTY_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY";
    private static final int BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE = 1;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH";
    public static final int EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH = 20000;
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY = "android.core.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY";
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    private static final String HINT_TEXT_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY";
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private static final String PANE_TITLE_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY";
    private static final String ROLE_DESCRIPTION_KEY = "AccessibilityNodeInfo.roleDescription";
    private static final String SPANS_ACTION_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY";
    private static final String SPANS_END_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY";
    private static final String SPANS_FLAGS_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY";
    private static final String SPANS_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY";
    private static final String SPANS_START_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY";
    private static final String STATE_DESCRIPTION_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY";
    private static final String TOOLTIP_TEXT_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY";
    private static final String UNIQUE_ID_KEY = "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY";
    private static int sClickableSpanId;
    private final AccessibilityNodeInfo mInfo;

    @RestrictTo
    public int mParentVirtualDescendantId = -1;
    private int mVirtualDescendantId = -1;

    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_CANCEL;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_DROP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_DRAG_START;
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_IME_ENTER;
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_UP;

        @NonNull
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;

        @NonNull
        public static final AccessibilityActionCompat ACTION_SHOW_TEXT_SUGGESTIONS;
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;
        private static final String TAG = "A11yActionCompat";
        final Object mAction;

        @RestrictTo
        protected final AccessibilityViewCommand mCommand;
        private final int mId;
        private final Class<? extends AccessibilityViewCommand.CommandArguments> mViewCommandArgumentClass;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetSelectionArguments.class);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetTextArguments.class);

        public AccessibilityActionCompat(int i10, CharSequence charSequence) {
            this(null, i10, charSequence, null, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
            Object obj2 = this.mAction;
            if (obj2 == null) {
                return accessibilityActionCompat.mAction == null;
            }
            return obj2.equals(accessibilityActionCompat.mAction);
        }

        static {
            int i10 = Build.VERSION.SDK_INT;
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            ACTION_SCROLL_UP = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
            ACTION_PAGE_UP = new AccessibilityActionCompat(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            ACTION_PAGE_DOWN = new AccessibilityActionCompat(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            ACTION_PAGE_LEFT = new AccessibilityActionCompat(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            ACTION_PAGE_RIGHT = new AccessibilityActionCompat(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(i10 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            ACTION_MOVE_WINDOW = new AccessibilityActionCompat(i10 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            ACTION_IME_ENTER = new AccessibilityActionCompat(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
            ACTION_DRAG_START = new AccessibilityActionCompat(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
            ACTION_DRAG_DROP = new AccessibilityActionCompat(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
            ACTION_DRAG_CANCEL = new AccessibilityActionCompat(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
            ACTION_SHOW_TEXT_SUGGESTIONS = new AccessibilityActionCompat(i10 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        }

        @RestrictTo
        public AccessibilityActionCompat(int i10, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i10, charSequence, accessibilityViewCommand, null);
        }

        @RestrictTo
        public AccessibilityActionCompat a(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.mId, charSequence, accessibilityViewCommand, this.mViewCommandArgumentClass);
        }

        public int b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getId();
        }

        public CharSequence c() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getLabel();
        }

        @RestrictTo
        public boolean d(View view, Bundle bundle) {
            if (this.mCommand == null) {
                return false;
            }
            Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.mViewCommandArgumentClass;
            AccessibilityViewCommand.CommandArguments commandArguments = null;
            if (cls != null) {
                try {
                    AccessibilityViewCommand.CommandArguments commandArgumentsNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    try {
                        commandArgumentsNewInstance.a(bundle);
                        commandArguments = commandArgumentsNewInstance;
                    } catch (Exception e) {
                        e = e;
                        commandArguments = commandArgumentsNewInstance;
                        Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.mViewCommandArgumentClass;
                        Log.e(TAG, "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            return this.mCommand.a(view, commandArguments);
        }

        public int hashCode() {
            Object obj = this.mAction;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        private AccessibilityActionCompat(int i10, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i10, charSequence, null, cls);
        }

        AccessibilityActionCompat(Object obj, int i10, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.mId = i10;
            this.mCommand = accessibilityViewCommand;
            if (obj == null) {
                this.mAction = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.mAction = obj;
            }
            this.mViewCommandArgumentClass = cls;
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object mInfo;

        public static CollectionInfoCompat a(int i10, int i11, boolean z6) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z6));
        }

        public static CollectionInfoCompat b(int i10, int i11, boolean z6, int i12) {
            return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z6, i12));
        }

        CollectionInfoCompat(Object obj) {
            this.mInfo = obj;
        }
    }

    public static class CollectionItemInfoCompat {
        final Object mInfo;

        public static CollectionItemInfoCompat a(int i10, int i11, int i12, int i13, boolean z6, boolean z10) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z6, z10));
        }

        CollectionItemInfoCompat(Object obj) {
            this.mInfo = obj;
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        final Object mInfo;

        public static RangeInfoCompat a(int i10, float f, float f6, float f7) {
            return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i10, f, f6, f7));
        }

        RangeInfoCompat(Object obj) {
            this.mInfo = obj;
        }
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.mInfo = (AccessibilityNodeInfo) obj;
    }

    private static String j(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i10) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    public void I0(View view) {
        this.mVirtualDescendantId = -1;
        this.mInfo.setSource(view);
    }

    public AccessibilityNodeInfo Q0() {
        return this.mInfo;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat)) {
            return false;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfoCompat.mInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.mInfo)) {
            return false;
        }
        return this.mVirtualDescendantId == accessibilityNodeInfoCompat.mVirtualDescendantId && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
    }

    public void z0(View view) {
        this.mParentVirtualDescendantId = -1;
        this.mInfo.setParent(view);
    }

    @RequiresApi
    private static class Api33Impl {
        private Api33Impl() {
        }

        @DoNotInline
        public static AccessibilityNodeInfo.ExtraRenderingInfo a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getExtraRenderingInfo();
        }

        @DoNotInline
        public static boolean b(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }

        @DoNotInline
        public static void c(AccessibilityNodeInfo accessibilityNodeInfo, boolean z6) {
            accessibilityNodeInfo.setTextSelectable(z6);
        }
    }

    public static final class TouchDelegateInfoCompat {
        final AccessibilityNodeInfo.TouchDelegateInfo mInfo;

        public TouchDelegateInfoCompat(@NonNull Map<Region, View> map) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mInfo = x.a(map);
            } else {
                this.mInfo = null;
            }
        }
    }

    private boolean B() {
        return !h(SPANS_START_KEY).isEmpty();
    }

    private int C(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                if (clickableSpan.equals(sparseArray.valueAt(i10).get())) {
                    return sparseArray.keyAt(i10);
                }
            }
        }
        int i11 = sClickableSpanId;
        sClickableSpanId = i11 + 1;
        return i11;
    }

    public static AccessibilityNodeInfoCompat R0(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    public static AccessibilityNodeInfoCompat S(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return R0(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.mInfo));
    }

    private void e(ClickableSpan clickableSpan, Spanned spanned, int i10) {
        h(SPANS_START_KEY).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        h(SPANS_END_KEY).add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        h(SPANS_FLAGS_KEY).add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        h(SPANS_ID_KEY).add(Integer.valueOf(i10));
    }

    private void g() {
        this.mInfo.getExtras().remove(SPANS_START_KEY);
        this.mInfo.getExtras().remove(SPANS_END_KEY);
        this.mInfo.getExtras().remove(SPANS_FLAGS_KEY);
        this.mInfo.getExtras().remove(SPANS_ID_KEY);
    }

    private List<Integer> h(String str) {
        ArrayList<Integer> integerArrayList = this.mInfo.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.mInfo.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    @RestrictTo
    public static ClickableSpan[] q(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private SparseArray<WeakReference<ClickableSpan>> w(View view) {
        return (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
    }

    public String A() {
        return this.mInfo.getViewIdResourceName();
    }

    public void A0(View view, int i10) {
        this.mParentVirtualDescendantId = i10;
        this.mInfo.setParent(view, i10);
    }

    public void B0(boolean z6) {
        this.mInfo.setPassword(z6);
    }

    public void C0(RangeInfoCompat rangeInfoCompat) {
        this.mInfo.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.mInfo);
    }

    public boolean D() {
        return this.mInfo.isAccessibilityFocused();
    }

    public void D0(@Nullable CharSequence charSequence) {
        this.mInfo.getExtras().putCharSequence(ROLE_DESCRIPTION_KEY, charSequence);
    }

    public boolean E() {
        return this.mInfo.isCheckable();
    }

    public void E0(boolean z6) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setScreenReaderFocusable(z6);
        } else {
            Y(1, z6);
        }
    }

    public boolean F() {
        return this.mInfo.isChecked();
    }

    public void F0(boolean z6) {
        this.mInfo.setScrollable(z6);
    }

    public boolean G() {
        return this.mInfo.isClickable();
    }

    public void G0(boolean z6) {
        this.mInfo.setSelected(z6);
    }

    public boolean H() {
        return this.mInfo.isEnabled();
    }

    public void H0(boolean z6) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mInfo.setShowingHintText(z6);
        } else {
            Y(4, z6);
        }
    }

    public boolean I() {
        return this.mInfo.isFocusable();
    }

    public boolean J() {
        return this.mInfo.isFocused();
    }

    public void J0(View view, int i10) {
        this.mVirtualDescendantId = i10;
        this.mInfo.setSource(view, i10);
    }

    public boolean K() {
        return this.mInfo.isLongClickable();
    }

    public boolean L() {
        return this.mInfo.isPassword();
    }

    public void L0(CharSequence charSequence) {
        this.mInfo.setText(charSequence);
    }

    public boolean M() {
        return this.mInfo.isScrollable();
    }

    public void M0(int i10, int i11) {
        this.mInfo.setTextSelection(i10, i11);
    }

    public boolean N() {
        return this.mInfo.isSelected();
    }

    public void N0(View view) {
        this.mInfo.setTraversalAfter(view);
    }

    public boolean O() {
        return Build.VERSION.SDK_INT >= 26 ? this.mInfo.isShowingHintText() : l(4);
    }

    public void O0(String str) {
        this.mInfo.setViewIdResourceName(str);
    }

    public boolean P() {
        return this.mInfo.isVisibleToUser();
    }

    public void P0(boolean z6) {
        this.mInfo.setVisibleToUser(z6);
    }

    public boolean T(int i10, Bundle bundle) {
        return this.mInfo.performAction(i10, bundle);
    }

    public void U() {
        this.mInfo.recycle();
    }

    public boolean V(AccessibilityActionCompat accessibilityActionCompat) {
        return this.mInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
    }

    public void X(boolean z6) {
        this.mInfo.setAccessibilityFocused(z6);
    }

    @Deprecated
    public void Z(Rect rect) {
        this.mInfo.setBoundsInParent(rect);
    }

    public void a(int i10) {
        this.mInfo.addAction(i10);
    }

    public void a0(Rect rect) {
        this.mInfo.setBoundsInScreen(rect);
    }

    public void b(AccessibilityActionCompat accessibilityActionCompat) {
        this.mInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
    }

    public void b0(boolean z6) {
        this.mInfo.setCanOpenPopup(z6);
    }

    public void c(View view) {
        this.mInfo.addChild(view);
    }

    public void c0(boolean z6) {
        this.mInfo.setCheckable(z6);
    }

    public void d(View view, int i10) {
        this.mInfo.addChild(view, i10);
    }

    public void d0(boolean z6) {
        this.mInfo.setChecked(z6);
    }

    public void e0(CharSequence charSequence) {
        this.mInfo.setClassName(charSequence);
    }

    @RestrictTo
    public void f(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT < 26) {
            g();
            W(view);
            ClickableSpan[] clickableSpanArrQ = q(charSequence);
            if (clickableSpanArrQ == null || clickableSpanArrQ.length <= 0) {
                return;
            }
            s().putInt(SPANS_ACTION_ID_KEY, androidx.core.R.id.accessibility_action_clickable_span);
            SparseArray<WeakReference<ClickableSpan>> sparseArrayU = u(view);
            for (int i10 = 0; i10 < clickableSpanArrQ.length; i10++) {
                int iC = C(clickableSpanArrQ[i10], sparseArrayU);
                sparseArrayU.put(iC, new WeakReference<>(clickableSpanArrQ[i10]));
                e(clickableSpanArrQ[i10], (Spanned) charSequence, iC);
            }
        }
    }

    public void f0(boolean z6) {
        this.mInfo.setClickable(z6);
    }

    public void g0(Object obj) {
        this.mInfo.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).mInfo);
    }

    public void h0(Object obj) {
        this.mInfo.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).mInfo);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public List<AccessibilityActionCompat> i() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.mInfo.getActionList();
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new AccessibilityActionCompat(actionList.get(i10)));
        }
        return arrayList;
    }

    public void i0(CharSequence charSequence) {
        this.mInfo.setContentDescription(charSequence);
    }

    public void j0(boolean z6) {
        this.mInfo.setContentInvalid(z6);
    }

    @Deprecated
    public int k() {
        return this.mInfo.getActions();
    }

    public void k0(boolean z6) {
        this.mInfo.setDismissable(z6);
    }

    public void l0(boolean z6) {
        this.mInfo.setEditable(z6);
    }

    @Deprecated
    public void m(Rect rect) {
        this.mInfo.getBoundsInParent(rect);
    }

    public void m0(boolean z6) {
        this.mInfo.setEnabled(z6);
    }

    public void n(Rect rect) {
        this.mInfo.getBoundsInScreen(rect);
    }

    public void n0(CharSequence charSequence) {
        this.mInfo.setError(charSequence);
    }

    public int o() {
        return this.mInfo.getChildCount();
    }

    public void o0(boolean z6) {
        this.mInfo.setFocusable(z6);
    }

    public CharSequence p() {
        return this.mInfo.getClassName();
    }

    public void p0(boolean z6) {
        this.mInfo.setFocused(z6);
    }

    public void q0(boolean z6) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setHeading(z6);
        } else {
            Y(2, z6);
        }
    }

    public CharSequence r() {
        return this.mInfo.getContentDescription();
    }

    public void r0(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mInfo.setHintText(charSequence);
        } else {
            this.mInfo.getExtras().putCharSequence(HINT_TEXT_KEY, charSequence);
        }
    }

    public Bundle s() {
        return this.mInfo.getExtras();
    }

    public void s0(View view) {
        this.mInfo.setLabelFor(view);
    }

    public int t() {
        return this.mInfo.getMovementGranularities();
    }

    public void t0(int i10) {
        this.mInfo.setLiveRegion(i10);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m(rect);
        sb.append("; boundsInParent: " + rect);
        n(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(v());
        sb.append("; className: ");
        sb.append(p());
        sb.append("; text: ");
        sb.append(y());
        sb.append("; contentDescription: ");
        sb.append(r());
        sb.append("; viewId: ");
        sb.append(A());
        sb.append("; uniqueId: ");
        sb.append(z());
        sb.append("; checkable: ");
        sb.append(E());
        sb.append("; checked: ");
        sb.append(F());
        sb.append("; focusable: ");
        sb.append(I());
        sb.append("; focused: ");
        sb.append(J());
        sb.append("; selected: ");
        sb.append(N());
        sb.append("; clickable: ");
        sb.append(G());
        sb.append("; longClickable: ");
        sb.append(K());
        sb.append("; enabled: ");
        sb.append(H());
        sb.append("; password: ");
        sb.append(L());
        sb.append("; scrollable: " + M());
        sb.append("; [");
        List<AccessibilityActionCompat> listI = i();
        for (int i10 = 0; i10 < listI.size(); i10++) {
            AccessibilityActionCompat accessibilityActionCompat = listI.get(i10);
            String strJ = j(accessibilityActionCompat.b());
            if (strJ.equals("ACTION_UNKNOWN") && accessibilityActionCompat.c() != null) {
                strJ = accessibilityActionCompat.c().toString();
            }
            sb.append(strJ);
            if (i10 != listI.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void u0(boolean z6) {
        this.mInfo.setLongClickable(z6);
    }

    public CharSequence v() {
        return this.mInfo.getPackageName();
    }

    public void v0(int i10) {
        this.mInfo.setMaxTextLength(i10);
    }

    public void w0(int i10) {
        this.mInfo.setMovementGranularities(i10);
    }

    public void x0(CharSequence charSequence) {
        this.mInfo.setPackageName(charSequence);
    }

    public void y0(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setPaneTitle(charSequence);
        } else {
            this.mInfo.getExtras().putCharSequence(PANE_TITLE_KEY, charSequence);
        }
    }

    private AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.mInfo = accessibilityNodeInfo;
    }

    public static AccessibilityNodeInfoCompat Q() {
        return R0(AccessibilityNodeInfo.obtain());
    }

    public static AccessibilityNodeInfoCompat R(View view) {
        return R0(AccessibilityNodeInfo.obtain(view));
    }

    private void W(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayW = w(view);
        if (sparseArrayW != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < sparseArrayW.size(); i10++) {
                if (sparseArrayW.valueAt(i10).get() == null) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                sparseArrayW.remove(((Integer) arrayList.get(i11)).intValue());
            }
        }
    }

    private void Y(int i10, boolean z6) {
        Bundle bundleS = s();
        if (bundleS != null) {
            int i11 = bundleS.getInt(BOOLEAN_PROPERTY_KEY, 0) & (~i10);
            if (!z6) {
                i10 = 0;
            }
            bundleS.putInt(BOOLEAN_PROPERTY_KEY, i10 | i11);
        }
    }

    private boolean l(int i10) {
        Bundle bundleS = s();
        if (bundleS == null || (bundleS.getInt(BOOLEAN_PROPERTY_KEY, 0) & i10) != i10) {
            return false;
        }
        return true;
    }

    private SparseArray<WeakReference<ClickableSpan>> u(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayW = w(view);
        if (sparseArrayW == null) {
            SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
            view.setTag(androidx.core.R.id.tag_accessibility_clickable_spans, sparseArray);
            return sparseArray;
        }
        return sparseArrayW;
    }

    public void K0(@Nullable CharSequence charSequence) {
        if (BuildCompat.b()) {
            this.mInfo.setStateDescription(charSequence);
        } else {
            this.mInfo.getExtras().putCharSequence(STATE_DESCRIPTION_KEY, charSequence);
        }
    }

    @Nullable
    public CharSequence x() {
        if (BuildCompat.b()) {
            return this.mInfo.getStateDescription();
        }
        return this.mInfo.getExtras().getCharSequence(STATE_DESCRIPTION_KEY);
    }

    public CharSequence y() {
        if (B()) {
            List<Integer> listH = h(SPANS_START_KEY);
            List<Integer> listH2 = h(SPANS_END_KEY);
            List<Integer> listH3 = h(SPANS_FLAGS_KEY);
            List<Integer> listH4 = h(SPANS_ID_KEY);
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.mInfo.getText(), 0, this.mInfo.getText().length()));
            for (int i10 = 0; i10 < listH.size(); i10++) {
                spannableString.setSpan(new AccessibilityClickableSpanCompat(listH4.get(i10).intValue(), this, s().getInt(SPANS_ACTION_ID_KEY)), listH.get(i10).intValue(), listH2.get(i10).intValue(), listH3.get(i10).intValue());
            }
            return spannableString;
        }
        return this.mInfo.getText();
    }

    @Nullable
    @OptIn
    public String z() {
        if (BuildCompat.c()) {
            return this.mInfo.getUniqueId();
        }
        return this.mInfo.getExtras().getString(UNIQUE_ID_KEY);
    }
}
