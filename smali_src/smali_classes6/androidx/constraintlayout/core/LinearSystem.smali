.class public Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/LinearSystem$Row;,
        Landroidx/constraintlayout/core/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J = 0x0L

.field public static final DEBUG:Z = false

.field private static final DEBUG_CONSTRAINTS:Z = false

.field public static final FULL_DEBUG:Z = false

.field public static final MEASURE:Z = false

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J = 0x0L

.field public static OPTIMIZED_ENGINE:Z = false

.field private static POOL_SIZE:I = 0x3e8

.field public static SIMPLIFY_SYNONYMS:Z = true

.field public static SKIP_COLUMNS:Z = true

.field public static USE_BASIC_SYNONYMS:Z = true

.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static USE_SYNONYMS:Z = true

.field public static sMetrics:Landroidx/constraintlayout/core/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/core/Cache;

.field private mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 16
    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 24
    .line 25
    new-array v1, v2, [Z

    .line 26
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 33
    .line 34
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 35
    .line 36
    sget v1, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 37
    .line 38
    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 41
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 43
    .line 44
    new-array v0, v2, [Landroidx/constraintlayout/core/ArrayRow;

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->D()V

    .line 50
    .line 51
    new-instance v0, Landroidx/constraintlayout/core/Cache;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroidx/constraintlayout/core/Cache;-><init>()V

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 57
    .line 58
    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 64
    .line 65
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    new-instance v1, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 73
    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/ArrayRow;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 81
    .line 82
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 83
    :goto_0
    return-void
.end method

.method private final C(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I
    .locals 12

    .line 1
    .line 2
    sget-object p2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    .line 9
    add-long/2addr v2, v0

    .line 10
    .line 11
    iput-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    move v2, p2

    .line 14
    .line 15
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 20
    .line 21
    aput-boolean p2, v3, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, p2

    .line 26
    move v3, v2

    .line 27
    .line 28
    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 29
    .line 30
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    .line 35
    add-long/2addr v5, v0

    .line 36
    .line 37
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    .line 38
    .line 39
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    if-lt v3, v4, :cond_4

    .line 46
    return v3

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x1

    .line 52
    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 62
    .line 63
    aput-boolean v5, v4, v6

    .line 64
    .line 65
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/core/LinearSystem$Row;->a(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 74
    .line 75
    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 76
    .line 77
    aget-boolean v8, v6, v7

    .line 78
    .line 79
    if-eqz v8, :cond_6

    .line 80
    return v3

    .line 81
    .line 82
    :cond_6
    aput-boolean v5, v6, v7

    .line 83
    .line 84
    :cond_7
    if-eqz v4, :cond_d

    .line 85
    const/4 v5, -0x1

    .line 86
    .line 87
    .line 88
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 89
    move v7, p2

    .line 90
    move v8, v5

    .line 91
    .line 92
    :goto_2
    iget v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 93
    .line 94
    if-ge v7, v9, :cond_b

    .line 95
    .line 96
    iget-object v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 97
    .line 98
    aget-object v9, v9, v7

    .line 99
    .line 100
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 101
    .line 102
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 103
    .line 104
    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 105
    .line 106
    if-ne v10, v11, :cond_8

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 110
    .line 111
    if-eqz v10, :cond_9

    .line 112
    goto :goto_3

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/core/ArrayRow;->t(Landroidx/constraintlayout/core/SolverVariable;)Z

    .line 116
    move-result v10

    .line 117
    .line 118
    if-eqz v10, :cond_a

    .line 119
    .line 120
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 121
    .line 122
    .line 123
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 124
    move-result v10

    .line 125
    const/4 v11, 0x0

    .line 126
    .line 127
    cmpg-float v11, v10, v11

    .line 128
    .line 129
    if-gez v11, :cond_a

    .line 130
    .line 131
    iget v9, v9, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 132
    neg-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    .line 135
    cmpg-float v10, v9, v6

    .line 136
    .line 137
    if-gez v10, :cond_a

    .line 138
    move v8, v7

    .line 139
    move v6, v9

    .line 140
    .line 141
    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 142
    goto :goto_2

    .line 143
    .line 144
    :cond_b
    if-le v8, v5, :cond_2

    .line 145
    .line 146
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 147
    .line 148
    aget-object v6, v6, v8

    .line 149
    .line 150
    iget-object v7, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 151
    .line 152
    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 153
    .line 154
    sget-object v5, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 155
    .line 156
    if-eqz v5, :cond_c

    .line 157
    .line 158
    iget-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 159
    add-long/2addr v9, v0

    .line 160
    .line 161
    iput-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 162
    .line 163
    .line 164
    :cond_c
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/ArrayRow;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 165
    .line 166
    iget-object v4, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 167
    .line 168
    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, p0, v6}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    :cond_d
    move v2, v5

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    :cond_e
    return v3
.end method

.method private D()V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 9
    .line 10
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 13
    .line 14
    aget-object v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 19
    .line 20
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 26
    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 33
    .line 34
    if-ge v2, v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 37
    .line 38
    aget-object v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    aput-object v1, v0, v2

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method private a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->a()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->e()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 28
    .line 29
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 30
    .line 31
    sget p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 32
    .line 33
    if-lt p1, p2, :cond_1

    .line 34
    .line 35
    mul-int/lit8 p2, p2, 0x2

    .line 36
    .line 37
    sput p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    iget p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 52
    .line 53
    add-int/lit8 v1, p2, 0x1

    .line 54
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 56
    .line 57
    aput-object v0, p1, p2

    .line 58
    return-object v0
.end method

.method private final l(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    .line 12
    iget p1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->f(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 19
    .line 20
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 21
    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    .line 26
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 34
    .line 35
    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    .line 36
    .line 37
    if-eqz p1, :cond_8

    .line 38
    .line 39
    iget-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 40
    .line 41
    if-eqz p1, :cond_8

    .line 42
    const/4 p1, 0x0

    .line 43
    move v0, p1

    .line 44
    .line 45
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 46
    .line 47
    if-ge v0, v1, :cond_7

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    aget-object v1, v1, v0

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 56
    .line 57
    const-string v2, "WTF"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 63
    .line 64
    aget-object v1, v1, v0

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 69
    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 73
    .line 74
    iget v3, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->f(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 78
    .line 79
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 84
    .line 85
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 92
    .line 93
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 97
    .line 98
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 99
    const/4 v2, 0x0

    .line 100
    .line 101
    aput-object v2, v1, v0

    .line 102
    .line 103
    add-int/lit8 v1, v0, 0x1

    .line 104
    move v3, v1

    .line 105
    .line 106
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 107
    .line 108
    if-ge v1, v4, :cond_4

    .line 109
    .line 110
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 111
    .line 112
    add-int/lit8 v4, v1, -0x1

    .line 113
    .line 114
    aget-object v5, v3, v1

    .line 115
    .line 116
    aput-object v5, v3, v4

    .line 117
    .line 118
    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 119
    .line 120
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 121
    .line 122
    if-ne v5, v1, :cond_3

    .line 123
    .line 124
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 125
    .line 126
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 127
    move v6, v3

    .line 128
    move v3, v1

    .line 129
    move v1, v6

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_4
    if-ge v3, v4, :cond_5

    .line 133
    .line 134
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 135
    .line 136
    aput-object v2, v1, v3

    .line 137
    .line 138
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 139
    .line 140
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 141
    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    .line 144
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 145
    goto :goto_1

    .line 146
    .line 147
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 148
    :cond_8
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 12
    .line 13
    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 14
    .line 15
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public static s(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private u(Landroidx/constraintlayout/core/LinearSystem$Row;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_16

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 10
    .line 11
    aget-object v3, v3, v2

    .line 12
    .line 13
    iget-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 16
    .line 17
    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 18
    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_b

    .line 22
    .line 23
    :cond_0
    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    cmpg-float v3, v3, v4

    .line 27
    .line 28
    if-gez v3, :cond_15

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    :cond_1
    :goto_1
    if-nez v2, :cond_14

    .line 33
    .line 34
    sget-object v5, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 35
    .line 36
    const-wide/16 v6, 0x1

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget-wide v8, v5, Landroidx/constraintlayout/core/Metrics;->bfs:J

    .line 41
    add-long/2addr v8, v6

    .line 42
    .line 43
    iput-wide v8, v5, Landroidx/constraintlayout/core/Metrics;->bfs:J

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    .line 48
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, -0x1

    .line 51
    const/4 v11, -0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    .line 54
    :goto_2
    iget v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 55
    const/4 v14, 0x1

    .line 56
    .line 57
    if-ge v9, v13, :cond_11

    .line 58
    .line 59
    iget-object v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 60
    .line 61
    aget-object v13, v13, v9

    .line 62
    .line 63
    iget-object v15, v13, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 64
    .line 65
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 66
    .line 67
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 68
    .line 69
    if-ne v15, v1, :cond_3

    .line 70
    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :cond_3
    iget-boolean v1, v13, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_4
    iget v1, v13, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 80
    .line 81
    cmpg-float v1, v1, v4

    .line 82
    .line 83
    if-gez v1, :cond_10

    .line 84
    .line 85
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SKIP_COLUMNS:Z

    .line 86
    .line 87
    const/16 v15, 0x9

    .line 88
    .line 89
    if-eqz v1, :cond_a

    .line 90
    .line 91
    iget-object v1, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 95
    move-result v1

    .line 96
    const/4 v14, 0x0

    .line 97
    .line 98
    :goto_3
    if-ge v14, v1, :cond_10

    .line 99
    .line 100
    iget-object v6, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 101
    .line 102
    .line 103
    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->b(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    iget-object v7, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 107
    .line 108
    .line 109
    invoke-interface {v7, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 110
    move-result v7

    .line 111
    .line 112
    cmpg-float v16, v7, v4

    .line 113
    .line 114
    if-gtz v16, :cond_5

    .line 115
    goto :goto_5

    .line 116
    :cond_5
    const/4 v5, 0x0

    .line 117
    .line 118
    :goto_4
    if-ge v5, v15, :cond_9

    .line 119
    .line 120
    iget-object v15, v6, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 121
    .line 122
    aget v15, v15, v5

    .line 123
    div-float/2addr v15, v7

    .line 124
    .line 125
    cmpg-float v18, v15, v8

    .line 126
    .line 127
    if-gez v18, :cond_6

    .line 128
    .line 129
    if-eq v5, v12, :cond_7

    .line 130
    .line 131
    :cond_6
    if-le v5, v12, :cond_8

    .line 132
    .line 133
    :cond_7
    iget v8, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 134
    move v12, v5

    .line 135
    move v11, v8

    .line 136
    move v10, v9

    .line 137
    move v8, v15

    .line 138
    .line 139
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    const/16 v15, 0x9

    .line 142
    goto :goto_4

    .line 143
    .line 144
    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 145
    .line 146
    const-wide/16 v6, 0x1

    .line 147
    .line 148
    const/16 v15, 0x9

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_a
    :goto_6
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 152
    .line 153
    if-ge v14, v1, :cond_10

    .line 154
    .line 155
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 156
    .line 157
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 158
    .line 159
    aget-object v1, v1, v14

    .line 160
    .line 161
    iget-object v5, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 162
    .line 163
    .line 164
    invoke-interface {v5, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 165
    move-result v5

    .line 166
    .line 167
    cmpg-float v6, v5, v4

    .line 168
    .line 169
    if-gtz v6, :cond_b

    .line 170
    .line 171
    const/16 v6, 0x9

    .line 172
    goto :goto_8

    .line 173
    .line 174
    :cond_b
    const/16 v6, 0x9

    .line 175
    const/4 v7, 0x0

    .line 176
    .line 177
    :goto_7
    if-ge v7, v6, :cond_f

    .line 178
    .line 179
    iget-object v15, v1, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 180
    .line 181
    aget v15, v15, v7

    .line 182
    div-float/2addr v15, v5

    .line 183
    .line 184
    cmpg-float v17, v15, v8

    .line 185
    .line 186
    if-gez v17, :cond_c

    .line 187
    .line 188
    if-eq v7, v12, :cond_d

    .line 189
    .line 190
    :cond_c
    if-le v7, v12, :cond_e

    .line 191
    :cond_d
    move v12, v7

    .line 192
    move v10, v9

    .line 193
    move v11, v14

    .line 194
    move v8, v15

    .line 195
    .line 196
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 197
    goto :goto_7

    .line 198
    .line 199
    :cond_f
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 200
    goto :goto_6

    .line 201
    .line 202
    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 203
    .line 204
    const-wide/16 v6, 0x1

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    :cond_11
    const/4 v1, -0x1

    .line 208
    .line 209
    if-eq v10, v1, :cond_13

    .line 210
    .line 211
    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 212
    .line 213
    aget-object v5, v5, v10

    .line 214
    .line 215
    iget-object v6, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 216
    .line 217
    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 218
    .line 219
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 220
    .line 221
    if-eqz v1, :cond_12

    .line 222
    .line 223
    iget-wide v6, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 224
    .line 225
    const-wide/16 v8, 0x1

    .line 226
    add-long/2addr v6, v8

    .line 227
    .line 228
    iput-wide v6, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 229
    .line 230
    :cond_12
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 231
    .line 232
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 233
    .line 234
    aget-object v1, v1, v11

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/ArrayRow;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 238
    .line 239
    iget-object v1, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 240
    .line 241
    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 245
    goto :goto_a

    .line 246
    :cond_13
    move v2, v14

    .line 247
    .line 248
    :goto_a
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 249
    .line 250
    div-int/lit8 v1, v1, 0x2

    .line 251
    .line 252
    if-le v3, v1, :cond_1

    .line 253
    move v2, v14

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    :cond_14
    move v1, v3

    .line 257
    goto :goto_c

    .line 258
    .line 259
    :cond_15
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    :cond_16
    const/4 v1, 0x0

    .line 263
    :goto_c
    return v1
.end method

.method public static x()Landroidx/constraintlayout/core/Metrics;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    return-object v0
.end method

.method private z()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    .line 30
    iput-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 33
    .line 34
    new-array v1, v0, [Z

    .line 35
    .line 36
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 37
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 41
    .line 42
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    .line 47
    .line 48
    const-wide/16 v4, 0x1

    .line 49
    add-long/2addr v2, v4

    .line 50
    .line 51
    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    .line 52
    .line 53
    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 54
    int-to-long v4, v0

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 61
    .line 62
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 63
    .line 64
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 65
    .line 66
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    .line 9
    add-long/2addr v3, v1

    .line 10
    .line 11
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->n()V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->B(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_3
    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 45
    add-long/2addr v3, v1

    .line 46
    .line 47
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 48
    :cond_4
    const/4 v0, 0x0

    .line 49
    .line 50
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 51
    .line 52
    if-ge v0, v3, :cond_6

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 55
    .line 56
    aget-object v3, v3, v0

    .line 57
    .line 58
    iget-boolean v3, v3, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->B(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_6
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    .line 76
    add-long/2addr v3, v1

    .line 77
    .line 78
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    .line 79
    .line 80
    .line 81
    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->n()V

    .line 82
    :goto_2
    return-void
.end method

.method B(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    .line 12
    .line 13
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    .line 14
    .line 15
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 16
    int-to-long v3, v3

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    .line 23
    .line 24
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 25
    .line 26
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    .line 27
    .line 28
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 29
    int-to-long v3, v3

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->u(Landroidx/constraintlayout/core/LinearSystem$Row;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->C(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->n()V

    .line 46
    return-void
.end method

.method public E()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 5
    .line 6
    iget-object v3, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    array-length v4, v3

    .line 8
    .line 9
    if-ge v1, v4, :cond_1

    .line 10
    .line 11
    aget-object v2, v3, v1

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->e()V

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    .line 25
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/core/Pools$Pool;->c([Ljava/lang/Object;I)V

    .line 29
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 46
    .line 47
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/constraintlayout/core/LinearSystem$Row;->clear()V

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 56
    move v1, v0

    .line 57
    .line 58
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 59
    .line 60
    if-ge v1, v2, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 63
    .line 64
    aget-object v2, v2, v1

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iput-boolean v0, v2, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 69
    .line 70
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->D()V

    .line 75
    .line 76
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 77
    .line 78
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 83
    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 88
    .line 89
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_5
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 98
    .line 99
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 100
    :goto_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    move-result-object v6

    .line 17
    .line 18
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 26
    move-result-object v8

    .line 27
    .line 28
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    move-result-object v13

    .line 37
    .line 38
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    move-result-object v9

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 78
    move-result-object v11

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    move/from16 v4, p3

    .line 85
    float-to-double v4, v4

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 89
    move-result-wide v14

    .line 90
    .line 91
    move/from16 v7, p4

    .line 92
    .line 93
    move-object/from16 p1, v3

    .line 94
    .line 95
    move-wide/from16 p2, v4

    .line 96
    int-to-double v3, v7

    .line 97
    mul-double/2addr v14, v3

    .line 98
    double-to-float v12, v14

    .line 99
    move-object v7, v2

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/core/ArrayRow;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    .line 113
    move-result-wide v7

    .line 114
    mul-double/2addr v7, v3

    .line 115
    double-to-float v10, v7

    .line 116
    move-object v5, v2

    .line 117
    move-object v7, v13

    .line 118
    move-object v8, v1

    .line 119
    .line 120
    move-object/from16 v9, p1

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/ArrayRow;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 127
    return-void
.end method

.method public c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v1, p8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 7
    move-result-object v10

    .line 8
    move-object v2, v10

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move v5, p3

    .line 12
    move v6, p4

    .line 13
    .line 14
    move-object/from16 v7, p5

    .line 15
    .line 16
    move-object/from16 v8, p6

    .line 17
    .line 18
    move/from16 v9, p7

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/ArrayRow;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/core/ArrayRow;->d(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 32
    return-void
.end method

.method public d(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 6
    .line 7
    const-wide/16 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    .line 12
    add-long/2addr v3, v1

    .line 13
    .line 14
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    .line 15
    .line 16
    iget-boolean v3, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    .line 21
    add-long/2addr v3, v1

    .line 22
    .line 23
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    .line 24
    .line 25
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 26
    const/4 v3, 0x1

    .line 27
    add-int/2addr v0, v3

    .line 28
    .line 29
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 30
    .line 31
    if-ge v0, v4, :cond_2

    .line 32
    .line 33
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 34
    add-int/2addr v0, v3

    .line 35
    .line 36
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 37
    .line 38
    if-lt v0, v4, :cond_3

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->z()V

    .line 42
    .line 43
    :cond_3
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 44
    .line 45
    if-nez v0, :cond_c

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->D(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    return-void

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->r()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->f(Landroidx/constraintlayout/core/LinearSystem;)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->p()Landroidx/constraintlayout/core/SolverVariable;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 71
    .line 72
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->l(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 76
    .line 77
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 78
    add-int/2addr v4, v3

    .line 79
    .line 80
    if-ne v5, v4, :cond_9

    .line 81
    .line 82
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->b(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 86
    .line 87
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/core/LinearSystem;->C(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    .line 91
    .line 92
    iget v4, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 93
    const/4 v5, -0x1

    .line 94
    .line 95
    if-ne v4, v5, :cond_a

    .line 96
    .line 97
    iget-object v4, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 98
    .line 99
    if-ne v4, v0, :cond_6

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->v(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 112
    add-long/2addr v5, v1

    .line 113
    .line 114
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 118
    .line 119
    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 120
    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 127
    .line 128
    :cond_7
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 146
    .line 147
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 148
    sub-int/2addr v0, v3

    .line 149
    .line 150
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 151
    goto :goto_1

    .line 152
    :cond_9
    const/4 v3, 0x0

    .line 153
    .line 154
    .line 155
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->s()Z

    .line 156
    move-result v0

    .line 157
    .line 158
    if-nez v0, :cond_b

    .line 159
    return-void

    .line 160
    .line 161
    :cond_b
    if-nez v3, :cond_d

    .line 162
    .line 163
    .line 164
    :cond_c
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->l(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 165
    :cond_d
    return-void
.end method

.method public e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-ne p4, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 20
    int-to-float p3, p3

    .line 21
    add-float/2addr p2, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->f(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->n(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 34
    .line 35
    if-eq p4, v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->d(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 42
    return-object v0
.end method

.method public f(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 5

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    int-to-float p2, p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->f(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 18
    add-int/2addr v1, v2

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-boolean v3, v1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 35
    .line 36
    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 41
    add-float/2addr v3, p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->f(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    .line 50
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 51
    .line 52
    if-eq v0, v1, :cond_5

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 55
    .line 56
    aget-object v0, v1, v0

    .line 57
    .line 58
    iget-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    int-to-float p1, p2

    .line 62
    .line 63
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 70
    move-result v1

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    iput-boolean v2, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 75
    int-to-float p1, p2

    .line 76
    .line 77
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->m(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->i(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 100
    :goto_1
    return-void
.end method

.method public g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 18
    return-void
.end method

.method public h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    if-eq p4, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    .line 26
    const/high16 p2, -0x40800000    # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->m(Landroidx/constraintlayout/core/ArrayRow;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 35
    return-void
.end method

.method public i(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 18
    return-void
.end method

.method public j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    if-eq p4, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    .line 26
    const/high16 p2, -0x40800000    # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->m(Landroidx/constraintlayout/core/ArrayRow;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 35
    return-void
.end method

.method public k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->r()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v6

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/ArrayRow;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p6, p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/core/ArrayRow;->d(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 24
    return-void
.end method

.method m(Landroidx/constraintlayout/core/ArrayRow;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 5
    move-result-object p3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/core/ArrayRow;->e(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 9
    return-void
.end method

.method public o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->z()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/LinearSystem;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 35
    .line 36
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 41
    .line 42
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 43
    .line 44
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 49
    .line 50
    aput-object p2, p1, v0

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/LinearSystem$Row;->c(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 56
    return-object p2
.end method

.method public p()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->z()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 36
    .line 37
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    aput-object v0, v2, v1

    .line 50
    return-object v0
.end method

.method public q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->z()V

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(Landroidx/constraintlayout/core/Cache;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    move-result-object p1

    .line 37
    move-object v0, p1

    .line 38
    .line 39
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 40
    const/4 v1, -0x1

    .line 41
    .line 42
    if-eq p1, v1, :cond_3

    .line 43
    .line 44
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 45
    .line 46
    if-gt p1, v2, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 51
    .line 52
    aget-object v2, v2, p1

    .line 53
    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    :cond_3
    if-eq p1, v1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->e()V

    .line 60
    .line 61
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    iput p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 66
    .line 67
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 72
    .line 73
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 74
    .line 75
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 80
    .line 81
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 82
    .line 83
    aput-object v0, v1, p1

    .line 84
    :cond_5
    return-object v0
.end method

.method public r()Landroidx/constraintlayout/core/ArrayRow;
    .locals 5

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->a()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 26
    .line 27
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    .line 28
    add-long/2addr v3, v1

    .line 29
    .line 30
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->y()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->a()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v3}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 55
    .line 56
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    .line 57
    add-long/2addr v3, v1

    .line 58
    .line 59
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->y()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    .line 67
    return-object v0
.end method

.method public t()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->z()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 36
    .line 37
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    aput-object v0, v2, v1

    .line 50
    return-object v0
.end method

.method public v(Landroidx/constraintlayout/core/Metrics;)V
    .locals 0

    .line 1
    sput-object p1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    return-void
.end method

.method public w()Landroidx/constraintlayout/core/Cache;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    return-object v0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 11
    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    add-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
