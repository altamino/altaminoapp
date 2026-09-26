.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$MyNodeProvider;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api28Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeViewAccessibilityDelegateCompat.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2636:1\n1741#2,3:2637\n32#3,6:2640\n32#3,6:2646\n49#3,6:2652\n49#3,6:2658\n32#3,6:2665\n32#3,6:2675\n32#3,6:2681\n32#3,6:2687\n32#3,6:2693\n1#4:2664\n37#5:2671\n36#5,3:2672\n*S KotlinDebug\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n*L\n310#1:2637,3\n434#1:2640,6\n887#1:2646,6\n898#1:2652,6\n905#1:2658,6\n1377#1:2665,6\n1993#1:2675,6\n1997#1:2681,6\n2156#1:2687,6\n2174#1:2693,6\n1431#1:2671\n1431#1:2672,3\n*E\n"
.end annotation


# static fields
.field private static final AccessibilityActionsResourceIds:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final AccessibilityCursorPositionUndefined:I = -0x1

.field public static final AccessibilitySliderStepsCount:I = 0x14

.field public static final ClassName:Ljava/lang/String; = "android.view.View"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ExtraDataTestTagKey:Ljava/lang/String; = "androidx.compose.ui.semantics.testTag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final InvalidId:I = -0x80000000

.field public static final LogTag:Ljava/lang/String; = "AccessibilityDelegate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ParcelSafeTextLength:I = 0x186a0

.field public static final SendRecurringAccessibilityEventsIntervalMillis:J = 0x64L

.field public static final TextTraversedEventTimeoutMillis:J = 0x3e8L


# instance fields
.field private accessibilityCursorPosition:I

.field private accessibilityForceEnabledForTesting:Z

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private actionIdToLabel:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final boundsUpdateChannel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private checkingForSemanticsChanges:Z

.field private currentSemanticsNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentSemanticsNodesInvalidated:Z

.field private focusedVirtualViewId:I

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hoveredVirtualViewId:I

.field private labelToActionId:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private paneDisplayed:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previousSemanticsNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousTraversedNode:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scrollObservationScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final semanticsChangeChecker:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendScrollEventIfNeededLambda:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroidx/compose/ui/platform/AndroidComposeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_10:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_11:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_12:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_13:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_14:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_15:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_16:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_17:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_18:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_19:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_20:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_21:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_22:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_23:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_24:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_25:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_26:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_27:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_28:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_29:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_30:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_31:I

    aput v2, v0, v1

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    const/high16 v0, -0x80000000

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "accessibility"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 31
    .line 32
    new-instance v1, Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 44
    .line 45
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$MyNodeProvider;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$MyNodeProvider;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 54
    .line 55
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 56
    .line 57
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 61
    .line 62
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 63
    .line 64
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 70
    const/4 v0, -0x1

    .line 71
    .line 72
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 73
    .line 74
    new-instance v1, Landroidx/collection/ArraySet;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 78
    .line 79
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 80
    const/4 v1, 0x6

    .line 81
    const/4 v2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2, v2, v1, v2}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/d;

    .line 88
    const/4 v0, 0x1

    .line 89
    .line 90
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    .line 97
    .line 98
    new-instance v0, Landroidx/collection/ArraySet;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 102
    .line 103
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    .line 104
    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .line 110
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 111
    .line 112
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    .line 128
    .line 129
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 130
    .line 131
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$1;

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 138
    .line 139
    new-instance p1, Landroidx/compose/ui/platform/h;

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/h;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 143
    .line 144
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 145
    .line 146
    new-instance p1, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 152
    .line 153
    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1;

    .line 154
    .line 155
    .line 156
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 157
    .line 158
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendScrollEventIfNeededLambda:Le8/l;

    .line 159
    return-void

    .line 160
    .line 161
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 162
    .line 163
    const-string v0, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 164
    .line 165
    .line 166
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p1
.end method

