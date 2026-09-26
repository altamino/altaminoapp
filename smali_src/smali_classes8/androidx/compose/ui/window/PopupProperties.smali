.class public final Landroidx/compose/ui/window/PopupProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final clippingEnabled:Z

.field private final dismissOnBackPress:Z

.field private final dismissOnClickOutside:Z

.field private final excludeFromSystemGesture:Z

.field private final focusable:Z

.field private final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final usePlatformDefaultWidth:Z


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 9
    .param p4    # Landroidx/compose/ui/window/SecureFlagPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "securePolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 7
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/k;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x1

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 5
    sget-object p4, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v0, p6

    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v1

    move-object p6, v2

    move p7, v3

    move p8, v0

    .line 6
    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V
    .locals 1
    .param p4    # Landroidx/compose/ui/window/SecureFlagPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "securePolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    iput-boolean p2, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    iput-boolean p3, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    iput-object p4, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    iput-boolean p5, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    iput-boolean p6, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    iput-boolean p7, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p9, v0

    goto :goto_0

    :cond_0
    move p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 3
    sget-object p4, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, p5

    :goto_3
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, p6

    :goto_4
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move p8, v0

    goto :goto_5

    :cond_6
    move p8, p7

    :goto_5
    move-object p1, p0

    move p2, p9

    move p3, v2

    move p4, v3

    move-object p5, v4

    move p6, v5

    move p7, v1

    .line 4
    invoke-direct/range {p1 .. p8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/window/PopupProperties;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/window/PopupProperties;

    .line 15
    .line 16
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 22
    .line 23
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 24
    .line 25
    if-eq v1, v3, :cond_3

    .line 26
    return v2

    .line 27
    .line 28
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 29
    .line 30
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 31
    .line 32
    if-eq v1, v3, :cond_4

    .line 33
    return v2

    .line 34
    .line 35
    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 36
    .line 37
    iget-object v3, p1, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 38
    .line 39
    if-eq v1, v3, :cond_5

    .line 40
    return v2

    .line 41
    .line 42
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_6

    .line 47
    return v2

    .line 48
    .line 49
    :cond_6
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    .line 52
    .line 53
    if-eq v1, v3, :cond_7

    .line 54
    return v2

    .line 55
    .line 56
    :cond_7
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    .line 59
    .line 60
    if-eq v1, p1, :cond_8

    .line 61
    return v2

    .line 62
    :cond_8
    return v0
.end method

.method public final f()Landroidx/compose/ui/window/SecureFlagPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/c;->a(Z)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->focusable:Z

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/ui/window/PopupProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->clippingEnabled:Z

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method
