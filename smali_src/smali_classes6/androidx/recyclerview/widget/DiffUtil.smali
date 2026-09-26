.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    rem-int/lit8 v0, v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v2, v3

    .line 27
    neg-int v3, p4

    .line 28
    move v4, v3

    .line 29
    .line 30
    :goto_1
    if-gt v4, p4, :cond_7

    .line 31
    .line 32
    if-eq v4, v3, :cond_2

    .line 33
    .line 34
    if-eq v4, p4, :cond_1

    .line 35
    .line 36
    add-int/lit8 v5, v4, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 40
    move-result v5

    .line 41
    .line 42
    add-int/lit8 v6, v4, -0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 46
    move-result v6

    .line 47
    .line 48
    if-ge v5, v6, :cond_1

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v5, v4, -0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 55
    move-result v5

    .line 56
    .line 57
    add-int/lit8 v6, v5, -0x1

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v5, v4, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 64
    move-result v5

    .line 65
    move v6, v5

    .line 66
    .line 67
    :goto_3
    iget v7, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 68
    .line 69
    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 70
    sub-int/2addr v8, v6

    .line 71
    sub-int/2addr v8, v4

    .line 72
    sub-int/2addr v7, v8

    .line 73
    .line 74
    if-eqz p4, :cond_4

    .line 75
    .line 76
    if-eq v6, v5, :cond_3

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_3
    add-int/lit8 v8, v7, 0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_4
    :goto_4
    move v8, v7

    .line 82
    .line 83
    :goto_5
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 84
    .line 85
    if-le v6, v9, :cond_5

    .line 86
    .line 87
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 88
    .line 89
    if-le v7, v9, :cond_5

    .line 90
    .line 91
    add-int/lit8 v9, v6, -0x1

    .line 92
    .line 93
    add-int/lit8 v10, v7, -0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->b(II)Z

    .line 97
    move-result v9

    .line 98
    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    add-int/lit8 v6, v6, -0x1

    .line 102
    .line 103
    add-int/lit8 v7, v7, -0x1

    .line 104
    goto :goto_5

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p3, v4, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->c(II)V

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    sub-int v9, v2, v4

    .line 112
    .line 113
    if-lt v9, v3, :cond_6

    .line 114
    .line 115
    if-gt v9, p4, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 119
    move-result v9

    .line 120
    .line 121
    if-lt v9, v6, :cond_6

    .line 122
    .line 123
    new-instance p0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 127
    .line 128
    iput v6, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 129
    .line 130
    iput v7, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 131
    .line 132
    iput v5, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 133
    .line 134
    iput v8, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 135
    .line 136
    iput-boolean v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 137
    return-object p0

    .line 138
    .line 139
    :cond_6
    add-int/lit8 v4, v4, 0x2

    .line 140
    goto :goto_1

    .line 141
    :cond_7
    const/4 p0, 0x0

    .line 142
    return-object p0
.end method

.method public static b(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->c(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 9
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->d()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    .line 35
    .line 36
    mul-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 42
    .line 43
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result v5

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    move-result v5

    .line 62
    .line 63
    add-int/lit8 v5, v5, -0x1

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 70
    .line 71
    .line 72
    invoke-static {v5, p0, v1, v3}, Landroidx/recyclerview/widget/DiffUtil;->e(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;->a()I

    .line 79
    move-result v7

    .line 80
    .line 81
    if-lez v7, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;->d()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 92
    move-result v7

    .line 93
    .line 94
    if-eqz v7, :cond_1

    .line 95
    .line 96
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 97
    .line 98
    .line 99
    invoke-direct {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    move-result v7

    .line 105
    .line 106
    add-int/lit8 v7, v7, -0x1

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    check-cast v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 113
    .line 114
    :goto_1
    iget v8, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 115
    .line 116
    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 117
    .line 118
    iget v8, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 119
    .line 120
    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 121
    .line 122
    iget v8, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 123
    .line 124
    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 125
    .line 126
    iget v8, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 127
    .line 128
    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 129
    .line 130
    .line 131
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 134
    .line 135
    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 136
    .line 137
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 138
    .line 139
    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 140
    .line 141
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 142
    .line 143
    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 144
    .line 145
    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 146
    .line 147
    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_0

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :cond_3
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    .line 162
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->a()[I

    .line 166
    move-result-object v5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->a()[I

    .line 170
    move-result-object v6

    .line 171
    move-object v2, v0

    .line 172
    move-object v3, p0

    .line 173
    move v7, p1

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    .line 177
    return-object v0
.end method

.method private static d(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    rem-int/lit8 v0, v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v0, v3

    .line 31
    neg-int v3, p4

    .line 32
    move v4, v3

    .line 33
    .line 34
    :goto_1
    if-gt v4, p4, :cond_7

    .line 35
    .line 36
    if-eq v4, v3, :cond_2

    .line 37
    .line 38
    if-eq v4, p4, :cond_1

    .line 39
    .line 40
    add-int/lit8 v5, v4, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 44
    move-result v5

    .line 45
    .line 46
    add-int/lit8 v6, v4, -0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 50
    move-result v6

    .line 51
    .line 52
    if-le v5, v6, :cond_1

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v5, v4, -0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 59
    move-result v5

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v5, v4, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 68
    move-result v5

    .line 69
    move v6, v5

    .line 70
    .line 71
    :goto_3
    iget v7, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 72
    .line 73
    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 74
    .line 75
    sub-int v8, v6, v8

    .line 76
    add-int/2addr v7, v8

    .line 77
    sub-int/2addr v7, v4

    .line 78
    .line 79
    if-eqz p4, :cond_4

    .line 80
    .line 81
    if-eq v6, v5, :cond_3

    .line 82
    goto :goto_4

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v8, v7, -0x1

    .line 85
    goto :goto_5

    .line 86
    :cond_4
    :goto_4
    move v8, v7

    .line 87
    .line 88
    :goto_5
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 89
    .line 90
    if-ge v6, v9, :cond_5

    .line 91
    .line 92
    iget v9, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 93
    .line 94
    if-ge v7, v9, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->b(II)Z

    .line 98
    move-result v9

    .line 99
    .line 100
    if-eqz v9, :cond_5

    .line 101
    .line 102
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    goto :goto_5

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {p2, v4, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->c(II)V

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    sub-int v9, v0, v4

    .line 113
    .line 114
    add-int/lit8 v10, v3, 0x1

    .line 115
    .line 116
    if-lt v9, v10, :cond_6

    .line 117
    .line 118
    add-int/lit8 v10, p4, -0x1

    .line 119
    .line 120
    if-gt v9, v10, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->b(I)I

    .line 124
    move-result v9

    .line 125
    .line 126
    if-gt v9, v6, :cond_6

    .line 127
    .line 128
    new-instance p0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 132
    .line 133
    iput v5, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 134
    .line 135
    iput v8, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 136
    .line 137
    iput v6, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 138
    .line 139
    iput v7, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 140
    .line 141
    iput-boolean v1, p0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 142
    return-object p0

    .line 143
    .line 144
    :cond_6
    add-int/lit8 v4, v4, 0x2

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    const/4 p0, 0x0

    .line 147
    return-object p0
.end method

.method private static e(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-lt v0, v2, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->b()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->a()I

    .line 23
    move-result v3

    .line 24
    add-int/2addr v0, v3

    .line 25
    add-int/2addr v0, v2

    .line 26
    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->c(II)V

    .line 33
    .line 34
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->c(II)V

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    :goto_0
    if-ge v2, v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->d(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    return-object v3

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->a(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    return-object v3

    .line 55
    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    :goto_1
    return-object v1
.end method