.method private final A()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method private final B(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final C(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method private final D(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/d;

    .line 11
    .line 12
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    return-void
.end method

.method private final G(IILandroid/os/Bundle;)Z
    .locals 12

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_13

    :cond_0
    const/16 v2, 0x40

    if-eq p2, v2, :cond_45

    const/16 v2, 0x80

    if-eq p2, v2, :cond_44

    const/16 v2, 0x100

    const/4 v3, 0x1

    if-eq p2, v2, :cond_41

    const/16 v4, 0x200

    if-eq p2, v4, :cond_41

    const/16 v2, 0x4000

    if-eq p2, v2, :cond_3f

    const/high16 v2, 0x20000

    if-eq p2, v2, :cond_3b

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-eq p2, v3, :cond_39

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eq p2, v2, :cond_37

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    iget-object p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 3
    invoke-virtual {p3, p1}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/SparseArrayCompat;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    sget-object p3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_5

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 8
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->a()Le8/a;

    move-result-object p1

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :sswitch_0
    if-eqz p3, :cond_7

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p2

    check-cast p2, Le8/l;

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 13
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_7
    :goto_2
    return v1

    .line 14
    :sswitch_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    if-eqz p2, :cond_8

    sget-object p3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsActions;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_3

    :cond_8
    move-object p2, v4

    :goto_3
    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    if-eqz p2, :cond_8

    sget-object p3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsActions;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_3

    :cond_a
    :goto_4
    if-nez p1, :cond_b

    return v1

    .line 18
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/ui/layout/LayoutInfo;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p3

    invoke-static {p3}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p3

    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutInfo;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    goto :goto_5

    :cond_c
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    move-result-wide v4

    .line 21
    :goto_5
    invoke-virtual {p3, v4, v5}, Landroidx/compose/ui/geometry/Rect;->t(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p3

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->n()J

    move-result-wide v4

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->q()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/RectKt;->b(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    .line 24
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 26
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {p1, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 27
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->j()F

    move-result v5

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->j()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->k()F

    move-result v6

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->k()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I(FF)F

    move-result v5

    if-eqz v4, :cond_d

    .line 28
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    move-result v4

    if-ne v4, v3, :cond_d

    neg-float v5, v5

    .line 29
    :cond_d
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->g(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_e

    neg-float v5, v5

    .line 30
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->m()F

    move-result v0

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->m()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->e()F

    move-result v2

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Rect;->e()F

    move-result p3

    sub-float/2addr v2, p3

    invoke-static {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->I(FF)F

    move-result p3

    if-eqz p1, :cond_f

    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    move-result p1

    if-ne p1, v3, :cond_f

    neg-float p3, p3

    :cond_f
    if-eqz p2, :cond_10

    .line 32
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/p;

    if-eqz p1, :cond_10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_10
    return v1

    :sswitch_2
    if-eqz p3, :cond_11

    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_13

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/l;

    if-eqz p1, :cond_13

    new-instance p2, Landroidx/compose/ui/text/AnnotatedString;

    if-nez v4, :cond_12

    const-string v4, ""

    :cond_12
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_13
    return v1

    .line 36
    :sswitch_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 37
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_14

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_14
    return v1

    .line 40
    :sswitch_4
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 41
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_15

    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_15
    return v1

    .line 44
    :sswitch_5
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 45
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 46
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_16

    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_16
    return v1

    .line 48
    :sswitch_6
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 49
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_17

    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_17
    return v1

    .line 52
    :sswitch_7
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 53
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_18

    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_18
    return v1

    :pswitch_0
    :sswitch_8
    const/16 p1, 0x1000

    if-ne p2, p1, :cond_19

    move p1, v3

    goto :goto_6

    :cond_19
    move p1, v1

    :goto_6
    const/16 p3, 0x2000

    if-ne p2, p3, :cond_1a

    move p3, v3

    goto :goto_7

    :cond_1a
    move p3, v1

    :goto_7
    const v2, 0x1020039

    if-ne p2, v2, :cond_1b

    move v2, v3

    goto :goto_8

    :cond_1b
    move v2, v1

    :goto_8
    const v4, 0x102003b

    if-ne p2, v4, :cond_1c

    move v4, v3

    goto :goto_9

    :cond_1c
    move v4, v1

    :goto_9
    const v5, 0x1020038

    if-ne p2, v5, :cond_1d

    move v5, v3

    goto :goto_a

    :cond_1d
    move v5, v1

    :goto_a
    const v6, 0x102003a

    if-ne p2, v6, :cond_1e

    move p2, v3

    goto :goto_b

    :cond_1e
    move p2, v1

    :goto_b
    if-nez v2, :cond_20

    if-nez v4, :cond_20

    if-nez p1, :cond_20

    if-eqz p3, :cond_1f

    goto :goto_c

    :cond_1f
    move v6, v1

    goto :goto_d

    :cond_20
    :goto_c
    move v6, v3

    :goto_d
    if-nez v5, :cond_22

    if-nez p2, :cond_22

    if-nez p1, :cond_22

    if-eqz p3, :cond_21

    goto :goto_e

    :cond_21
    move p2, v1

    goto :goto_f

    :cond_22
    :goto_e
    move p2, v3

    :goto_f
    if-nez p1, :cond_23

    if-eqz p3, :cond_27

    .line 56
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {p1, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsActions;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_27

    if-eqz v7, :cond_27

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object p2

    invoke-interface {p2}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v0

    invoke-interface {v0}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p2, v0}, Lj8/m;->d(FF)F

    move-result p2

    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v0

    invoke-interface {v0}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v2

    invoke-interface {v2}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Lj8/m;->i(FF)F

    move-result v0

    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->d()I

    move-result v2

    if-lez v2, :cond_24

    sub-float/2addr p2, v0

    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->d()I

    move-result v0

    add-int/2addr v0, v3

    :goto_10
    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_11

    :cond_24
    sub-float/2addr p2, v0

    const/16 v0, 0x14

    goto :goto_10

    :goto_11
    if-eqz p3, :cond_25

    neg-float p2, p2

    .line 62
    :cond_25
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p3

    check-cast p3, Le8/l;

    if-eqz p3, :cond_26

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b()F

    move-result p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_26
    return v1

    .line 63
    :cond_27
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->j()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutInfo;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->l()J

    move-result-wide v7

    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-nez p1, :cond_28

    return v1

    .line 65
    :cond_28
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v3, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/ScrollAxisRange;

    const/4 v10, 0x0

    if-eqz v3, :cond_2f

    if-eqz v6, :cond_2f

    .line 66
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->i(J)F

    move-result v6

    if-nez v2, :cond_29

    if-eqz p3, :cond_2a

    :cond_29
    neg-float v6, v6

    .line 67
    :cond_2a
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    move-result v11

    if-eqz v11, :cond_2b

    neg-float v6, v6

    .line 68
    :cond_2b
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->g(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v11

    if-eqz v11, :cond_2d

    if-nez v2, :cond_2c

    if-eqz v4, :cond_2d

    :cond_2c
    neg-float v6, v6

    .line 69
    :cond_2d
    invoke-static {v3, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/p;

    if-eqz p1, :cond_2e

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2e
    return v1

    .line 71
    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-eqz v0, :cond_33

    if-eqz p2, :cond_33

    .line 72
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->g(J)F

    move-result p2

    if-nez v5, :cond_30

    if-eqz p3, :cond_31

    :cond_30
    neg-float p2, p2

    .line 73
    :cond_31
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    move-result p3

    if-eqz p3, :cond_32

    neg-float p2, p2

    .line 74
    :cond_32
    invoke-static {v0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/p;

    if-eqz p1, :cond_33

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_33
    return v1

    .line 76
    :sswitch_9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_34

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_34
    return v1

    .line 77
    :sswitch_a
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    sget-object p3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsActions;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p2

    check-cast p2, Le8/a;

    if-eqz p2, :cond_35

    invoke-interface {p2}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    :cond_35
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    .line 78
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    if-eqz v4, :cond_36

    .line 79
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_36
    return v1

    .line 80
    :cond_37
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusManager()Landroidx/compose/ui/focus/FocusManager;

    move-result-object p1

    invoke-static {p1, v1, v3, v4}, Landroidx/compose/ui/focus/a;->a(Landroidx/compose/ui/focus/FocusManager;ZILjava/lang/Object;)V

    move v1, v3

    :cond_38
    return v1

    .line 82
    :cond_39
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_3a

    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3a
    return v1

    :cond_3b
    const/4 p1, -0x1

    if-eqz p3, :cond_3c

    const-string p2, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 84
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_12

    :cond_3c
    move p2, p1

    :goto_12
    if-eqz p3, :cond_3d

    const-string v2, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 85
    invoke-virtual {p3, v2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 86
    :cond_3d
    invoke-direct {p0, v0, p2, p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Z(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    .line 88
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    :cond_3e
    return p1

    .line 89
    :cond_3f
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    .line 90
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_40

    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    move-result-object p1

    check-cast p1, Le8/a;

    if-eqz p1, :cond_40

    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_40
    return v1

    :cond_41
    if-eqz p3, :cond_43

    const-string p1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v4, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-ne p2, v2, :cond_42

    move v1, v3

    .line 95
    :cond_42
    invoke-direct {p0, v0, p1, v1, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->d0(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z

    move-result p1

    return p1

    :cond_43
    return v1

    .line 96
    :cond_44
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->o(I)Z

    move-result p1

    return p1

    .line 97
    :cond_45
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N(I)Z

    move-result p1

    return p1

    :cond_46
    :goto_13
    return v1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_8
        0x8000 -> :sswitch_7
        0x10000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x1020036 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final H(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 19
    move-result v1

    .line 20
    .line 21
    cmpl-float v1, v1, v0

    .line 22
    .line 23
    if-gtz v1, :cond_1

    .line 24
    .line 25
    :cond_0
    cmpl-float p1, p1, v0

    .line 26
    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Number;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    check-cast p0, Ljava/lang/Number;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 55
    move-result p0

    .line 56
    .line 57
    cmpg-float p0, p1, p0

    .line 58
    .line 59
    if-gez p0, :cond_2

    .line 60
    :cond_1
    const/4 p0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    :goto_0
    return p0
.end method

.method private static final I(FF)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 8
    move-result v1

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result v1

    .line 21
    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    if-gez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p0, p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method private static final K(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/Number;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Ljava/lang/Number;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 53
    move-result v1

    .line 54
    .line 55
    cmpg-float v0, v0, v1

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    :goto_0
    return p0
.end method

.method private static final L(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 28
    move-result v1

    .line 29
    .line 30
    cmpg-float v0, v0, v1

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Number;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    cmpl-float v0, v0, v1

    .line 56
    .line 57
    if-lez v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    :goto_0
    return p0
.end method

.method private final M(ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->m(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance p2, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v0, p2

    .line 18
    move v1, p1

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/ScrollObservationScope;-><init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return p1
.end method

.method private final N(I)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B(I)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 17
    .line 18
    const/high16 v0, -0x80000000

    .line 19
    .line 20
    if-eq v3, v0, :cond_1

    .line 21
    .line 22
    const/high16 v4, 0x10000

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    const/16 v7, 0xc

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v2, p0

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 32
    .line 33
    :cond_1
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    const v3, 0x8000

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    .line 45
    const/16 v6, 0xc

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v1, p0

    .line 48
    move v2, p1

    .line 49
    .line 50
    .line 51
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_2
    return v1
.end method

.method private static final O(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/b;->a(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n()V

    .line 17
    .line 18
    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 19
    return-void
.end method

.method private final P(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    const/4 p1, -0x1

    .line 18
    :cond_0
    return p1
.end method

.method private final Q(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private final R(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 25
    .line 26
    :cond_1
    if-eqz p4, :cond_2

    .line 27
    .line 28
    const-string v1, ","

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    .line 35
    const/16 v7, 0x3e

    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v0, p4

    .line 38
    .line 39
    .line 40
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/TempListUtilsKt;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method static synthetic S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    move-object p3, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    move-object p4, v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R(IILjava/lang/Integer;Ljava/util/List;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private final T(IILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 26
    return-void
.end method

.method private final U(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->f()J

    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    .line 26
    const-wide/16 v3, 0x3e8

    .line 27
    .line 28
    cmp-long p1, v1, v3

    .line 29
    .line 30
    if-gtz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 42
    move-result p1

    .line 43
    .line 44
    const/high16 v1, 0x20000

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->b()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->e()I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->a()I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->c()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->d()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 95
    :cond_1
    const/4 p1, 0x0

    .line 96
    .line 97
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 98
    return-void
.end method

.method private final V(Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ScrollObservationScope;->isValid()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendScrollEventIfNeededLambda:Le8/l;

    .line 16
    .line 17
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1;-><init>(Landroidx/compose/ui/platform/ScrollObservationScope;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->e(Landroidx/compose/ui/node/OwnerScope;Le8/l;Le8/a;)V

    .line 24
    return-void
.end method

.method private final X(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    .line 17
    :goto_0
    if-ge v4, v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 31
    move-result v7

    .line 32
    .line 33
    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    .line 38
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->a()Ljava/util/Set;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 49
    move-result v7

    .line 50
    .line 51
    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v7

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-nez v6, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/node/LayoutNode;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D(Landroidx/compose/ui/node/LayoutNode;)V

    .line 67
    return-void

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 71
    move-result v5

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->a()Ljava/util/Set;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    check-cast v1, Ljava/lang/Number;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 105
    move-result v1

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/node/LayoutNode;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D(Landroidx/compose/ui/node/LayoutNode;)V

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 131
    move-result p2

    .line 132
    .line 133
    :goto_1
    if-ge v3, p2, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 147
    move-result v2

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 155
    move-result v1

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 163
    move-result v2

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 180
    .line 181
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 182
    goto :goto_1

    .line 183
    :cond_6
    return-void
.end method

.method private final Y(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsEntity;->j()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->p()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    move-object v0, p1

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsModifier;->getId()I

    .line 82
    move-result p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 91
    .line 92
    if-nez p2, :cond_5

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 97
    move-result v1

    .line 98
    .line 99
    const/16 v2, 0x800

    .line 100
    const/4 p1, 0x1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v3

    .line 105
    const/4 v4, 0x0

    .line 106
    .line 107
    const/16 v5, 0x8

    .line 108
    const/4 v6, 0x0

    .line 109
    move-object v0, p0

    .line 110
    .line 111
    .line 112
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private final Z(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Le8/q;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2, p3, p4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v2

    .line 68
    :cond_0
    return v2

    .line 69
    .line 70
    :cond_1
    if-ne p2, p3, :cond_2

    .line 71
    .line 72
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 73
    .line 74
    if-ne p3, p4, :cond_2

    .line 75
    return v2

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    .line 81
    if-nez v8, :cond_3

    .line 82
    return v2

    .line 83
    .line 84
    :cond_3
    if-ltz p2, :cond_4

    .line 85
    .line 86
    if-ne p2, p3, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 90
    move-result p4

    .line 91
    .line 92
    if-gt p3, p4, :cond_4

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 p2, -0x1

    .line 95
    .line 96
    :goto_0
    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 97
    .line 98
    .line 99
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 100
    move-result p2

    .line 101
    const/4 p3, 0x1

    .line 102
    .line 103
    if-lez p2, :cond_5

    .line 104
    move v2, p3

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 108
    move-result p2

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 112
    move-result v4

    .line 113
    const/4 p2, 0x0

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 118
    .line 119
    .line 120
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object p4

    .line 122
    move-object v5, p4

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    move-object v5, p2

    .line 125
    .line 126
    :goto_1
    if-eqz v2, :cond_7

    .line 127
    .line 128
    iget p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 129
    .line 130
    .line 131
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object p4

    .line 133
    move-object v6, p4

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    move-object v6, p2

    .line 136
    .line 137
    :goto_2
    if-eqz v2, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 141
    move-result p2

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object p2

    .line 146
    :cond_8
    move-object v7, p2

    .line 147
    move-object v3, p0

    .line 148
    .line 149
    .line 150
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 158
    move-result p1

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->U(I)V

    .line 162
    return p3
.end method

.method public static synthetic a(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->O(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    return-void
.end method

.method private final a0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->j0(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->n0(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method private final b0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroid/text/SpannableString;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    const v3, 0x186a0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Landroid/text/SpannableString;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v2, v0}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroid/text/SpannableString;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Landroid/text/SpannableString;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v1, p1

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->L0(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->n()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1, v2}, Landroidx/compose/ui/geometry/Rect;->t(J)Landroidx/compose/ui/geometry/Rect;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/geometry/Rect;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/ui/geometry/Rect;->r(Landroidx/compose/ui/geometry/Rect;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroidx/compose/ui/geometry/Rect;->q(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->n(J)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-static {v2, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->n(J)J

    .line 66
    move-result-wide p1

    .line 67
    .line 68
    new-instance v2, Landroid/graphics/RectF;

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 72
    move-result v3

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 80
    move-result v1

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 84
    move-result p1

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    move-object v0, v2

    .line 89
    :cond_2
    return-object v0
.end method

.method public static final synthetic d(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method private final d0(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    :goto_0
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    if-eqz v0, :cond_e

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    return v1

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 54
    move-result v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_5

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    move v4, v1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    move-result v0

    .line 65
    move v4, v0

    .line 66
    .line 67
    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->a(I)[I

    .line 71
    move-result-object v0

    .line 72
    goto :goto_2

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-interface {v3, v4}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->b(I)[I

    .line 76
    move-result-object v0

    .line 77
    .line 78
    :goto_2
    if-nez v0, :cond_7

    .line 79
    return v1

    .line 80
    .line 81
    :cond_7
    aget v7, v0, v1

    .line 82
    const/4 v1, 0x1

    .line 83
    .line 84
    aget v8, v0, v1

    .line 85
    .line 86
    if-eqz p4, :cond_b

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 90
    move-result p4

    .line 91
    .line 92
    if-eqz p4, :cond_b

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 96
    move-result p4

    .line 97
    .line 98
    if-ne p4, v2, :cond_9

    .line 99
    .line 100
    if-eqz p3, :cond_8

    .line 101
    move p4, v7

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move p4, v8

    .line 104
    .line 105
    :cond_9
    :goto_3
    if-eqz p3, :cond_a

    .line 106
    move v0, v8

    .line 107
    goto :goto_5

    .line 108
    :cond_a
    move v0, v7

    .line 109
    goto :goto_5

    .line 110
    .line 111
    :cond_b
    if-eqz p3, :cond_c

    .line 112
    move p4, v8

    .line 113
    goto :goto_4

    .line 114
    :cond_c
    move p4, v7

    .line 115
    :goto_4
    move v0, p4

    .line 116
    .line 117
    :goto_5
    if-eqz p3, :cond_d

    .line 118
    .line 119
    const/16 p3, 0x100

    .line 120
    :goto_6
    move v5, p3

    .line 121
    goto :goto_7

    .line 122
    .line 123
    :cond_d
    const/16 p3, 0x200

    .line 124
    goto :goto_6

    .line 125
    .line 126
    :goto_7
    new-instance p3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 130
    move-result-wide v9

    .line 131
    move-object v3, p3

    .line 132
    move-object v4, p1

    .line 133
    move v6, p2

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 137
    .line 138
    iput-object p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1, p4, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Z(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 142
    :cond_e
    :goto_8
    return v1
.end method

.method public static final synthetic e(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method private final e0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-lez p2, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-gt v0, p2, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    move p2, v0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 46
    move-result-object p1

    .line 47
    :cond_3
    :goto_0
    return-object p1

    .line 48
    .line 49
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "Failed requirement."

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method public static final synthetic f(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G(IILandroid/os/Bundle;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final f0(I)V
    .locals 9

    .line 1
    .line 2
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 3
    .line 4
    if-ne v1, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 8
    .line 9
    const/16 v4, 0x80

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    const/16 v7, 0xc

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    .line 18
    .line 19
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 20
    .line 21
    const/16 v2, 0x100

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    const/16 v5, 0xc

    .line 26
    move-object v0, p0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final g0()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 35
    move-result-object v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v3

    .line 38
    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    const-string v2, "id"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v2

    .line 60
    .line 61
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->b()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    move-object v3, v1

    .line 87
    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    :cond_3
    const/16 v1, 0x20

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v2, v1, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T(IILjava/lang/String;)V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 137
    move-result v2

    .line 138
    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    .line 142
    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 149
    move-result v2

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Ljava/lang/Number;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 161
    move-result v2

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    check-cast v3, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    check-cast v3, Ljava/lang/String;

    .line 188
    .line 189
    const/16 v4, 0x10

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, v2, v4, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T(IILjava/lang/String;)V

    .line 193
    .line 194
    :cond_5
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    new-instance v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 201
    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    .line 217
    invoke-direct {v4, v1, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    goto :goto_2

    .line 222
    .line 223
    :cond_6
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 224
    .line 225
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    .line 241
    .line 242
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 243
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic i(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    .line 4
    return-void
.end method

.method private final j(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 15
    .line 16
    if-eqz p1, :cond_a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_9

    .line 45
    .line 46
    if-eqz p4, :cond_9

    .line 47
    .line 48
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 49
    .line 50
    .line 51
    invoke-static {p3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_9

    .line 55
    .line 56
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    .line 57
    const/4 v3, -0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 61
    move-result v1

    .line 62
    .line 63
    const-string v4, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 67
    move-result p4

    .line 68
    .line 69
    if-lez p4, :cond_8

    .line 70
    .line 71
    if-ltz v1, :cond_8

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    move-result v0

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    const v0, 0x7fffffff

    .line 82
    .line 83
    :goto_0
    if-lt v1, v0, :cond_2

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    check-cast v2, Le8/l;

    .line 111
    const/4 v3, 0x0

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    check-cast v2, Ljava/lang/Boolean;

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move-object v2, v3

    .line 122
    .line 123
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_7

    .line 130
    const/4 v2, 0x0

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 137
    .line 138
    new-instance v4, Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    move v5, v2

    .line 143
    .line 144
    :goto_2
    if-ge v5, p4, :cond_5

    .line 145
    .line 146
    add-int v6, v1, v5

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 150
    move-result-object v7

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 154
    move-result-object v7

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 158
    move-result v7

    .line 159
    .line 160
    if-lt v6, v7, :cond_4

    .line 161
    .line 162
    .line 163
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_3

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 168
    move-result-object v6

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, p1, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->c0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    .line 175
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 178
    goto :goto_2

    .line 179
    .line 180
    .line 181
    :cond_5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    new-array p2, v2, [Landroid/graphics/RectF;

    .line 185
    .line 186
    .line 187
    invoke-interface {v4, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    move-result-object p2

    .line 189
    .line 190
    if-eqz p2, :cond_6

    .line 191
    .line 192
    check-cast p2, [Landroid/os/Parcelable;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 196
    goto :goto_5

    .line 197
    .line 198
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 199
    .line 200
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 201
    .line 202
    .line 203
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 204
    throw p1

    .line 205
    :cond_7
    return-void

    .line 206
    .line 207
    :cond_8
    :goto_4
    const-string p1, "AccessibilityDelegate"

    .line 208
    .line 209
    const-string p2, "Invalid arguments for accessibility character locations"

    .line 210
    .line 211
    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 214
    .line 215
    .line 216
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 227
    move-result v0

    .line 228
    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    if-eqz p4, :cond_a

    .line 232
    .line 233
    const-string p4, "androidx.compose.ui.semantics.testTag"

    .line 234
    .line 235
    .line 236
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    move-result p4

    .line 238
    .line 239
    if-eqz p4, :cond_a

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 247
    move-result-object p4

    .line 248
    .line 249
    .line 250
    invoke-static {p1, p4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    check-cast p1, Ljava/lang/String;

    .line 254
    .line 255
    if-eqz p1, :cond_a

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 263
    :cond_a
    :goto_5
    return-void
.end method

.method private final n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->X(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->g0()V

    .line 26
    return-void
.end method

.method private final o(I)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    const/high16 v3, 0x10000

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    const/16 v6, 0xc

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move v2, p1

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method private final q(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->a()Landroidx/lifecycle/LifecycleOwner;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    .line 29
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    return-object v1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->Q()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v2, "obtain()"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->U()V

    .line 61
    return-object v1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 65
    move-result-object v3

    .line 66
    const/4 v4, -0x1

    .line 67
    .line 68
    if-ne p1, v4, :cond_4

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->J(Landroid/view/View;)Landroid/view/ViewParent;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    instance-of v5, v4, Landroid/view/View;

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    move-object v1, v4

    .line 80
    .line 81
    check-cast v1, Landroid/view/View;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->z0(Landroid/view/View;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 102
    move-result v1

    .line 103
    .line 104
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 116
    move-result v5

    .line 117
    .line 118
    if-ne v1, v5, :cond_5

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move v4, v1

    .line 121
    .line 122
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->A0(Landroid/view/View;I)V

    .line 126
    .line 127
    :goto_2
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->J0(Landroid/view/View;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->a()Landroid/graphics/Rect;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 137
    .line 138
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 139
    int-to-float v4, v4

    .line 140
    .line 141
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 142
    int-to-float v5, v5

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 146
    move-result-wide v4

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->n(J)J

    .line 150
    move-result-wide v4

    .line 151
    .line 152
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 153
    .line 154
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 155
    int-to-float v6, v6

    .line 156
    .line 157
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 158
    int-to-float v1, v1

    .line 159
    .line 160
    .line 161
    invoke-static {v6, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 162
    move-result-wide v6

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v6, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->n(J)J

    .line 166
    move-result-wide v1

    .line 167
    .line 168
    new-instance v6, Landroid/graphics/Rect;

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 172
    move-result v7

    .line 173
    float-to-double v7, v7

    .line 174
    .line 175
    .line 176
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 177
    move-result-wide v7

    .line 178
    double-to-float v7, v7

    .line 179
    float-to-int v7, v7

    .line 180
    .line 181
    .line 182
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 183
    move-result v4

    .line 184
    float-to-double v4, v4

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 188
    move-result-wide v4

    .line 189
    double-to-float v4, v4

    .line 190
    float-to-int v4, v4

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 194
    move-result v5

    .line 195
    float-to-double v8, v5

    .line 196
    .line 197
    .line 198
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 199
    move-result-wide v8

    .line 200
    double-to-float v5, v8

    .line 201
    float-to-int v5, v5

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 205
    move-result v1

    .line 206
    float-to-double v1, v1

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 210
    move-result-wide v1

    .line 211
    double-to-float v1, v1

    .line 212
    float-to-int v1, v1

    .line 213
    .line 214
    .line 215
    invoke-direct {v6, v7, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a0(Landroid/graphics/Rect;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->Q0()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 225
    move-result-object p1

    .line 226
    return-object p1

    .line 227
    .line 228
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    const-string v2, "semanticsNode "

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string p1, " has null parent"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    throw v0
.end method

.method private final r(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x2000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 16
    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 25
    .line 26
    :cond_1
    if-eqz p4, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 30
    move-result p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 34
    .line 35
    :cond_2
    if-eqz p5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_3
    return-object p1
.end method

.method private final t(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    .line 55
    :cond_0
    iget p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 56
    return p1
.end method

.method private final u(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    .line 55
    :cond_0
    iget p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 56
    return p1
.end method

.method private final v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->o(Landroidx/compose/ui/semantics/SemanticsOwner;)Ljava/util/Map;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    .line 22
    return-object v0
.end method

.method private final w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    move-object v0, p1

    .line 34
    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    const-string v1, ","

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    .line 44
    const/16 v7, 0x3e

    .line 45
    const/4 v8, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/TempListUtilsKt;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->h(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    :cond_2
    return-object v0

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Ljava/util/List;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    :cond_4
    return-object v0
.end method

.method private final x(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_a

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    :cond_1
    const/4 v2, 0x1

    .line 20
    .line 21
    const-string v3, "view.context.resources.configuration.locale"

    .line 22
    .line 23
    if-eq p2, v2, :cond_9

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    if-eq p2, v2, :cond_8

    .line 27
    const/4 v2, 0x4

    .line 28
    .line 29
    if-eq p2, v2, :cond_3

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-eq p2, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    if-eq p2, v3, :cond_3

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_2
    sget-object p1, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;->a()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    return-object v0

    .line 67
    .line 68
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/AccessibilityAction;->a()Lw7/g;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    check-cast v4, Le8/l;

    .line 92
    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-interface {v4, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    check-cast v4, Ljava/lang/Boolean;

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    move-object v4, v0

    .line 102
    .line 103
    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v4

    .line 108
    .line 109
    if-eqz v4, :cond_7

    .line 110
    const/4 v0, 0x0

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 117
    .line 118
    if-ne p2, v2, :cond_6

    .line 119
    .line 120
    sget-object p1, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;->a()Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->j(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_6
    sget-object p2, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;->a()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v1, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->j(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 138
    move-object p1, p2

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    return-object v0

    .line 141
    .line 142
    :cond_8
    sget-object p1, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 159
    .line 160
    .line 161
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;->a(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->e(Ljava/lang/String;)V

    .line 169
    goto :goto_1

    .line 170
    .line 171
    :cond_9
    sget-object p1, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    .line 172
    .line 173
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    move-result-object p2

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object p2

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 188
    .line 189
    .line 190
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;->a(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->e(Ljava/lang/String;)V

    .line 198
    :goto_1
    return-object p1

    .line 199
    :cond_a
    :goto_2
    return-object v0
.end method

.method private final y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 13
    return-object p1
.end method


# virtual methods
.method public final E(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D(Landroidx/compose/ui/node/LayoutNode;)V

    .line 19
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final J(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 12
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/semantics/SemanticsNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "semanticsNode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.view.View"

    .line 1
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v3

    .line 4
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5
    :cond_0
    sget-object v4, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v6

    invoke-static {v6, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/compose/ui/R$string;->tab:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->D0(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->a()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "android.widget.Button"

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->b()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "android.widget.CheckBox"

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->e()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v3, "android.widget.Switch"

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->d()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "android.widget.RadioButton"

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->c()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "android.widget.ImageView"

    goto :goto_0

    :cond_6
    move-object v3, v2

    .line 12
    :goto_0
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role$Companion;->c()I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v5

    invoke-static {v5, v4}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 13
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1;

    invoke-static {v4, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 15
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->p()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    :cond_8
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 17
    :cond_9
    :goto_1
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 18
    :cond_a
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->h(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "android.widget.EditText"

    .line 19
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 20
    :cond_b
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "android.widget.TextView"

    .line 21
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x0(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->p()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_f

    .line 25
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 26
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 27
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 28
    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v7, :cond_d

    .line 29
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 30
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    move-result v6

    invoke-virtual {p2, v7, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->d(Landroid/view/View;I)V

    :cond_e
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    const/4 v3, 0x1

    if-ne v1, p1, :cond_10

    .line 31
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->X(Z)V

    .line 32
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    .line 33
    :cond_10
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->X(Z)V

    .line 34
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 35
    :goto_4
    invoke-direct {p0, p3, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->b0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 36
    invoke-direct {p0, p3, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a0(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 37
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    .line 40
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    .line 41
    invoke-static {v1, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/state/ToggleableState;

    const/4 v6, 0x2

    if-eqz v1, :cond_17

    .line 42
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->c0(Z)V

    .line 43
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v3, :cond_14

    if-eq v1, v6, :cond_12

    const/4 v7, 0x3

    if-eq v1, v7, :cond_11

    goto/16 :goto_5

    .line 44
    :cond_11
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Landroidx/compose/ui/R$string;->indeterminate:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 47
    :cond_12
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->d0(Z)V

    .line 48
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->e()I

    move-result v1

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v7

    invoke-static {v7, v1}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Landroidx/compose/ui/R$string;->off:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 50
    :cond_14
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->d0(Z)V

    .line 51
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->e()I

    move-result v1

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v7

    invoke-static {v7, v1}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Landroidx/compose/ui/R$string;->on:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    .line 53
    :cond_16
    :goto_5
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 54
    :cond_17
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v1, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 55
    sget-object v7, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    move-result v7

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    move-result v0

    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 56
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->G0(Z)V

    goto :goto_8

    .line 57
    :cond_19
    :goto_6
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->c0(Z)V

    .line 58
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->d0(Z)V

    .line 59
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1a

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/compose/ui/R$string;->selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1a
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/compose/ui/R$string;->not_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_7
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1b
    :goto_8
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 64
    :cond_1c
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->p()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 65
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 66
    :cond_1d
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 67
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 69
    invoke-static {v0}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_1e
    move-object v0, v2

    .line 70
    :goto_9
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i0(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1f
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->p()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 72
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->E0(Z)V

    .line 73
    :cond_20
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_22

    move-object v1, p3

    :goto_a
    if-eqz v1, :cond_22

    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    .line 75
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    .line 76
    invoke-virtual {v5, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 80
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->O0(Ljava/lang/String;)V

    goto :goto_b

    .line 81
    :cond_21
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    goto :goto_a

    .line 82
    :cond_22
    :goto_b
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/l0;

    if-eqz v0, :cond_23

    .line 83
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->q0(Z)V

    .line 84
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 85
    :cond_23
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->B0(Z)V

    .line 86
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->h(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->l0(Z)V

    .line 87
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m0(Z)V

    .line 88
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->o0(Z)V

    .line 89
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->I()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 90
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->p0(Z)V

    .line 91
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->J()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    goto :goto_c

    .line 93
    :cond_24
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 94
    :cond_25
    :goto_c
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 95
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->e()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    goto :goto_d

    :cond_26
    move-object v0, v2

    goto :goto_d

    .line 96
    :cond_27
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->e()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_28

    .line 97
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q1()Z

    move-result v0

    if-nez v0, :cond_29

    .line 98
    :cond_28
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v3

    goto :goto_e

    :cond_29
    move v0, v4

    .line 99
    :goto_e
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->P0(Z)V

    .line 100
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/LiveRegionMode;->i()I

    move-result v0

    .line 101
    sget-object v5, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->b()I

    move-result v7

    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/LiveRegionMode;->f(II)Z

    move-result v7

    if-eqz v7, :cond_2b

    :cond_2a
    move v6, v3

    goto :goto_f

    .line 102
    :cond_2b
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->a()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/LiveRegionMode;->f(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 103
    :goto_f
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->t0(I)V

    .line 104
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 105
    :cond_2c
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f0(Z)V

    .line 106
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_2e

    .line 107
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    .line 108
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->f0(Z)V

    .line 109
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_2d

    if-nez v6, :cond_2d

    .line 110
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v7, 0x10

    .line 111
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 114
    :cond_2d
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 115
    :cond_2e
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u0(Z)V

    .line 116
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_30

    .line 117
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->u0(Z)V

    .line 118
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 119
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v7, 0x20

    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 123
    :cond_2f
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 124
    :cond_30
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_31

    .line 125
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v7, 0x4000

    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 129
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 130
    :cond_31
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 131
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_32

    .line 132
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v7, 0x200000

    .line 133
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 136
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 137
    :cond_32
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_33

    .line 138
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v7, 0x10000

    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 142
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 143
    :cond_33
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_35

    .line 144
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->J()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidClipboardManager;->c()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 145
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v7, 0x8000

    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-direct {v6, v7, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 149
    :cond_34
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 150
    :cond_35
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 151
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_36

    goto :goto_10

    .line 152
    :cond_36
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    .line 153
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v6

    .line 154
    invoke-virtual {p2, v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->M0(II)V

    .line 155
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 156
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    if-eqz v0, :cond_37

    .line 157
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v2

    :cond_37
    const/high16 v0, 0x20000

    .line 158
    invoke-direct {v6, v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/16 v0, 0x100

    .line 160
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    const/16 v0, 0x200

    .line 161
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    const/16 v0, 0xb

    .line 162
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->w0(I)V

    .line 163
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 164
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    .line 165
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 167
    :cond_38
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 168
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->c(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 169
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->t()I

    move-result v0

    or-int/lit8 v0, v0, 0x14

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->w0(I)V

    :cond_39
    :goto_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3d

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->y()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_11

    .line 172
    :cond_3a
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 173
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_3b
    :goto_11
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    if-eqz v6, :cond_3c

    const-string v6, "androidx.compose.ui.semantics.testTag"

    .line 175
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 177
    sget-object v6, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;

    .line 178
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->Q0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    const-string v8, "info.unwrap()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6, v7, v2}, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 180
    :cond_3d
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    const/4 v6, 0x0

    if-eqz v2, :cond_45

    .line 181
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const-string v7, "android.widget.SeekBar"

    .line 182
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_3e
    const-string v7, "android.widget.ProgressBar"

    .line 183
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 184
    :goto_12
    sget-object v7, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;->a()Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    move-result-object v7

    if-eq v2, v7, :cond_42

    .line 185
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v7

    invoke-interface {v7}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 186
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v8

    invoke-interface {v8}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 187
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b()F

    move-result v9

    .line 188
    invoke-static {v3, v7, v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->a(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->C0(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 189
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_43

    .line 190
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v7

    .line 191
    invoke-interface {v7}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-interface {v7}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    cmpg-float v8, v8, v6

    if-nez v8, :cond_3f

    move v8, v6

    goto :goto_13

    .line 192
    :cond_3f
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b()F

    move-result v8

    invoke-interface {v7}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    .line 193
    invoke-interface {v7}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-interface {v7}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float/2addr v9, v7

    div-float/2addr v8, v9

    :goto_13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 194
    invoke-static {v8, v6, v7}, Lj8/m;->m(FFF)F

    move-result v8

    cmpg-float v9, v8, v6

    if-nez v9, :cond_40

    move v9, v4

    goto :goto_14

    :cond_40
    cmpg-float v7, v8, v7

    const/16 v9, 0x64

    if-nez v7, :cond_41

    goto :goto_14

    :cond_41
    int-to-float v7, v9

    mul-float/2addr v8, v7

    .line 195
    invoke-static {v8}, Lg8/a;->c(F)I

    move-result v7

    const/16 v8, 0x63

    invoke-static {v7, v3, v8}, Lj8/m;->n(III)I

    move-result v9

    :goto_14
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 196
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/compose/ui/R$string;->template_percent:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v4

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 198
    :cond_42
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->x()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_43

    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 199
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/compose/ui/R$string;->in_progress:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->K0(Ljava/lang/CharSequence;)V

    .line 200
    :cond_43
    :goto_15
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 201
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 202
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b()F

    move-result v7

    .line 203
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v8

    invoke-interface {v8}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v9

    invoke-interface {v9}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v8, v9}, Lj8/m;->d(FF)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_44

    .line 204
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 205
    :cond_44
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b()F

    move-result v7

    .line 206
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v8

    invoke-interface {v8}, Lj8/f;->getStart()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c()Lj8/e;

    move-result-object v2

    invoke-interface {v2}, Lj8/f;->c()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v8, v2}, Lj8/m;->i(FF)F

    move-result v2

    cmpl-float v2, v7, v2

    if-lez v2, :cond_45

    .line 207
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_45
    const/16 v2, 0x18

    if-lt v0, v2, :cond_46

    .line 208
    invoke-static {p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;->a(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 209
    :cond_46
    invoke-static {p3, p2}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->d(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 210
    invoke-static {p3, p2}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 211
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 212
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_4c

    if-eqz v2, :cond_4c

    .line 213
    invoke-static {p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-nez v7, :cond_47

    const-string v7, "android.widget.HorizontalScrollView"

    .line 214
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 215
    :cond_47
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    move-result-object v7

    invoke-interface {v7}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_48

    .line 216
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->F0(Z)V

    .line 217
    :cond_48
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 218
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 219
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 220
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->g(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 221
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_16

    .line 222
    :cond_49
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 223
    :goto_16
    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 224
    :cond_4a
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 225
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 226
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->g(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 227
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_17

    .line 228
    :cond_4b
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 229
    :goto_17
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 230
    :cond_4c
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 231
    invoke-static {p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "android.widget.ScrollView"

    .line 232
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e0(Ljava/lang/CharSequence;)V

    .line 233
    :cond_4d
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    move-result-object v2

    invoke-interface {v2}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4e

    .line 234
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->F0(Z)V

    .line 235
    :cond_4e
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 236
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 237
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 238
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 239
    :cond_4f
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 240
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 241
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 242
    :cond_50
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->y0(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 244
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_51

    .line 245
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x40000

    .line 246
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {v1, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 249
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 250
    :cond_51
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_52

    .line 251
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x80000

    .line 252
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-direct {v1, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 255
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 256
    :cond_52
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_53

    .line 257
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x100000

    .line 258
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-direct {v1, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 261
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 262
    :cond_53
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 263
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p3

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 264
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_58

    .line 265
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 266
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 267
    invoke-virtual {v3, p1}, Landroidx/collection/SparseArrayCompat;->f(I)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 268
    invoke-virtual {v3, p1}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 269
    invoke-static {v1}, Lkotlin/collections/l;->u0([I)Ljava/util/List;

    move-result-object v1

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_18
    if-ge v7, v6, :cond_55

    .line 272
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 273
    check-cast v8, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 274
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 275
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 276
    invoke-static {v9}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 277
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 279
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v9, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_19

    .line 280
    :cond_54
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 281
    :cond_55
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    :goto_1a
    if-ge v4, p3, :cond_57

    .line 282
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 283
    check-cast v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 284
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 285
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 286
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v6, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 288
    :cond_56
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1b
    if-ge v4, v1, :cond_57

    .line 289
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 290
    check-cast v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    .line 291
    aget v5, v5, v4

    .line 292
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 293
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_57
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 295
    invoke-virtual {p2, p1, v0}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 296
    invoke-virtual {p2, p1, v2}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    goto :goto_1c

    .line 297
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t have more than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    array-length p3, v1

    .line 300
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " custom actions for one widget"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_1c
    return-void
.end method

.method public final W(Ljava/util/Map;)V
    .locals 27
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    const-string v0, "newSemanticsNodes"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    new-instance v9, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v10

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2f

    .line 38
    .line 39
    .line 40
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Number;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 47
    move-result v11

    .line 48
    .line 49
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    move-object v12, v0

    .line 59
    .line 60
    check-cast v12, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 61
    .line 62
    if-nez v12, :cond_1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 79
    move-result-object v0

    .line 80
    move-object v14, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v14, 0x0

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-static {v14}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v15

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    :cond_3
    move/from16 v17, v16

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_2d

    .line 104
    .line 105
    .line 106
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    move-result v1

    .line 124
    .line 125
    if-nez v1, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    move-result v1

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-direct {v7, v11, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M(ILjava/util/List;)Z

    .line 143
    move-result v1

    .line 144
    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->b()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 168
    .line 169
    if-eqz v1, :cond_7

    .line 170
    goto :goto_2

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    move-result v3

    .line 185
    .line 186
    const/16 v4, 0x8

    .line 187
    .line 188
    if-eqz v3, :cond_9

    .line 189
    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    check-cast v0, Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->c()Z

    .line 200
    move-result v1

    .line 201
    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    .line 205
    invoke-direct {v7, v11, v4, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T(IILjava/lang/String;)V

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 209
    .line 210
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    throw v0

    .line 215
    .line 216
    .line 217
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    move-result v3

    .line 223
    .line 224
    const/16 v5, 0x40

    .line 225
    .line 226
    if-eqz v3, :cond_a

    .line 227
    goto :goto_3

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 231
    move-result-object v3

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    move-result v3

    .line 236
    .line 237
    if-eqz v3, :cond_b

    .line 238
    .line 239
    .line 240
    :goto_3
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 241
    move-result v1

    .line 242
    .line 243
    const/16 v2, 0x800

    .line 244
    .line 245
    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v3

    .line 248
    const/4 v4, 0x0

    .line 249
    .line 250
    const/16 v5, 0x8

    .line 251
    const/4 v6, 0x0

    .line 252
    .line 253
    move-object/from16 v0, p0

    .line 254
    .line 255
    .line 256
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 260
    move-result v1

    .line 261
    .line 262
    .line 263
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v3

    .line 265
    .line 266
    .line 267
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    .line 272
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 273
    move-result-object v3

    .line 274
    .line 275
    .line 276
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    move-result v3

    .line 278
    .line 279
    if-eqz v3, :cond_c

    .line 280
    .line 281
    .line 282
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 283
    move-result v1

    .line 284
    .line 285
    const/16 v2, 0x800

    .line 286
    .line 287
    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object v3

    .line 290
    const/4 v4, 0x0

    .line 291
    .line 292
    const/16 v5, 0x8

    .line 293
    const/4 v6, 0x0

    .line 294
    .line 295
    move-object/from16 v0, p0

    .line 296
    .line 297
    .line 298
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 302
    move-result v1

    .line 303
    .line 304
    .line 305
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v3

    .line 307
    .line 308
    .line 309
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    .line 314
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 315
    move-result-object v3

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    move-result v3

    .line 320
    const/4 v6, 0x4

    .line 321
    const/4 v13, 0x1

    .line 322
    .line 323
    if-eqz v3, :cond_14

    .line 324
    .line 325
    .line 326
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 327
    move-result-object v0

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    .line 334
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    check-cast v0, Landroidx/compose/ui/semantics/Role;

    .line 338
    .line 339
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    .line 343
    move-result v1

    .line 344
    .line 345
    if-nez v0, :cond_d

    .line 346
    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    .line 350
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->m()I

    .line 351
    move-result v0

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/Role;->j(II)Z

    .line 355
    move-result v0

    .line 356
    .line 357
    if-eqz v0, :cond_13

    .line 358
    .line 359
    .line 360
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 365
    move-result-object v1

    .line 366
    .line 367
    .line 368
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 369
    move-result-object v0

    .line 370
    .line 371
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 372
    .line 373
    .line 374
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    move-result v0

    .line 376
    .line 377
    if-eqz v0, :cond_12

    .line 378
    .line 379
    .line 380
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 381
    move-result v0

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 385
    move-result-object v0

    .line 386
    .line 387
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 391
    move-result-object v3

    .line 392
    .line 393
    .line 394
    invoke-direct {v1, v3, v13}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/semantics/SemanticsEntity;Z)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 398
    move-result-object v3

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 402
    move-result-object v4

    .line 403
    .line 404
    .line 405
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 406
    move-result-object v3

    .line 407
    .line 408
    move-object/from16 v18, v3

    .line 409
    .line 410
    check-cast v18, Ljava/util/List;

    .line 411
    .line 412
    if-eqz v18, :cond_e

    .line 413
    .line 414
    const-string v19, ","

    .line 415
    .line 416
    const/16 v20, 0x0

    .line 417
    .line 418
    const/16 v21, 0x0

    .line 419
    .line 420
    const/16 v22, 0x0

    .line 421
    .line 422
    const/16 v23, 0x0

    .line 423
    .line 424
    const/16 v24, 0x0

    .line 425
    .line 426
    const/16 v25, 0x3e

    .line 427
    .line 428
    const/16 v26, 0x0

    .line 429
    .line 430
    .line 431
    invoke-static/range {v18 .. v26}, Landroidx/compose/ui/TempListUtilsKt;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 432
    move-result-object v3

    .line 433
    goto :goto_4

    .line 434
    :cond_e
    const/4 v3, 0x0

    .line 435
    .line 436
    .line 437
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 442
    move-result-object v2

    .line 443
    .line 444
    .line 445
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 446
    move-result-object v1

    .line 447
    .line 448
    move-object/from16 v18, v1

    .line 449
    .line 450
    check-cast v18, Ljava/util/List;

    .line 451
    .line 452
    if-eqz v18, :cond_f

    .line 453
    .line 454
    const-string v19, ","

    .line 455
    .line 456
    const/16 v20, 0x0

    .line 457
    .line 458
    const/16 v21, 0x0

    .line 459
    .line 460
    const/16 v22, 0x0

    .line 461
    .line 462
    const/16 v23, 0x0

    .line 463
    .line 464
    const/16 v24, 0x0

    .line 465
    .line 466
    const/16 v25, 0x3e

    .line 467
    .line 468
    const/16 v26, 0x0

    .line 469
    .line 470
    .line 471
    invoke-static/range {v18 .. v26}, Landroidx/compose/ui/TempListUtilsKt;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 472
    move-result-object v1

    .line 473
    goto :goto_5

    .line 474
    :cond_f
    const/4 v1, 0x0

    .line 475
    .line 476
    :goto_5
    if-eqz v3, :cond_10

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 482
    .line 483
    :cond_10
    if-eqz v1, :cond_11

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 487
    move-result-object v2

    .line 488
    .line 489
    .line 490
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    :cond_11
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 494
    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    .line 498
    :cond_12
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 499
    move-result v1

    .line 500
    .line 501
    const/16 v2, 0x800

    .line 502
    .line 503
    .line 504
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    move-result-object v3

    .line 506
    const/4 v4, 0x0

    .line 507
    .line 508
    const/16 v5, 0x8

    .line 509
    const/4 v6, 0x0

    .line 510
    .line 511
    move-object/from16 v0, p0

    .line 512
    .line 513
    .line 514
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 515
    .line 516
    goto/16 :goto_2

    .line 517
    .line 518
    .line 519
    :cond_13
    :goto_6
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 520
    move-result v1

    .line 521
    .line 522
    const/16 v2, 0x800

    .line 523
    .line 524
    .line 525
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    move-result-object v3

    .line 527
    const/4 v4, 0x0

    .line 528
    .line 529
    const/16 v5, 0x8

    .line 530
    const/4 v6, 0x0

    .line 531
    .line 532
    move-object/from16 v0, p0

    .line 533
    .line 534
    .line 535
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 539
    move-result v1

    .line 540
    .line 541
    .line 542
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    move-result-object v3

    .line 544
    .line 545
    .line 546
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 547
    .line 548
    goto/16 :goto_2

    .line 549
    .line 550
    .line 551
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 552
    move-result-object v3

    .line 553
    .line 554
    .line 555
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    move-result v3

    .line 557
    .line 558
    if-eqz v3, :cond_16

    .line 559
    .line 560
    .line 561
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 562
    move-result v1

    .line 563
    .line 564
    .line 565
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    move-result-object v2

    .line 567
    .line 568
    .line 569
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 570
    move-result-object v0

    .line 571
    .line 572
    if-eqz v0, :cond_15

    .line 573
    .line 574
    check-cast v0, Ljava/util/List;

    .line 575
    .line 576
    const/16 v3, 0x800

    .line 577
    .line 578
    .line 579
    invoke-direct {v7, v1, v3, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R(IILjava/lang/Integer;Ljava/util/List;)Z

    .line 580
    .line 581
    goto/16 :goto_2

    .line 582
    .line 583
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    .line 584
    .line 585
    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    .line 586
    .line 587
    .line 588
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 589
    throw v0

    .line 590
    .line 591
    .line 592
    :cond_16
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 593
    move-result-object v3

    .line 594
    .line 595
    .line 596
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    move-result v3

    .line 598
    .line 599
    const-string v6, ""

    .line 600
    .line 601
    if-eqz v3, :cond_1e

    .line 602
    .line 603
    .line 604
    invoke-static {v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->h(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 605
    move-result v0

    .line 606
    .line 607
    if-eqz v0, :cond_1d

    .line 608
    .line 609
    .line 610
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->b()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 611
    move-result-object v0

    .line 612
    .line 613
    .line 614
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    .line 615
    move-result-object v0

    .line 616
    .line 617
    if-eqz v0, :cond_17

    .line 618
    goto :goto_7

    .line 619
    :cond_17
    move-object v0, v6

    .line 620
    .line 621
    .line 622
    :goto_7
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 623
    move-result-object v1

    .line 624
    .line 625
    .line 626
    invoke-direct {v7, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    .line 627
    move-result-object v1

    .line 628
    .line 629
    if-eqz v1, :cond_18

    .line 630
    move-object v6, v1

    .line 631
    .line 632
    .line 633
    :cond_18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 634
    move-result v1

    .line 635
    .line 636
    .line 637
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 638
    move-result v2

    .line 639
    .line 640
    .line 641
    invoke-static {v1, v2}, Lj8/m;->j(II)I

    .line 642
    move-result v3

    .line 643
    .line 644
    move/from16 v4, v16

    .line 645
    .line 646
    :goto_8
    if-ge v4, v3, :cond_1a

    .line 647
    .line 648
    .line 649
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 650
    move-result v13

    .line 651
    .line 652
    .line 653
    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 654
    move-result v5

    .line 655
    .line 656
    if-eq v13, v5, :cond_19

    .line 657
    goto :goto_9

    .line 658
    .line 659
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 660
    goto :goto_8

    .line 661
    .line 662
    :cond_1a
    :goto_9
    move/from16 v5, v16

    .line 663
    .line 664
    :goto_a
    sub-int v13, v3, v4

    .line 665
    .line 666
    if-ge v5, v13, :cond_1c

    .line 667
    .line 668
    add-int/lit8 v13, v1, -0x1

    .line 669
    sub-int/2addr v13, v5

    .line 670
    .line 671
    .line 672
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 673
    move-result v13

    .line 674
    .line 675
    add-int/lit8 v19, v2, -0x1

    .line 676
    .line 677
    move/from16 v20, v3

    .line 678
    .line 679
    sub-int v3, v19, v5

    .line 680
    .line 681
    .line 682
    invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 683
    move-result v3

    .line 684
    .line 685
    if-eq v13, v3, :cond_1b

    .line 686
    goto :goto_b

    .line 687
    .line 688
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 689
    .line 690
    move/from16 v3, v20

    .line 691
    goto :goto_a

    .line 692
    :cond_1c
    :goto_b
    sub-int/2addr v1, v5

    .line 693
    sub-int/2addr v1, v4

    .line 694
    sub-int/2addr v2, v5

    .line 695
    sub-int/2addr v2, v4

    .line 696
    .line 697
    .line 698
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 699
    move-result v3

    .line 700
    .line 701
    const/16 v5, 0x10

    .line 702
    .line 703
    .line 704
    invoke-virtual {v7, v3, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 705
    move-result-object v3

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 721
    move-result-object v0

    .line 722
    .line 723
    .line 724
    const v1, 0x186a0

    .line 725
    .line 726
    .line 727
    invoke-direct {v7, v6, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 728
    move-result-object v1

    .line 729
    .line 730
    .line 731
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    invoke-direct {v7, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 735
    .line 736
    goto/16 :goto_2

    .line 737
    .line 738
    .line 739
    :cond_1d
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 740
    move-result v1

    .line 741
    .line 742
    const/16 v2, 0x800

    .line 743
    const/4 v0, 0x2

    .line 744
    .line 745
    .line 746
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    move-result-object v3

    .line 748
    const/4 v4, 0x0

    .line 749
    .line 750
    const/16 v5, 0x8

    .line 751
    const/4 v6, 0x0

    .line 752
    .line 753
    move-object/from16 v0, p0

    .line 754
    .line 755
    .line 756
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 757
    .line 758
    goto/16 :goto_2

    .line 759
    .line 760
    .line 761
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 762
    move-result-object v3

    .line 763
    .line 764
    .line 765
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 766
    move-result v3

    .line 767
    .line 768
    if-eqz v3, :cond_21

    .line 769
    .line 770
    .line 771
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 772
    move-result-object v0

    .line 773
    .line 774
    .line 775
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    .line 776
    move-result-object v0

    .line 777
    .line 778
    if-eqz v0, :cond_20

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 782
    move-result-object v0

    .line 783
    .line 784
    if-nez v0, :cond_1f

    .line 785
    goto :goto_c

    .line 786
    :cond_1f
    move-object v6, v0

    .line 787
    .line 788
    .line 789
    :cond_20
    :goto_c
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 790
    move-result-object v0

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 794
    move-result-object v1

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 798
    move-result-object v0

    .line 799
    .line 800
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 804
    move-result-wide v0

    .line 805
    .line 806
    .line 807
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 808
    move-result v2

    .line 809
    .line 810
    .line 811
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 812
    move-result v3

    .line 813
    .line 814
    .line 815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 816
    move-result-object v3

    .line 817
    .line 818
    .line 819
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 820
    move-result v0

    .line 821
    .line 822
    .line 823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 824
    move-result-object v4

    .line 825
    .line 826
    .line 827
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 828
    move-result v0

    .line 829
    .line 830
    .line 831
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 832
    move-result-object v5

    .line 833
    .line 834
    .line 835
    const v0, 0x186a0

    .line 836
    .line 837
    .line 838
    invoke-direct {v7, v6, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 839
    move-result-object v0

    .line 840
    move-object v6, v0

    .line 841
    .line 842
    check-cast v6, Ljava/lang/String;

    .line 843
    .line 844
    move-object/from16 v0, p0

    .line 845
    move v1, v2

    .line 846
    move-object v2, v3

    .line 847
    move-object v3, v4

    .line 848
    move-object v4, v5

    .line 849
    move-object v5, v6

    .line 850
    .line 851
    .line 852
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    .line 853
    move-result-object v0

    .line 854
    .line 855
    .line 856
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 857
    .line 858
    .line 859
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 860
    move-result v0

    .line 861
    .line 862
    .line 863
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->U(I)V

    .line 864
    .line 865
    goto/16 :goto_2

    .line 866
    .line 867
    .line 868
    :cond_21
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 869
    move-result-object v3

    .line 870
    .line 871
    .line 872
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    move-result v3

    .line 874
    .line 875
    if-eqz v3, :cond_22

    .line 876
    goto :goto_d

    .line 877
    .line 878
    .line 879
    :cond_22
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 880
    move-result-object v3

    .line 881
    .line 882
    .line 883
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 884
    move-result v3

    .line 885
    .line 886
    if-eqz v3, :cond_23

    .line 887
    .line 888
    .line 889
    :goto_d
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/node/LayoutNode;

    .line 890
    move-result-object v0

    .line 891
    .line 892
    .line 893
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D(Landroidx/compose/ui/node/LayoutNode;)V

    .line 894
    .line 895
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 896
    .line 897
    .line 898
    invoke-static {v0, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->m(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 899
    move-result-object v0

    .line 900
    .line 901
    .line 902
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 906
    move-result-object v1

    .line 907
    .line 908
    .line 909
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 910
    move-result-object v3

    .line 911
    .line 912
    .line 913
    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 914
    move-result-object v1

    .line 915
    .line 916
    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ScrollObservationScope;->f(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 923
    move-result-object v1

    .line 924
    .line 925
    .line 926
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 927
    move-result-object v2

    .line 928
    .line 929
    .line 930
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 931
    move-result-object v1

    .line 932
    .line 933
    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ScrollObservationScope;->i(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 937
    .line 938
    .line 939
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    .line 940
    .line 941
    goto/16 :goto_2

    .line 942
    .line 943
    .line 944
    :cond_23
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 945
    move-result-object v2

    .line 946
    .line 947
    .line 948
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 949
    move-result v2

    .line 950
    .line 951
    if-eqz v2, :cond_26

    .line 952
    .line 953
    .line 954
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 955
    move-result-object v0

    .line 956
    .line 957
    if-eqz v0, :cond_25

    .line 958
    .line 959
    check-cast v0, Ljava/lang/Boolean;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 963
    move-result v0

    .line 964
    .line 965
    if-eqz v0, :cond_24

    .line 966
    .line 967
    .line 968
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 969
    move-result v0

    .line 970
    .line 971
    .line 972
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 973
    move-result v0

    .line 974
    .line 975
    .line 976
    invoke-virtual {v7, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 977
    move-result-object v0

    .line 978
    .line 979
    .line 980
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Q(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 981
    .line 982
    .line 983
    :cond_24
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 984
    move-result v0

    .line 985
    .line 986
    .line 987
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 988
    move-result v1

    .line 989
    .line 990
    const/16 v2, 0x800

    .line 991
    .line 992
    .line 993
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 994
    move-result-object v3

    .line 995
    const/4 v4, 0x0

    .line 996
    .line 997
    const/16 v5, 0x8

    .line 998
    const/4 v6, 0x0

    .line 999
    .line 1000
    move-object/from16 v0, p0

    .line 1001
    .line 1002
    .line 1003
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1004
    .line 1005
    goto/16 :goto_2

    .line 1006
    .line 1007
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1008
    .line 1009
    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 1010
    .line 1011
    .line 1012
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1013
    throw v0

    .line 1014
    .line 1015
    :cond_26
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1019
    move-result-object v3

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1023
    move-result v1

    .line 1024
    .line 1025
    if-eqz v1, :cond_2b

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1029
    move-result-object v0

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1033
    move-result-object v1

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->f(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1037
    move-result-object v0

    .line 1038
    .line 1039
    check-cast v0, Ljava/util/List;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->b()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1043
    move-result-object v1

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1047
    move-result-object v2

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1051
    move-result-object v1

    .line 1052
    .line 1053
    check-cast v1, Ljava/util/List;

    .line 1054
    .line 1055
    if-eqz v1, :cond_29

    .line 1056
    .line 1057
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1058
    .line 1059
    .line 1060
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1064
    move-result v3

    .line 1065
    .line 1066
    move/from16 v4, v16

    .line 1067
    .line 1068
    :goto_e
    if-ge v4, v3, :cond_27

    .line 1069
    .line 1070
    .line 1071
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1072
    move-result-object v5

    .line 1073
    .line 1074
    check-cast v5, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    .line 1078
    move-result-object v5

    .line 1079
    .line 1080
    .line 1081
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    add-int/lit8 v4, v4, 0x1

    .line 1084
    goto :goto_e

    .line 1085
    .line 1086
    :cond_27
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 1087
    .line 1088
    .line 1089
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1093
    move-result v3

    .line 1094
    .line 1095
    move/from16 v4, v16

    .line 1096
    .line 1097
    :goto_f
    if-ge v4, v3, :cond_28

    .line 1098
    .line 1099
    .line 1100
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1101
    move-result-object v5

    .line 1102
    .line 1103
    check-cast v5, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->b()Ljava/lang/String;

    .line 1107
    move-result-object v5

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    add-int/lit8 v4, v4, 0x1

    .line 1113
    goto :goto_f

    .line 1114
    .line 1115
    .line 1116
    :cond_28
    invoke-interface {v2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 1117
    move-result v1

    .line 1118
    .line 1119
    if-eqz v1, :cond_2a

    .line 1120
    .line 1121
    .line 1122
    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 1123
    move-result v0

    .line 1124
    .line 1125
    if-nez v0, :cond_3

    .line 1126
    goto :goto_10

    .line 1127
    .line 1128
    :cond_29
    check-cast v0, Ljava/util/Collection;

    .line 1129
    .line 1130
    .line 1131
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1132
    move-result v0

    .line 1133
    xor-int/2addr v0, v13

    .line 1134
    .line 1135
    if-eqz v0, :cond_4

    .line 1136
    .line 1137
    :cond_2a
    :goto_10
    move/from16 v17, v13

    .line 1138
    .line 1139
    goto/16 :goto_2

    .line 1140
    .line 1141
    .line 1142
    :cond_2b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1143
    move-result-object v1

    .line 1144
    .line 1145
    instance-of v1, v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1146
    .line 1147
    if-eqz v1, :cond_2a

    .line 1148
    .line 1149
    .line 1150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1151
    move-result-object v1

    .line 1152
    .line 1153
    if-eqz v1, :cond_2c

    .line 1154
    .line 1155
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->b()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1159
    move-result-object v2

    .line 1160
    .line 1161
    .line 1162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1163
    move-result-object v0

    .line 1164
    .line 1165
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v2, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1169
    move-result-object v0

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z

    .line 1173
    move-result v0

    .line 1174
    .line 1175
    xor-int/lit8 v17, v0, 0x1

    .line 1176
    .line 1177
    goto/16 :goto_2

    .line 1178
    .line 1179
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1180
    .line 1181
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    .line 1182
    .line 1183
    .line 1184
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1185
    throw v0

    .line 1186
    .line 1187
    :cond_2d
    if-nez v17, :cond_2e

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v14, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->i(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)Z

    .line 1191
    move-result v17

    .line 1192
    .line 1193
    :cond_2e
    if-eqz v17, :cond_0

    .line 1194
    .line 1195
    .line 1196
    invoke-direct {v7, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 1197
    move-result v1

    .line 1198
    .line 1199
    const/16 v2, 0x800

    .line 1200
    .line 1201
    .line 1202
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1203
    move-result-object v3

    .line 1204
    const/4 v4, 0x0

    .line 1205
    .line 1206
    const/16 v5, 0x8

    .line 1207
    const/4 v6, 0x0

    .line 1208
    .line 1209
    move-object/from16 v0, p0

    .line 1210
    .line 1211
    .line 1212
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1213
    .line 1214
    goto/16 :goto_0

    .line 1215
    :cond_2f
    return-void
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    return-object p1
.end method

.method public final k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v4, :cond_3

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 45
    .line 46
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Landroidx/collection/ArraySet;

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    move-object p1, v5

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 73
    .line 74
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Landroidx/collection/ArraySet;

    .line 77
    .line 78
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 81
    .line 82
    .line 83
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    :try_start_2
    new-instance p1, Landroidx/collection/ArraySet;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/d;

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Lkotlinx/coroutines/channels/t;->iterator()Lkotlinx/coroutines/channels/f;

    .line 98
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    move-object v6, p0

    .line 100
    .line 101
    :goto_1
    :try_start_3
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 106
    .line 107
    iput v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/f;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    if-ne v5, v1, :cond_5

    .line 114
    return-object v1

    .line 115
    :cond_5
    move-object v9, v5

    .line 116
    move-object v5, p1

    .line 117
    move-object p1, v9

    .line 118
    .line 119
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-direct {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 132
    move-result p1

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    iget-object p1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    .line 140
    move-result p1

    .line 141
    const/4 v7, 0x0

    .line 142
    .line 143
    :goto_3
    if-ge v7, p1, :cond_6

    .line 144
    .line 145
    iget-object v8, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v7}, Landroidx/collection/ArraySet;->p(I)Ljava/lang/Object;

    .line 149
    move-result-object v8

    .line 150
    .line 151
    .line 152
    invoke-static {v8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 153
    .line 154
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 155
    .line 156
    .line 157
    invoke-direct {v6, v8, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Y(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/ArraySet;)V

    .line 158
    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    goto :goto_3

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-virtual {v5}, Landroidx/collection/ArraySet;->clear()V

    .line 164
    .line 165
    iget-boolean p1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 166
    .line 167
    if-nez p1, :cond_7

    .line 168
    .line 169
    iput-boolean v4, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 170
    .line 171
    iget-object p1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 172
    .line 173
    iget-object v7, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    :cond_7
    iget-object p1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->clear()V

    .line 182
    .line 183
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    iput-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    .line 188
    .line 189
    iput v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    .line 190
    .line 191
    const-wide/16 v7, 0x64

    .line 192
    .line 193
    .line 194
    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/y0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 195
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .line 197
    if-ne p1, v1, :cond_1

    .line 198
    return-object v1

    .line 199
    .line 200
    :cond_8
    iget-object p1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->clear()V

    .line 204
    .line 205
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 206
    return-object p1

    .line 207
    :catchall_1
    move-exception p1

    .line 208
    move-object v6, p0

    .line 209
    .line 210
    :goto_4
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 214
    throw p1
.end method

.method public final l(ZIJ)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object v2

    .line 9
    move-object v1, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move-wide v5, p3

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m(Ljava/util/Collection;ZIJ)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final m(Ljava/util/Collection;ZIJ)Z
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;ZIJ)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "currentSemanticsNodes"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {p4, p5, v0, v1}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_b

    .line 19
    .line 20
    .line 21
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Offset;->p(J)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsProperties;->A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    if-nez p2, :cond_a

    .line 39
    .line 40
    sget-object p2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsProperties;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 47
    move-object v2, p1

    .line 48
    .line 49
    check-cast v2, Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_9

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->a()Landroid/graphics/Rect;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p4, p5}, Landroidx/compose/ui/geometry/Rect;->b(J)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-nez v3, :cond_4

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 109
    move-result v3

    .line 110
    .line 111
    if-eqz v3, :cond_6

    .line 112
    neg-int v3, p3

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    move v3, p3

    .line 115
    .line 116
    :goto_2
    if-nez p3, :cond_7

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->b()Z

    .line 120
    move-result v4

    .line 121
    .line 122
    if-eqz v4, :cond_7

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_7
    if-gez v3, :cond_8

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-interface {v2}, Le8/a;->invoke()Ljava/lang/Object;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    check-cast v2, Ljava/lang/Number;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 139
    move-result v2

    .line 140
    const/4 v3, 0x0

    .line 141
    .line 142
    cmpl-float v2, v2, v3

    .line 143
    .line 144
    if-lez v2, :cond_3

    .line 145
    goto :goto_4

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->c()Le8/a;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    .line 152
    invoke-interface {v3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Number;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 159
    move-result v3

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->a()Le8/a;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    .line 166
    invoke-interface {v2}, Le8/a;->invoke()Ljava/lang/Object;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    check-cast v2, Ljava/lang/Number;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 173
    move-result v2

    .line 174
    .line 175
    cmpg-float v2, v3, v2

    .line 176
    .line 177
    if-gez v2, :cond_3

    .line 178
    :goto_4
    move v1, v0

    .line 179
    :cond_9
    :goto_5
    return v1

    .line 180
    .line 181
    :cond_a
    new-instance p1, Lw7/s;

    .line 182
    .line 183
    .line 184
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 185
    throw p1

    .line 186
    :cond_b
    :goto_6
    return v1
.end method

.method public final p(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    const-string v0, "obtain(eventType)"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 14
    .line 15
    const-string v0, "android.view.View"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Ljava/util/Map;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 64
    :cond_0
    return-object p2
.end method

.method public final s(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x7

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    const/high16 v4, -0x80000000

    .line 22
    .line 23
    if-eq v0, v2, :cond_3

    .line 24
    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    return v1

    .line 33
    .line 34
    :cond_1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 35
    .line 36
    if-eq v0, v4, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 50
    move-result v3

    .line 51
    :goto_0
    return v3

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z(FF)I

    .line 63
    move-result v0

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->f0(I)V

    .line 77
    .line 78
    if-ne v0, v4, :cond_4

    .line 79
    move v3, p1

    .line 80
    :cond_4
    return v3
.end method

.method public final z(FF)I
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/node/b;->a(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/node/HitTestResult;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 23
    move-result-wide v5

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    .line 27
    const/16 v10, 0xc

    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v7, v0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/node/LayoutNode;->F0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    :cond_0
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v3, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/semantics/SemanticsEntity;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->e()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q1()Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 104
    .line 105
    if-nez p1, :cond_1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroidx/compose/ui/semantics/SemanticsModifier;->getId()I

    .line 115
    move-result p1

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(I)I

    .line 119
    move-result p1

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_1
    const/high16 p1, -0x80000000

    .line 123
    :goto_0
    return p1
.end method
