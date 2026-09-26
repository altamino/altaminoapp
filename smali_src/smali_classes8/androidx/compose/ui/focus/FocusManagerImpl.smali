.class public final Landroidx/compose/ui/focus/FocusManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusManagerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusManager.kt\nandroidx/compose/ui/focus/FocusManagerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"
.end annotation


# instance fields
.field private final focusModifier:Landroidx/compose/ui/focus/FocusModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final modifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/focus/FocusManagerImpl;-><init>(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "focusModifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Landroidx/compose/ui/focus/FocusModifier;

    sget-object p2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3, v0}, Landroidx/compose/ui/focus/FocusModifier;-><init>(Landroidx/compose/ui/focus/FocusStateImpl;Le8/l;ILkotlin/jvm/internal/k;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusManagerImpl;-><init>(Landroidx/compose/ui/focus/FocusModifier;)V

    return-void
.end method

.method private final j(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->c()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->a()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v2}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusManagerImpl;->b(Z)V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->a()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    return v1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusManagerImpl;->a(I)Z

    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public a(I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusManagerImpl;->e()Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v2}, Landroidx/compose/ui/focus/FocusOrderModifierKt;->a(Landroidx/compose/ui/focus/FocusModifier;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    sget-object v3, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester;->c()V

    .line 35
    return v4

    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusManagerImpl;->e()Landroidx/compose/ui/unit/LayoutDirection;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    new-instance v5, Landroidx/compose/ui/focus/FocusManagerImpl$moveFocus$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v0}, Landroidx/compose/ui/focus/FocusManagerImpl$moveFocus$1;-><init>(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p1, v3, v5}, Landroidx/compose/ui/focus/FocusTraversalKt;->f(Landroidx/compose/ui/focus/FocusModifier;ILandroidx/compose/ui/unit/LayoutDirection;Le8/l;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusManagerImpl;->j(I)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    :cond_2
    move v1, v4

    .line 60
    :cond_3
    return v1
.end method

.method public b(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusModifier;Z)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/focus/FocusManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v0

    .line 23
    .line 24
    aget v0, v1, v0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    new-instance p1, Lw7/s;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 33
    throw p1

    .line 34
    .line 35
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusManagerKt;->b(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 6
    return-void
.end method

.method public final d()Landroidx/compose/ui/focus/FocusModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusManagerKt;->a(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final f()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusModifier;Z)Z

    .line 7
    return-void
.end method

.method public final h(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusManagerImpl;->focusModifier:Landroidx/compose/ui/focus/FocusModifier;

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 18
    :cond_0
    return-void
.end method
