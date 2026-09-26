.class final Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/RecomposeScopeImpl;->i(I)Le8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/runtime/Composition;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n+ 2 IdentityArrayIntMap.kt\nandroidx/compose/runtime/collection/IdentityArrayIntMap\n*L\n1#1,328:1\n129#2,18:329\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$end$1$2\n*L\n306#1:329,18\n*E\n"
.end annotation


# instance fields
.field final synthetic $instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

.field final synthetic $token:I

.field final synthetic this$0:Landroidx/compose/runtime/RecomposeScopeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArrayIntMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    iput-object p3, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composition;)V
    .locals 13
    .param p1    # Landroidx/compose/runtime/Composition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "composition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->b(Landroidx/compose/runtime/RecomposeScopeImpl;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->d(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_8

    .line 30
    .line 31
    instance-of v0, p1, Landroidx/compose/runtime/CompositionImpl;

    .line 32
    .line 33
    if-eqz v0, :cond_8

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$token:I

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->e()I

    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    move v6, v5

    .line 47
    :goto_0
    const/4 v7, 0x0

    .line 48
    .line 49
    if-ge v5, v3, :cond_6

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->d()[Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    aget-object v8, v8, v5

    .line 56
    .line 57
    if-eqz v8, :cond_5

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->f()[I

    .line 61
    move-result-object v9

    .line 62
    .line 63
    aget v9, v9, v5

    .line 64
    .line 65
    if-eq v9, v1, :cond_0

    .line 66
    const/4 v10, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    move v10, v4

    .line 69
    .line 70
    :goto_1
    if-eqz v10, :cond_2

    .line 71
    move-object v11, p1

    .line 72
    .line 73
    check-cast v11, Landroidx/compose/runtime/CompositionImpl;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v8, v2}, Landroidx/compose/runtime/CompositionImpl;->G(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 77
    .line 78
    instance-of v12, v8, Landroidx/compose/runtime/DerivedState;

    .line 79
    .line 80
    if-eqz v12, :cond_1

    .line 81
    move-object v12, v8

    .line 82
    .line 83
    check-cast v12, Landroidx/compose/runtime/DerivedState;

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    move-object v12, v7

    .line 86
    .line 87
    :goto_2
    if-eqz v12, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/CompositionImpl;->F(Landroidx/compose/runtime/DerivedState;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 94
    move-result-object v11

    .line 95
    .line 96
    if-eqz v11, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/IdentityArrayMap;->i(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/IdentityArrayMap;->f()I

    .line 103
    move-result v11

    .line 104
    .line 105
    if-nez v11, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->e(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/collection/IdentityArrayMap;)V

    .line 109
    .line 110
    :cond_2
    if-nez v10, :cond_4

    .line 111
    .line 112
    if-eq v6, v5, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->d()[Ljava/lang/Object;

    .line 116
    move-result-object v7

    .line 117
    .line 118
    aput-object v8, v7, v6

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->f()[I

    .line 122
    move-result-object v7

    .line 123
    .line 124
    aput v9, v7, v6

    .line 125
    .line 126
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 132
    .line 133
    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1

    .line 138
    .line 139
    .line 140
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->e()I

    .line 141
    move-result p1

    .line 142
    move v1, v6

    .line 143
    .line 144
    :goto_3
    if-ge v1, p1, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->d()[Ljava/lang/Object;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    aput-object v7, v2, v1

    .line 151
    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto :goto_3

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->g(I)V

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->$instances:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->e()I

    .line 162
    move-result p1

    .line 163
    .line 164
    if-nez p1, :cond_8

    .line 165
    .line 166
    iget-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->this$0:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->f(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/collection/IdentityArrayIntMap;)V

    .line 170
    :cond_8
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composition;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;->a(Landroidx/compose/runtime/Composition;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
