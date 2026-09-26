.class public final Landroidx/compose/ui/platform/AndroidAccessibilityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/AccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FlagContentControls:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FlagContentIcons:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FlagContentText:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->Companion:Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    const-string v0, "accessibility"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string v0, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method


# virtual methods
.method public a(JZZZ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x7fffffff

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    return-wide p1

    .line 9
    .line 10
    :cond_0
    if-eqz p4, :cond_1

    .line 11
    .line 12
    or-int/lit8 p3, p3, 0x2

    .line 13
    .line 14
    :cond_1
    if-eqz p5, :cond_2

    .line 15
    .line 16
    or-int/lit8 p3, p3, 0x4

    .line 17
    .line 18
    :cond_2
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v0, 0x1d

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v1, 0x7fffffffffffffffL

    .line 26
    .line 27
    if-lt p4, v0, :cond_4

    .line 28
    .line 29
    sget-object p4, Landroidx/compose/ui/platform/Api29Impl;->INSTANCE:Landroidx/compose/ui/platform/Api29Impl;

    .line 30
    .line 31
    iget-object p5, p0, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 32
    long-to-int p1, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p5, p1, p3}, Landroidx/compose/ui/platform/Api29Impl;->a(Landroid/view/accessibility/AccessibilityManager;II)I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    const p2, 0x7fffffff

    .line 40
    .line 41
    if-ne p1, p2, :cond_3

    .line 42
    :goto_0
    move-wide p1, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    int-to-long p1, p1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_4
    if-eqz p5, :cond_5

    .line 48
    .line 49
    iget-object p3, p0, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 53
    move-result p3

    .line 54
    .line 55
    if-eqz p3, :cond_5

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    :goto_1
    return-wide p1
.end method
