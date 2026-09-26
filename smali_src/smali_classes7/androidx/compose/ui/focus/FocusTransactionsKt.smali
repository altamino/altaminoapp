.class public final Landroidx/compose/ui/focus/FocusTransactionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    const/4 v1, 0x3

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    const/4 v1, 0x4

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 36
    :goto_0
    return-void
.end method

.method private static final b(Landroidx/compose/ui/focus/FocusModifier;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/focus/FocusTransactionsKt;->d(Landroidx/compose/ui/focus/FocusModifier;ZILjava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroidx/compose/ui/focus/FocusModifier;->t(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 19
    move v1, v2

    .line 20
    :cond_0
    return v1

    .line 21
    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Required value was null."

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static final c(Landroidx/compose/ui/focus/FocusModifier;Z)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    new-instance p0, Lw7/s;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 28
    throw p0

    .line 29
    .line 30
    .line 31
    :pswitch_0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 40
    :goto_0
    :pswitch_1
    move p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move p1, v1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :pswitch_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :pswitch_3
    if-eqz p1, :cond_1

    .line 58
    .line 59
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :pswitch_4
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    :goto_1
    return p1

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d(Landroidx/compose/ui/focus/FocusModifier;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusModifier;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v2, 0x2

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    const/4 v1, 0x5

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    const/4 v1, 0x6

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusManager()Landroidx/compose/ui/focus/FocusManager;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusManager;->b(Z)V

    .line 70
    .line 71
    :cond_3
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 75
    :goto_0
    return-void
.end method

.method private static final f(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    new-instance p0, Lw7/s;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 21
    throw p0

    .line 22
    .line 23
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "Granting focus to a deactivated node."

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 34
    .line 35
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    .line 46
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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static final g(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->t(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public static final h(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->q(Z)V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    move-result v0

    .line 41
    .line 42
    aget v0, v1, v0

    .line 43
    .line 44
    .line 45
    packed-switch v0, :pswitch_data_0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->n()Landroidx/compose/ui/focus/FocusModifier;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->j(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :pswitch_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :pswitch_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->k(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 80
    :cond_3
    :goto_1
    return-void

    .line 81
    .line 82
    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->i(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v0

    .line 21
    .line 22
    aget v0, v1, v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    new-instance p0, Lw7/s;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 32
    throw p0

    .line 33
    .line 34
    .line 35
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->n()Landroidx/compose/ui/focus/FocusModifier;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->j(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    if-eqz v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 66
    move-result v1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :pswitch_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->g(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->g(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 88
    move-result v1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 93
    move-result v0

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->g(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 99
    move-result v1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :pswitch_3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->a(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->e(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusModifier;->s(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->g(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 120
    move-result v1

    .line 121
    :cond_2
    :goto_0
    :pswitch_5
    return v1

    .line 122
    .line 123
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string p1, "Non child node cannot request focus."

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    nop

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final j(Landroidx/compose/ui/focus/FocusModifier;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->requestFocus()Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Owner not initialized."

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
.end method

.method public static final k(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 1
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->d()Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->f()V

    .line 15
    :cond_0
    return-void
.end method
