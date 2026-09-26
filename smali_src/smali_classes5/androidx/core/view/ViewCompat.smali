.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateConstructorForUtilityClass"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$Api20Impl;,
        Landroidx/core/view/ViewCompat$Api28Impl;,
        Landroidx/core/view/ViewCompat$Api16Impl;,
        Landroidx/core/view/ViewCompat$Api17Impl;,
        Landroidx/core/view/ViewCompat$Api24Impl;,
        Landroidx/core/view/ViewCompat$Api15Impl;,
        Landroidx/core/view/ViewCompat$Api19Impl;,
        Landroidx/core/view/ViewCompat$Api18Impl;,
        Landroidx/core/view/ViewCompat$Api26Impl;,
        Landroidx/core/view/ViewCompat$Api30Impl;,
        Landroidx/core/view/ViewCompat$Api29Impl;,
        Landroidx/core/view/ViewCompat$Api23Impl;,
        Landroidx/core/view/ViewCompat$Api21Impl;,
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Landroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;,
        Landroidx/core/view/ViewCompat$Api31Impl;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    sput-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 15
    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    new-array v2, v2, [I

    .line 19
    .line 20
    sget v3, Landroidx/core/R$id;->accessibility_custom_action_0:I

    .line 21
    .line 22
    aput v3, v2, v0

    .line 23
    .line 24
    sget v0, Landroidx/core/R$id;->accessibility_custom_action_1:I

    .line 25
    .line 26
    aput v0, v2, v1

    .line 27
    const/4 v0, 0x2

    .line 28
    .line 29
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_2:I

    .line 30
    .line 31
    aput v1, v2, v0

    .line 32
    const/4 v0, 0x3

    .line 33
    .line 34
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_3:I

    .line 35
    .line 36
    aput v1, v2, v0

    .line 37
    const/4 v0, 0x4

    .line 38
    .line 39
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_4:I

    .line 40
    .line 41
    aput v1, v2, v0

    .line 42
    const/4 v0, 0x5

    .line 43
    .line 44
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_5:I

    .line 45
    .line 46
    aput v1, v2, v0

    .line 47
    const/4 v0, 0x6

    .line 48
    .line 49
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_6:I

    .line 50
    .line 51
    aput v1, v2, v0

    .line 52
    const/4 v0, 0x7

    .line 53
    .line 54
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_7:I

    .line 55
    .line 56
    aput v1, v2, v0

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_8:I

    .line 61
    .line 62
    aput v1, v2, v0

    .line 63
    .line 64
    const/16 v0, 0x9

    .line 65
    .line 66
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_9:I

    .line 67
    .line 68
    aput v1, v2, v0

    .line 69
    .line 70
    const/16 v0, 0xa

    .line 71
    .line 72
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_10:I

    .line 73
    .line 74
    aput v1, v2, v0

    .line 75
    .line 76
    const/16 v0, 0xb

    .line 77
    .line 78
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_11:I

    .line 79
    .line 80
    aput v1, v2, v0

    .line 81
    .line 82
    const/16 v0, 0xc

    .line 83
    .line 84
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_12:I

    .line 85
    .line 86
    aput v1, v2, v0

    .line 87
    .line 88
    const/16 v0, 0xd

    .line 89
    .line 90
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_13:I

    .line 91
    .line 92
    aput v1, v2, v0

    .line 93
    .line 94
    const/16 v0, 0xe

    .line 95
    .line 96
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_14:I

    .line 97
    .line 98
    aput v1, v2, v0

    .line 99
    .line 100
    const/16 v0, 0xf

    .line 101
    .line 102
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_15:I

    .line 103
    .line 104
    aput v1, v2, v0

    .line 105
    .line 106
    const/16 v0, 0x10

    .line 107
    .line 108
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_16:I

    .line 109
    .line 110
    aput v1, v2, v0

    .line 111
    .line 112
    const/16 v0, 0x11

    .line 113
    .line 114
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_17:I

    .line 115
    .line 116
    aput v1, v2, v0

    .line 117
    .line 118
    const/16 v0, 0x12

    .line 119
    .line 120
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_18:I

    .line 121
    .line 122
    aput v1, v2, v0

    .line 123
    .line 124
    const/16 v0, 0x13

    .line 125
    .line 126
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_19:I

    .line 127
    .line 128
    aput v1, v2, v0

    .line 129
    .line 130
    const/16 v0, 0x14

    .line 131
    .line 132
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_20:I

    .line 133
    .line 134
    aput v1, v2, v0

    .line 135
    .line 136
    const/16 v0, 0x15

    .line 137
    .line 138
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_21:I

    .line 139
    .line 140
    aput v1, v2, v0

    .line 141
    .line 142
    const/16 v0, 0x16

    .line 143
    .line 144
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_22:I

    .line 145
    .line 146
    aput v1, v2, v0

    .line 147
    .line 148
    const/16 v0, 0x17

    .line 149
    .line 150
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_23:I

    .line 151
    .line 152
    aput v1, v2, v0

    .line 153
    .line 154
    const/16 v0, 0x18

    .line 155
    .line 156
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_24:I

    .line 157
    .line 158
    aput v1, v2, v0

    .line 159
    .line 160
    const/16 v0, 0x19

    .line 161
    .line 162
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_25:I

    .line 163
    .line 164
    aput v1, v2, v0

    .line 165
    .line 166
    const/16 v0, 0x1a

    .line 167
    .line 168
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_26:I

    .line 169
    .line 170
    aput v1, v2, v0

    .line 171
    .line 172
    const/16 v0, 0x1b

    .line 173
    .line 174
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_27:I

    .line 175
    .line 176
    aput v1, v2, v0

    .line 177
    .line 178
    const/16 v0, 0x1c

    .line 179
    .line 180
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_28:I

    .line 181
    .line 182
    aput v1, v2, v0

    .line 183
    .line 184
    const/16 v0, 0x1d

    .line 185
    .line 186
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_29:I

    .line 187
    .line 188
    aput v1, v2, v0

    .line 189
    .line 190
    const/16 v0, 0x1e

    .line 191
    .line 192
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_30:I

    .line 193
    .line 194
    aput v1, v2, v0

    .line 195
    .line 196
    const/16 v0, 0x1f

    .line 197
    .line 198
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_31:I

    .line 199
    .line 200
    aput v1, v2, v0

    .line 201
    .line 202
    sput-object v2, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 203
    .line 204
    new-instance v0, Landroidx/core/view/u;

    .line 205
    .line 206
    .line 207
    invoke-direct {v0}, Landroidx/core/view/u;-><init>()V

    .line 208
    .line 209
    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 210
    .line 211
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 212
    .line 213
    .line 214
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    .line 215
    .line 216
    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 217
    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static A(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->b(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static A0(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    return-void
.end method

.method public static B(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->c(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static B0(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api18Impl;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public static C(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->b(Landroid/view/View;)I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static C0(Landroid/view/View;F)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->s(Landroid/view/View;F)V

    .line 4
    return-void
.end method

.method public static D(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->d(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static D0(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 4
    return-void
.end method

.method public static E(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->d(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static E0(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->r(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static F(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->e(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static F0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->s(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static G(Landroid/view/View;)[Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api31Impl;->a(Landroid/view/View;)[Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    check-cast p0, [Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public static G0(Landroid/view/View;I)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->l(Landroid/view/View;I)V

    .line 10
    :cond_0
    return-void
.end method

.method public static H(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->e(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static H0(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->i(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 4
    return-void
.end method

.method public static I(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->f(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static I0(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    return-void
.end method

.method public static J(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->f(Landroid/view/View;)Landroid/view/ViewParent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static J0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->j(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static K(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->a(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static K0(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->t(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static L(Landroid/view/View;)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static L0(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/OnApplyWindowInsetsListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->u(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 4
    return-void
.end method

.method public static M(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->d1()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->f(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/CharSequence;

    .line 11
    return-object p0
.end method

.method public static M0(Landroid/view/View;IIII)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api17Impl;->k(Landroid/view/View;IIII)V

    .line 4
    return-void
.end method

.method public static N(Landroid/view/View;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->k(Landroid/view/View;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static N0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 4
    return-void
.end method

.method public static O(Landroid/view/View;)F
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->l(Landroid/view/View;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static O0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 4
    return-void
.end method

.method public static P(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->g(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static P0(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/PointerIconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/view/PointerIconCompat;->a()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, Landroidx/core/view/t;->a(Ljava/lang/Object;)Landroid/view/PointerIcon;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 22
    :cond_1
    return-void
.end method

.method public static Q(Landroid/view/View;)F
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->m(Landroid/view/View;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static Q0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 4
    return-void
.end method

.method public static R(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static R0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 4
    return-void
.end method

.method public static S(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api15Impl;->a(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static S0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 4
    return-void
.end method

.method public static T(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->h(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static T0(Landroid/view/View;Z)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->t0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public static U(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->i(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static U0(Landroid/view/View;II)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api23Impl;->d(Landroid/view/View;II)V

    .line 4
    return-void
.end method

.method public static V(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->b()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->f(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static V0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->d1()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public static W(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->b(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static W0(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static X(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->c(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static X0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    return-void
.end method

.method public static Y(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->p(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static Y0(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    return-void
.end method

.method public static Z(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->g(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static Z0(Landroid/view/View;F)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->w(Landroid/view/View;F)V

    .line 4
    return-void
.end method

.method public static synthetic a(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->b0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->t0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->f(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method private static a1(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->B(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    move-object v1, v0

    .line 20
    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->B(Landroid/view/View;)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x4

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    const/4 v0, 0x2

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return-void
.end method

.method private static b()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/ViewCompat$4;

    .line 3
    .line 4
    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    .line 5
    .line 6
    const-class v2, Ljava/lang/Boolean;

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;I)V

    .line 12
    return-object v0
.end method

.method private static synthetic b0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static b1(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->d(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 4
    return-void
.end method

.method public static c(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityViewCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->t(Landroid/view/View;Ljava/lang/CharSequence;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->d(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 16
    :cond_0
    return v0
.end method

.method static c0(Landroid/view/View;I)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "accessibility"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->q(Landroid/view/View;)I

    .line 44
    move-result v2

    .line 45
    .line 46
    const/16 v3, 0x20

    .line 47
    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    if-ne p1, v3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    :try_start_0
    invoke-static {v0, p0, p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_3

    .line 102
    :catch_0
    move-exception p1

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string p0, " does not fully implement ViewParent"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    const-string v0, "ViewCompat"

    .line 134
    .line 135
    .line 136
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    goto :goto_3

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    goto :goto_2

    .line 145
    .line 146
    :cond_5
    const/16 v3, 0x800

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->a1(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 172
    :cond_7
    :goto_3
    return-void
.end method

.method public static c1(Landroid/view/View;F)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->x(Landroid/view/View;F)V

    .line 4
    return-void
.end method

.method private static d(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->l(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->o0(ILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->c0(Landroid/view/View;I)V

    .line 22
    return-void
.end method

.method public static d0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4
    return-void
.end method

.method private static d1()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/ViewCompat$3;

    .line 3
    .line 4
    sget v1, Landroidx/core/R$id;->tag_state_description:I

    .line 5
    .line 6
    const/16 v2, 0x40

    .line 7
    .line 8
    const/16 v3, 0x1e

    .line 9
    .line 10
    const-class v4, Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    .line 14
    return-object v0
.end method

.method public static e(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 10
    .line 11
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1
    return-object v0
.end method

.method public static e0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4
    return-void
.end method

.method public static e1(Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->z(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static f(Landroid/view/View;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->x()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
.end method

.method public static f1(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->e1(Landroid/view/View;)V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Landroid/view/View;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g0(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->Q0()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    return-void
.end method

.method public static h(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->b(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static h0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/ViewCompat$2;

    .line 3
    .line 4
    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    const-class v4, Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;II)V

    .line 14
    return-object v0
.end method

.method public static i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->x()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
.end method

.method public static i0(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static j(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->a(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static j0(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    const-string v1, "ViewCompat"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "performReceiveContent: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, ", view="

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "["

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "]"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v1, 0x1f

    .line 67
    .line 68
    if-lt v0, v1, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api31Impl;->b(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    .line 75
    :cond_1
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Landroidx/core/view/OnReceiveContentListener;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p0, p1}, Landroidx/core/view/OnReceiveContentListener;->a(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    if-nez p1, :cond_2

    .line 90
    const/4 p0, 0x0

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 99
    move-result-object p0

    .line 100
    :goto_0
    return-object p0

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method static k(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->a(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->f(Landroid/view/KeyEvent;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static k0(Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->k(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method static l(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 15
    return-void
.end method

.method public static l0(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static m()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->a()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static m0(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api16Impl;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 4
    return-void
.end method

.method public static n(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    instance-of v0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_1
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 23
    return-object v0
.end method

.method public static n0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->o0(ILandroid/view/View;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->c0(Landroid/view/View;I)V

    .line 8
    return-void
.end method

.method private static o(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->p(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static o0(ILandroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ne v1, p0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method private static p(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 14
    .line 15
    const-string v3, "mAccessibilityDelegate"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :catchall_0
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 28
    return-object v1

    .line 29
    .line 30
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    return-object p0

    .line 42
    :cond_2
    return-object v1

    .line 43
    .line 44
    :catchall_1
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 45
    return-object v1
.end method

.method public static p0(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/accessibility/AccessibilityViewCommand;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b()I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->n0(Landroid/view/View;I)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->a(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->d(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 20
    :goto_0
    return-void
.end method

.method public static q(Landroid/view/View;)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->a(Landroid/view/View;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static q0(Landroid/view/View;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->c(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static r(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->h0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->f(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/CharSequence;

    .line 11
    return-object p0
.end method

.method public static r0(III)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static s(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method

.method public static s0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "ContextFirst"
            }
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat$Api29Impl;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 10
    :cond_0
    return-void
.end method

.method private static t(Landroid/view/View;Ljava/lang/CharSequence;)I
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->c()Ljava/lang/CharSequence;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b()I

    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, -0x1

    .line 44
    move v2, p1

    .line 45
    move v1, v0

    .line 46
    .line 47
    :goto_1
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 48
    array-length v4, v3

    .line 49
    .line 50
    if-ge v1, v4, :cond_5

    .line 51
    .line 52
    if-ne v2, p1, :cond_5

    .line 53
    .line 54
    aget v3, v3, v1

    .line 55
    const/4 v4, 0x1

    .line 56
    move v5, v0

    .line 57
    move v6, v4

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 61
    move-result v7

    .line 62
    .line 63
    if-ge v5, v7, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v7

    .line 68
    .line 69
    check-cast v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b()I

    .line 73
    move-result v7

    .line 74
    .line 75
    if-eq v7, v3, :cond_2

    .line 76
    move v7, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    move v7, v0

    .line 79
    :goto_3
    and-int/2addr v6, v7

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_3
    if-eqz v6, :cond_4

    .line 85
    move v2, v3

    .line 86
    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    return v2
.end method

.method private static t0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    .line 3
    .line 4
    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    .line 5
    .line 6
    const-class v2, Ljava/lang/Boolean;

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;I)V

    .line 12
    return-object v0
.end method

.method public static u(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/AccessibilityDelegateCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 16
    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 27
    return-void
.end method

.method public static v(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static v0(Landroid/view/View;Z)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->b()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public static w(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static w0(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->f(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static x(Landroid/view/View;)Landroid/view/Display;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->b(Landroid/view/View;)Landroid/view/Display;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static x0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/view/ViewCompat;->h0()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->a(Landroid/view/View;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->d(Landroid/view/View;)V

    .line 21
    :goto_0
    return-void
.end method

.method public static y(Landroid/view/View;)F
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->i(Landroid/view/View;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static y0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method private static z(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    sget-object p0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 10
    return-object p0
.end method

.method public static z0(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method
