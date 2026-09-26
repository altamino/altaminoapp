.class Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->position:I

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 21
    .line 22
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 23
    .line 24
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 33
    .line 34
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->direction:I

    .line 35
    return-void
.end method

.method private c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 8

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-wide p2

    .line 8
    .line 9
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p2

    .line 16
    .line 17
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    .line 19
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 26
    .line 27
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    .line 33
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 34
    .line 35
    if-ne v6, v0, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 44
    move-result-wide v5

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    .line 55
    if-ne p1, v1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    sub-long/2addr p2, v1

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 66
    move-result-wide v1

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    .line 72
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 73
    .line 74
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 75
    int-to-long v3, p1

    .line 76
    sub-long/2addr p2, v3

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_4
    return-wide v3
.end method

.method private d(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 8

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-wide p2

    .line 8
    .line 9
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p2

    .line 16
    .line 17
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    .line 19
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 26
    .line 27
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    .line 33
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 34
    .line 35
    if-ne v6, v0, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 44
    move-result-wide v5

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    .line 55
    if-ne p1, v1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    add-long/2addr p2, v1

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 66
    move-result-wide v1

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    .line 72
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 73
    .line 74
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 75
    int-to-long v3, p1

    .line 76
    sub-long/2addr p2, v3

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_4
    return-wide v3
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 8
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 12
    .line 13
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 14
    .line 15
    if-eq v1, p2, :cond_2

    .line 16
    return-wide v2

    .line 17
    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return-wide v2

    .line 24
    .line 25
    :cond_1
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    return-wide v2

    .line 29
    .line 30
    :cond_2
    if-nez p2, :cond_3

    .line 31
    .line 32
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 33
    .line 34
    :goto_0
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :goto_1
    if-nez p2, :cond_4

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 43
    .line 44
    :goto_2
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 59
    .line 60
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 61
    .line 62
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 72
    move-result-wide v4

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 79
    .line 80
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 84
    move-result-wide v0

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 87
    .line 88
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 92
    move-result-wide v6

    .line 93
    sub-long/2addr v0, v4

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 96
    .line 97
    iget-object v8, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 98
    .line 99
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 100
    neg-int v9, v8

    .line 101
    int-to-long v9, v9

    .line 102
    .line 103
    cmp-long v9, v0, v9

    .line 104
    .line 105
    if-ltz v9, :cond_5

    .line 106
    int-to-long v8, v8

    .line 107
    add-long/2addr v0, v8

    .line 108
    :cond_5
    neg-long v6, v6

    .line 109
    sub-long/2addr v6, v4

    .line 110
    .line 111
    iget-object v8, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 112
    .line 113
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 114
    int-to-long v9, v8

    .line 115
    sub-long/2addr v6, v9

    .line 116
    int-to-long v9, v8

    .line 117
    .line 118
    cmp-long v9, v6, v9

    .line 119
    .line 120
    if-ltz v9, :cond_6

    .line 121
    int-to-long v8, v8

    .line 122
    sub-long/2addr v6, v8

    .line 123
    .line 124
    :cond_6
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(I)F

    .line 128
    move-result p1

    .line 129
    const/4 p2, 0x0

    .line 130
    .line 131
    cmpl-float p2, p1, p2

    .line 132
    .line 133
    const/high16 v8, 0x3f800000    # 1.0f

    .line 134
    .line 135
    if-lez p2, :cond_7

    .line 136
    long-to-float p2, v6

    .line 137
    div-float/2addr p2, p1

    .line 138
    long-to-float v0, v0

    .line 139
    .line 140
    sub-float v1, v8, p1

    .line 141
    div-float/2addr v0, v1

    .line 142
    add-float/2addr p2, v0

    .line 143
    float-to-long v2, p2

    .line 144
    :cond_7
    long-to-float p2, v2

    .line 145
    .line 146
    mul-float v0, p2, p1

    .line 147
    .line 148
    const/high16 v1, 0x3f000000    # 0.5f

    .line 149
    add-float/2addr v0, v1

    .line 150
    float-to-long v2, v0

    .line 151
    sub-float/2addr v8, p1

    .line 152
    mul-float/2addr p2, v8

    .line 153
    add-float/2addr p2, v1

    .line 154
    float-to-long p1, p2

    .line 155
    add-long/2addr v2, v4

    .line 156
    add-long/2addr v2, p1

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 159
    .line 160
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 161
    .line 162
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 163
    int-to-long v0, p2

    .line 164
    add-long/2addr v0, v2

    .line 165
    .line 166
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 167
    .line 168
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 169
    :goto_4
    int-to-long p1, p1

    .line 170
    sub-long/2addr v0, p1

    .line 171
    goto :goto_5

    .line 172
    .line 173
    :cond_8
    if-eqz v0, :cond_9

    .line 174
    .line 175
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 176
    .line 177
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 178
    .line 179
    iget p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 180
    int-to-long v0, p2

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 184
    move-result-wide p1

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 187
    .line 188
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 189
    .line 190
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 191
    int-to-long v0, v0

    .line 192
    add-long/2addr v0, v4

    .line 193
    .line 194
    .line 195
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 196
    move-result-wide v0

    .line 197
    goto :goto_5

    .line 198
    .line 199
    :cond_9
    if-eqz p1, :cond_a

    .line 200
    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 202
    .line 203
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 204
    .line 205
    iget p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 206
    int-to-long v0, p2

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 210
    move-result-wide p1

    .line 211
    .line 212
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 215
    .line 216
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 217
    neg-int v0, v0

    .line 218
    int-to-long v0, v0

    .line 219
    add-long/2addr v0, v4

    .line 220
    neg-long p1, p1

    .line 221
    .line 222
    .line 223
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 224
    move-result-wide v0

    .line 225
    goto :goto_5

    .line 226
    .line 227
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 228
    .line 229
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 230
    .line 231
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 232
    int-to-long v0, p2

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 236
    move-result-wide p1

    .line 237
    add-long/2addr v0, p1

    .line 238
    .line 239
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 240
    .line 241
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 242
    .line 243
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 244
    goto :goto_4

    .line 245
    :goto_5
    return-wide v0
.end method
