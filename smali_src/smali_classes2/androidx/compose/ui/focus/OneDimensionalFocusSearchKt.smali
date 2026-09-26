.class public final Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneDimensionalFocusSearch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneDimensionalFocusSearch.kt\nandroidx/compose/ui/focus/OneDimensionalFocusSearchKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,208:1\n165#1,3:209\n168#1,2:213\n171#1,5:216\n180#1,3:221\n183#1,2:225\n186#1,5:228\n53#2:212\n523#2:215\n53#2:224\n523#2:227\n204#2,11:233\n492#2,11:244\n53#2:255\n523#2:256\n523#2:257\n53#2:258\n523#2:259\n523#2:260\n*S KotlinDebug\n*F\n+ 1 OneDimensionalFocusSearch.kt\nandroidx/compose/ui/focus/OneDimensionalFocusSearchKt\n*L\n123#1:209,3\n123#1:213,2\n123#1:216,5\n126#1:221,3\n126#1:225,2\n126#1:228,5\n123#1:212\n123#1:215\n126#1:224\n126#1:227\n145#1:233,11\n152#1:244,11\n167#1:255\n169#1:256\n171#1:257\n182#1:258\n184#1:259\n186#1:260\n*E\n"
.end annotation


# static fields
.field private static final InvalidFocusDirection:Ljava/lang/String; = "This function should only be used for 1-D focus search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoActiveChild:Ljava/lang/String; = "ActiveParent must have a focusedChild"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

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
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    new-instance p0, Lw7/s;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 23
    throw p0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->g(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    check-cast p0, Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p0

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_1
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->g(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 48
    move-result v2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v4, "ActiveParent must have a focusedChild"

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 65
    move-result v5

    .line 66
    .line 67
    aget v1, v1, v5

    .line 68
    .line 69
    .line 70
    packed-switch v1, :pswitch_data_1

    .line 71
    .line 72
    new-instance p0, Lw7/s;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 76
    throw p0

    .line 77
    .line 78
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    .line 88
    :pswitch_4
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 92
    move-result v1

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 96
    move-result v2

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :pswitch_5
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-nez v1, :cond_1

    .line 104
    .line 105
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 113
    move-result p0

    .line 114
    .line 115
    if-eqz p0, :cond_0

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :pswitch_6
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 120
    move-result p0

    .line 121
    .line 122
    if-nez p0, :cond_1

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 127
    .line 128
    check-cast p0, Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    move-result p0

    .line 133
    .line 134
    if-eqz p0, :cond_0

    .line 135
    :cond_1
    :goto_0
    return v2

    .line 136
    .line 137
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    nop

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static final c(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

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
    .line 24
    :pswitch_0
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    check-cast p0, Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :pswitch_1
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->h(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 36
    move-result p0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0, v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 59
    move-result p0

    .line 60
    .line 61
    if-eqz p0, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 66
    :goto_1
    return p0

    .line 67
    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string p1, "ActiveParent must have a focusedChild"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final d(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2, v0}, Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;->a(Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/focus/FocusModifier;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->n()Landroidx/compose/ui/focus/FocusModifier;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

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

.method public static final f(Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z
    .locals 2
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$oneDimensionalFocusSearch"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "onFound"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p2}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p2}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 41
    move-result p0

    .line 42
    :goto_0
    return p0

    .line 43
    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "This function should only be used for 1-D focus search"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
.end method

.method private static final g(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->j(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    const/4 v1, 0x1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    aget-object v2, p0, v0

    .line 26
    .line 27
    check-cast v2, Landroidx/compose/ui/focus/FocusModifier;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->g(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {v2, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    return v1

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    if-gez v0, :cond_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method private static final h(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->j(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    move v2, v1

    .line 24
    .line 25
    :cond_0
    aget-object v3, p0, v2

    .line 26
    .line 27
    check-cast v3, Landroidx/compose/ui/focus/FocusModifier;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->g(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {v3, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    if-lt v2, v0, :cond_0

    .line 46
    :cond_2
    :goto_0
    return v1
.end method

.method private static final i(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILe8/l;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p1, "This function should only be used within a parent that has focus."

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->j(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 37
    .line 38
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Lj8/i;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 60
    move-result v4

    .line 61
    sub-int/2addr v4, v3

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2, v4}, Lj8/i;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lj8/g;->e()I

    .line 68
    move-result v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lj8/g;->f()I

    .line 72
    move-result v1

    .line 73
    .line 74
    if-gt v4, v1, :cond_7

    .line 75
    move v5, v2

    .line 76
    .line 77
    :goto_1
    if-eqz v5, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    aget-object v6, v6, v4

    .line 84
    .line 85
    check-cast v6, Landroidx/compose/ui/focus/FocusModifier;

    .line 86
    .line 87
    .line 88
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusTraversalKt;->g(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-static {v6, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 95
    move-result v6

    .line 96
    .line 97
    if-eqz v6, :cond_2

    .line 98
    return v3

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    aget-object v6, v6, v4

    .line 105
    .line 106
    .line 107
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result v6

    .line 109
    .line 110
    if-eqz v6, :cond_3

    .line 111
    move v5, v3

    .line 112
    .line 113
    :cond_3
    if-eq v4, v1, :cond_7

    .line 114
    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    goto :goto_1

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 120
    move-result v0

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    new-instance v1, Lj8/i;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 136
    move-result v4

    .line 137
    sub-int/2addr v4, v3

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, v2, v4}, Lj8/i;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lj8/g;->e()I

    .line 144
    move-result v4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lj8/g;->f()I

    .line 148
    move-result v1

    .line 149
    .line 150
    if-gt v4, v1, :cond_7

    .line 151
    move v5, v2

    .line 152
    .line 153
    :goto_2
    if-eqz v5, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 157
    move-result-object v6

    .line 158
    .line 159
    aget-object v6, v6, v1

    .line 160
    .line 161
    check-cast v6, Landroidx/compose/ui/focus/FocusModifier;

    .line 162
    .line 163
    .line 164
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusTraversalKt;->g(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 165
    move-result v7

    .line 166
    .line 167
    if-eqz v7, :cond_5

    .line 168
    .line 169
    .line 170
    invoke-static {v6, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusModifier;Le8/l;)Z

    .line 171
    move-result v6

    .line 172
    .line 173
    if-eqz v6, :cond_5

    .line 174
    return v3

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 178
    move-result-object v6

    .line 179
    .line 180
    aget-object v6, v6, v1

    .line 181
    .line 182
    .line 183
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    move-result v6

    .line 185
    .line 186
    if-eqz v6, :cond_6

    .line 187
    move v5, v3

    .line 188
    .line 189
    :cond_6
    if-eq v1, v4, :cond_7

    .line 190
    .line 191
    add-int/lit8 v1, v1, -0x1

    .line 192
    goto :goto_2

    .line 193
    .line 194
    :cond_7
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 198
    move-result p1

    .line 199
    .line 200
    .line 201
    invoke-static {p2, p1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 202
    move-result p1

    .line 203
    .line 204
    if-nez p1, :cond_9

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    sget-object p2, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 211
    .line 212
    if-eq p1, p2, :cond_9

    .line 213
    .line 214
    .line 215
    invoke-static {p0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->e(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 216
    move-result p1

    .line 217
    .line 218
    if-eqz p1, :cond_8

    .line 219
    goto :goto_3

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object p0

    .line 224
    .line 225
    check-cast p0, Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    move-result p0

    .line 230
    return p0

    .line 231
    :cond_9
    :goto_3
    return v2

    .line 232
    .line 233
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 234
    .line 235
    const-string p1, "This function should only be used for 1-D focus search"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    throw p0
.end method

.method private static final j(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$sort$$inlined$compareBy$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt$sort$$inlined$compareBy$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->z(Ljava/util/Comparator;)V

    .line 9
    return-void
.end method
