.class public final Landroidx/compose/ui/focus/FocusTraversalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTraversal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTraversal.kt\nandroidx/compose/ui/focus/FocusTraversalKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,250:1\n204#2,11:251\n460#2,7:265\n728#2,2:272\n146#2:274\n467#2,4:275\n460#2,11:279\n1182#3:262\n1161#3,2:263\n*S KotlinDebug\n*F\n+ 1 FocusTraversal.kt\nandroidx/compose/ui/focus/FocusTraversalKt\n*L\n195#1:251,11\n199#1:265,7\n201#1:272,2\n203#1:274\n199#1:275,4\n216#1:279,11\n198#1:262\n198#1:263,2\n*E\n"
.end annotation


# static fields
.field private static final invalidFocusDirection:Ljava/lang/String; = "Invalid FocusDirection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 5
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ")",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-lez v1, :cond_5

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    .line 23
    :cond_0
    aget-object v4, v0, v3

    .line 24
    .line 25
    check-cast v4, Landroidx/compose/ui/focus/FocusModifier;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusStateImpl;->d()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 38
    .line 39
    const/16 v1, 0x10

    .line 40
    .line 41
    new-array v1, v1, [Landroidx/compose/ui/focus/FocusModifier;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-lez v1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    :cond_1
    aget-object v3, p0, v2

    .line 61
    .line 62
    check-cast v3, Landroidx/compose/ui/focus/FocusModifier;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusStateImpl;->d()Z

    .line 70
    move-result v4

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/runtime/collection/MutableVector;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 84
    move-result v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 88
    .line 89
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    if-lt v2, v1, :cond_1

    .line 92
    :cond_3
    return-object v0

    .line 93
    .line 94
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    if-lt v3, v1, :cond_0

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    sget-object v1, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$1:[I

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
    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    new-instance p0, Lw7/s;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 27
    throw p0

    .line 28
    :cond_0
    :pswitch_0
    move-object p0, v1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 39
    move-result-object p0

    .line 40
    :goto_0
    :pswitch_2
    return-object p0

    .line 41
    .line 42
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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->n()Landroidx/compose/ui/focus/FocusModifier;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v1

    .line 22
    .line 23
    aget v1, v2, v1

    .line 24
    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

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
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    :pswitch_1
    return-object p0

    .line 40
    nop

    .line 41
    .line 42
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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/input/key/KeyInputModifier;
    .locals 7
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->j()Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-lez v3, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    :cond_1
    aget-object v5, v2, v4

    .line 37
    .line 38
    check-cast v5, Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Landroidx/compose/ui/input/key/KeyInputModifier;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    .line 45
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v6

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {v5, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->h(Landroidx/compose/ui/input/key/KeyInputModifier;Landroidx/compose/ui/input/key/KeyInputModifier;)Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    if-lt v4, v3, :cond_1

    .line 57
    .line 58
    :cond_3
    if-eqz v1, :cond_4

    .line 59
    return-object v1

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->k()Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    :goto_0
    return-object v1
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->r(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 28
    move-result-object p0

    .line 29
    :cond_1
    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/focus/FocusModifier;ILandroidx/compose/ui/unit/LayoutDirection;Le8/l;)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$focusSearch"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "onFound"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {p0, p1, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->f(Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 42
    move-result p0

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->c()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->g()I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->h()I

    .line 70
    move-result v1

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->a()I

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-static {p0, p1, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->r(Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 91
    move-result p0

    .line 92
    goto :goto_5

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->b()I

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    .line 103
    if-eqz v1, :cond_9

    .line 104
    .line 105
    sget-object p1, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result p2

    .line 110
    .line 111
    aget p1, p1, p2

    .line 112
    const/4 p2, 0x1

    .line 113
    .line 114
    if-eq p1, p2, :cond_7

    .line 115
    const/4 p2, 0x2

    .line 116
    .line 117
    if-ne p1, p2, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->g()I

    .line 121
    move-result p1

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_6
    new-instance p0, Lw7/s;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 128
    throw p0

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->c()I

    .line 132
    move-result p1

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    if-eqz p0, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p1, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->r(Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 142
    move-result p0

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    :goto_3
    move p0, v2

    .line 145
    goto :goto_5

    .line 146
    .line 147
    .line 148
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->e()I

    .line 149
    move-result p2

    .line 150
    .line 151
    .line 152
    invoke-static {p1, p2}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 153
    move-result p1

    .line 154
    .line 155
    if-eqz p1, :cond_c

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 165
    move-result-object p1

    .line 166
    goto :goto_4

    .line 167
    :cond_a
    const/4 p1, 0x0

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result p0

    .line 172
    .line 173
    if-nez p0, :cond_8

    .line 174
    .line 175
    if-nez p1, :cond_b

    .line 176
    goto :goto_3

    .line 177
    .line 178
    .line 179
    :cond_b
    invoke-interface {p3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object p0

    .line 181
    .line 182
    check-cast p0, Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    move-result p0

    .line 187
    :goto_5
    return p0

    .line 188
    .line 189
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    const-string p1, "Invalid FocusDirection"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p0
.end method

.method public static final g(Landroidx/compose/ui/focus/FocusModifier;)Z
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
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->l()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-ne p0, v1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1
.end method

.method private static final h(Landroidx/compose/ui/input/key/KeyInputModifier;Landroidx/compose/ui/input/key/KeyInputModifier;)Landroidx/compose/ui/input/key/KeyInputModifier;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyInputModifier;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 7
    move-result-object v0

    .line 8
    move-object v1, p1

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-static {v1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyInputModifier;->b()Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyInputModifier;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    :cond_2
    return-object p0

    .line 32
    :cond_3
    return-object p1
.end method
