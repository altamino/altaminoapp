.class final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        ">;",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;"
    }
.end annotation


# instance fields
.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "beyondBoundsInfo"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "layoutDirection"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 23
    .line 24
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 25
    .line 26
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 27
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->f(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->a()I

    .line 8
    move-result p1

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->c()I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->b()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->a()I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->d()I

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->e()I

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 76
    move-result v2

    .line 77
    const/4 v3, 0x2

    .line 78
    const/4 v4, 0x1

    .line 79
    .line 80
    if-eqz v2, :cond_8

    .line 81
    .line 82
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 83
    .line 84
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 88
    move-result p2

    .line 89
    .line 90
    aget p2, v1, p2

    .line 91
    .line 92
    if-eq p2, v4, :cond_7

    .line 93
    .line 94
    if-eq p2, v3, :cond_6

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_6
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_7
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 103
    .line 104
    if-eqz p2, :cond_0

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->f()I

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 113
    move-result p2

    .line 114
    .line 115
    if-eqz p2, :cond_b

    .line 116
    .line 117
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 118
    .line 119
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 123
    move-result p2

    .line 124
    .line 125
    aget p2, v1, p2

    .line 126
    .line 127
    if-eq p2, v4, :cond_a

    .line 128
    .line 129
    if-eq p2, v3, :cond_9

    .line 130
    goto :goto_2

    .line 131
    .line 132
    :cond_9
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 133
    .line 134
    if-eqz p2, :cond_0

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_a
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 138
    .line 139
    if-eqz p2, :cond_2

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :goto_2
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->a(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->a()Ljava/lang/Void;

    .line 151
    .line 152
    new-instance p1, Lw7/i;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 156
    throw p1
.end method

.method private final f(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->c()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->b()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->a()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->d()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->e()I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x2

    .line 96
    const/4 v3, 0x1

    .line 97
    .line 98
    if-eqz v1, :cond_a

    .line 99
    .line 100
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 101
    .line 102
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 106
    move-result p2

    .line 107
    .line 108
    aget p2, v0, p2

    .line 109
    .line 110
    if-eq p2, v3, :cond_8

    .line 111
    .line 112
    if-ne p2, v2, :cond_7

    .line 113
    .line 114
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 120
    move-result p1

    .line 121
    goto :goto_0

    .line 122
    .line 123
    .line 124
    :cond_6
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 125
    move-result p1

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_7
    new-instance p1, Lw7/s;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 132
    throw p1

    .line 133
    .line 134
    :cond_8
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 135
    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 140
    move-result p1

    .line 141
    goto :goto_0

    .line 142
    .line 143
    .line 144
    :cond_9
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 145
    move-result p1

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->f()I

    .line 150
    move-result v0

    .line 151
    .line 152
    .line 153
    invoke-static {p2, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->i(II)Z

    .line 154
    move-result p2

    .line 155
    .line 156
    if-eqz p2, :cond_f

    .line 157
    .line 158
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 159
    .line 160
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result p2

    .line 165
    .line 166
    aget p2, v0, p2

    .line 167
    .line 168
    if-eq p2, v3, :cond_d

    .line 169
    .line 170
    if-ne p2, v2, :cond_c

    .line 171
    .line 172
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 173
    .line 174
    if-eqz p2, :cond_b

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 178
    move-result p1

    .line 179
    goto :goto_0

    .line 180
    .line 181
    .line 182
    :cond_b
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 183
    move-result p1

    .line 184
    goto :goto_0

    .line 185
    .line 186
    :cond_c
    new-instance p1, Lw7/s;

    .line 187
    .line 188
    .line 189
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 190
    throw p1

    .line 191
    .line 192
    :cond_d
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 193
    .line 194
    if-eqz p2, :cond_e

    .line 195
    .line 196
    .line 197
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 198
    move-result p1

    .line 199
    goto :goto_0

    .line 200
    .line 201
    .line 202
    :cond_e
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 203
    move-result p1

    .line 204
    :goto_0
    return p1

    .line 205
    .line 206
    .line 207
    :cond_f
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->a()Ljava/lang/Void;

    .line 208
    .line 209
    new-instance p1, Lw7/i;

    .line 210
    .line 211
    .line 212
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 213
    throw p1
.end method

.method private static final g(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->a()I

    .line 4
    move-result p0

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->m()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->a()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    sub-int/2addr p1, v0

    .line 17
    .line 18
    if-ge p0, p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method private static final h(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->b()I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-lez p0, :cond_0

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


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(ILe8/l;)Ljava/lang/Object;
    .locals 4
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 18
    move-result v2

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->m()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->b()Ljava/util/List;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    .line 38
    move-result v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->a(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    :goto_0
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v2, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->f(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->c(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 68
    .line 69
    iget-object v3, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 75
    .line 76
    iput-object v1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->q()Landroidx/compose/ui/layout/Remeasurement;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Landroidx/compose/ui/layout/Remeasurement;->a()V

    .line 88
    .line 89
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;-><init>(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Lkotlin/jvm/internal/p0;I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 100
    .line 101
    iget-object p2, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 107
    .line 108
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->q()Landroidx/compose/ui/layout/Remeasurement;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->a()V

    .line 118
    :cond_2
    return-object v1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->d()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
