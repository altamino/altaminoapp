.class public final Landroidx/compose/ui/semantics/SemanticsEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/semantics/SemanticsEntity;",
        "Landroidx/compose/ui/semantics/SemanticsModifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsEntity.kt\nandroidx/compose/ui/semantics/SemanticsEntity\n+ 2 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n*L\n1#1,91:1\n76#1,13:97\n76#1,13:110\n415#2,5:92\n*S KotlinDebug\n*F\n+ 1 SemanticsEntity.kt\nandroidx/compose/ui/semantics/SemanticsEntity\n*L\n35#1:97,13\n37#1:110,13\n35#1:92,5\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/semantics/SemanticsModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/semantics/SemanticsModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "wrapped"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 14
    return-void
.end method

.method private final k()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->o()V

    .line 17
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->a()Landroidx/compose/ui/node/LayoutNode;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->o()V

    .line 17
    :cond_0
    return-void
.end method

.method public final j()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    :goto_0
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 31
    move-result v3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/compose/ui/node/EntityList;->n([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    if-eqz v0, :cond_6

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sget-object v2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    :goto_1
    if-eqz v2, :cond_6

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    :goto_2
    move-object v1, v0

    .line 72
    goto :goto_4

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 88
    move-result v3

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v3}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    :goto_3
    if-eqz v2, :cond_6

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 122
    move-result v3

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v3}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v0, v1

    .line 131
    goto :goto_3

    .line 132
    .line 133
    :cond_6
    :goto_4
    if-eqz v1, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 140
    .line 141
    .line 142
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m()Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    goto :goto_5

    .line 151
    .line 152
    .line 153
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->e()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsEntity;->j()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->b(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 172
    return-object v0

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

.method public final l()Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->f()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/semantics/SemanticsEntity;->k()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->h2()Landroidx/compose/ui/geometry/Rect;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " id: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Landroidx/compose/ui/semantics/SemanticsModifier;->getId()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, " config: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
