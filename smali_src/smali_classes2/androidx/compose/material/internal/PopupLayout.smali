.class final Landroidx/compose/material/internal/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/internal/PopupLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/PopupLayout\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,471:1\n155#2:472\n1#3:473\n76#4:474\n102#4,2:475\n76#4:477\n102#4,2:478\n76#4:480\n76#4:481\n102#4,2:482\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/PopupLayout\n*L\n237#1:472\n231#1:474\n231#1:475,2\n232#1:477\n232#1:478,2\n235#1:480\n282#1:481\n282#1:482,2\n*E\n"
.end annotation


# instance fields
.field private final canCalculatePosition$delegate:Landroidx/compose/runtime/State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composeView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dismissOnOutsideClick:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxSupportedElevation:F

.field private onDismissRequest:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final params:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentBounds$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final popupContentSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previousWindowVisibleFrame:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldCreateCompositionOnAttachedToWindow:Z

.field private testTag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpWindowVisibleFrame:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final windowManager:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/a;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V
    .locals 7
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/window/PopupPositionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "testTag"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "composeView"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "density"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "initialPositionProvider"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "popupId"

    .line 23
    .line 24
    .line 25
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string v0, "composeView.context"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x6

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p0

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Le8/a;

    .line 45
    .line 46
    iput-object p2, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string/jumbo p2, "window"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    check-cast p1, Landroid/view/WindowManager;

    .line 63
    .line 64
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/compose/material/internal/PopupLayout;->k()Landroid/view/WindowManager$LayoutParams;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    iput-object p5, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 75
    .line 76
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 77
    const/4 p1, 0x0

    .line 78
    const/4 p2, 0x2

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 82
    move-result-object p5

    .line 83
    .line 84
    iput-object p5, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 88
    move-result-object p5

    .line 89
    .line 90
    iput-object p5, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 91
    .line 92
    new-instance p5, Landroidx/compose/material/internal/PopupLayout$canCalculatePosition$2;

    .line 93
    .line 94
    .line 95
    invoke-direct {p5, p0}, Landroidx/compose/material/internal/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/material/internal/PopupLayout;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->c(Le8/a;)Landroidx/compose/runtime/State;

    .line 99
    move-result-object p5

    .line 100
    .line 101
    iput-object p5, p0, Landroidx/compose/material/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .line 102
    .line 103
    const/16 p5, 0x1e

    .line 104
    int-to-float p5, p5

    .line 105
    .line 106
    .line 107
    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 108
    move-result p5

    .line 109
    .line 110
    iput p5, p0, Landroidx/compose/material/internal/PopupLayout;->maxSupportedElevation:F

    .line 111
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .line 117
    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 118
    .line 119
    new-instance v0, Landroid/graphics/Rect;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .line 124
    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    .line 125
    .line 126
    sget-object v0, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

    .line 127
    .line 128
    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->dismissOnOutsideClick:Le8/p;

    .line 129
    .line 130
    .line 131
    const v0, 0x1020002

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-static {p0, v0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 159
    move-result-object p3

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 163
    .line 164
    sget p3, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    const-string v1, "Popup:"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p6

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p3, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 185
    const/4 p3, 0x0

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 189
    .line 190
    .line 191
    invoke-interface {p4, p5}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 192
    move-result p3

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p3}, Landroid/view/View;->setElevation(F)V

    .line 196
    .line 197
    new-instance p3, Landroidx/compose/material/internal/PopupLayout$2;

    .line 198
    .line 199
    .line 200
    invoke-direct {p3}, Landroidx/compose/material/internal/PopupLayout$2;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 204
    .line 205
    sget-object p3, Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopupKt;->INSTANCE:Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopupKt;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopupKt;->a()Le8/p;

    .line 209
    move-result-object p3

    .line 210
    .line 211
    .line 212
    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 216
    return-void

    .line 217
    .line 218
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 219
    .line 220
    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    .line 221
    .line 222
    .line 223
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p1
.end method

.method private final getContent()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Le8/p;

    .line 9
    return-object v0
.end method

.method private final k()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6
    .line 7
    .line 8
    const v1, 0x800033

    .line 9
    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 11
    .line 12
    .line 13
    const v1, 0x60020

    .line 14
    .line 15
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 19
    .line 20
    const/16 v1, 0x3e8

    .line 21
    .line 22
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 31
    const/4 v1, -0x2

    .line 32
    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 34
    .line 35
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    const/4 v1, -0x3

    .line 37
    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    sget v2, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-object v0
.end method

.method private final q(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/internal/PopupLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lw7/s;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 21
    throw p1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 26
    return-void
.end method

.method private final r(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 3
    .line 4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 14
    return-object v0
.end method

.method private final setContent(Le8/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x4cd28f78

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/material/internal/PopupLayout;->getContent()Le8/p;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Landroidx/compose/material/internal/PopupLayout$Content$4;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p2}, Landroidx/compose/material/internal/PopupLayout$Content$4;-><init>(Landroidx/compose/material/internal/PopupLayout;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 35
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
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
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    .line 12
    if-ne v0, v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 46
    :cond_1
    return v1

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Le8/a;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 78
    :cond_3
    return v1

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public final getCanCalculatePosition()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 9
    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/material/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    return v0
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public final m()Landroidx/compose/ui/unit/IntRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/unit/IntRect;

    .line 9
    return-object v0
.end method

.method public final n(Landroidx/compose/runtime/CompositionContext;Le8/p;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Landroidx/compose/material/internal/PopupLayout;->setContent(Le8/p;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Landroidx/compose/material/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 20
    return-void
.end method

.method public final o(Landroidx/compose/ui/unit/IntRect;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->t()V

    .line 21
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    move-result v0

    .line 19
    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    .line 33
    cmpl-float v0, v0, v2

    .line 34
    .line 35
    if-gez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    move-result v0

    .line 40
    .line 41
    cmpg-float v0, v0, v1

    .line 42
    .line 43
    if-ltz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    .line 54
    cmpl-float v0, v0, v2

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x4

    .line 62
    .line 63
    if-ne v0, v2, :cond_6

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->m()Landroidx/compose/ui/unit/IntRect;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->dismissOnOutsideClick:Le8/p;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 75
    move-result v3

    .line 76
    .line 77
    cmpg-float v3, v3, v1

    .line 78
    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 83
    move-result v3

    .line 84
    .line 85
    cmpg-float v1, v3, v1

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    const/4 v1, 0x0

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    int-to-float v1, v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 98
    move-result v3

    .line 99
    add-float/2addr v1, v3

    .line 100
    .line 101
    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 104
    int-to-float v3, v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 108
    move-result v4

    .line 109
    add-float/2addr v3, v4

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 113
    move-result-wide v3

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-interface {v2, v1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    :cond_4
    iget-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Le8/a;

    .line 132
    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 137
    :cond_5
    const/4 p1, 0x1

    .line 138
    return p1

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    move-result p1

    .line 143
    return p1
.end method

.method public final p()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    return-void
.end method

.method public final s(Le8/a;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "testTag"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Le8/a;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p3}, Landroidx/compose/material/internal/PopupLayout;->q(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 18
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/IntSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/window/PopupPositionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->m()Landroidx/compose/ui/unit/IntRect;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 17
    move-result-wide v5

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Landroidx/compose/material/internal/PopupLayout;->r(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->f()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->b()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    .line 46
    .line 47
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/window/PopupPositionProvider;->a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 54
    move-result v3

    .line 55
    .line 56
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 62
    move-result v0

    .line 63
    .line 64
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_1
    return-void
.end method
