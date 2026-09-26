.class Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 16
    .line 17
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 20
    .line 21
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 26
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 32
    .line 33
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 34
    .line 35
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 36
    .line 37
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    .line 39
    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    iput-object p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->D1()I

    .line 45
    move-result p2

    .line 46
    .line 47
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->F1()I

    .line 51
    move-result p2

    .line 52
    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->E1()I

    .line 57
    move-result p2

    .line 58
    .line 59
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->C1()I

    .line 63
    move-result p1

    .line 64
    .line 65
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 66
    .line 67
    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 68
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    return-object p0
.end method

.method private h()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 4
    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 11
    .line 12
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 13
    move v2, v0

    .line 14
    .line 15
    :goto_0
    if-ge v2, v1, :cond_7

    .line 16
    .line 17
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 18
    add-int/2addr v3, v2

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 24
    move-result v4

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 37
    add-int/2addr v4, v2

    .line 38
    .line 39
    aget-object v3, v3, v4

    .line 40
    .line 41
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 42
    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 49
    move-result v4

    .line 50
    .line 51
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/Flow;->T1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 55
    move-result v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 59
    move-result v7

    .line 60
    .line 61
    if-ne v7, v5, :cond_1

    .line 62
    move v6, v0

    .line 63
    .line 64
    :cond_1
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 65
    add-int/2addr v4, v6

    .line 66
    add-int/2addr v5, v4

    .line 67
    .line 68
    iput v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 71
    .line 72
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v3, v5}, Landroidx/constraintlayout/core/widgets/Flow;->g2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 76
    move-result v4

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 83
    .line 84
    if-ge v5, v4, :cond_6

    .line 85
    .line 86
    :cond_2
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    .line 88
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 89
    .line 90
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 94
    .line 95
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v3, v6}, Landroidx/constraintlayout/core/widgets/Flow;->f2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 99
    move-result v4

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 102
    .line 103
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v3, v7}, Landroidx/constraintlayout/core/widgets/Flow;->g2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 107
    move-result v6

    .line 108
    .line 109
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 110
    .line 111
    .line 112
    invoke-static {v7}, Landroidx/constraintlayout/core/widgets/Flow;->U1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 113
    move-result v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 117
    move-result v8

    .line 118
    .line 119
    if-ne v8, v5, :cond_4

    .line 120
    move v7, v0

    .line 121
    .line 122
    :cond_4
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 123
    add-int/2addr v6, v7

    .line 124
    add-int/2addr v5, v6

    .line 125
    .line 126
    iput v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 127
    .line 128
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 129
    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 133
    .line 134
    if-ge v5, v4, :cond_6

    .line 135
    .line 136
    :cond_5
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 137
    .line 138
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 139
    .line 140
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 141
    .line 142
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 10
    .line 11
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v3}, Landroidx/constraintlayout/core/widgets/Flow;->f2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 30
    move v0, v2

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->T1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 40
    move-result v4

    .line 41
    .line 42
    if-ne v4, v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v3

    .line 45
    .line 46
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 47
    add-int/2addr v0, v2

    .line 48
    add-int/2addr v1, v0

    .line 49
    .line 50
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 53
    .line 54
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/Flow;->g2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 58
    move-result v0

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 65
    .line 66
    if-ge v1, v0, :cond_7

    .line 67
    .line 68
    :cond_2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 71
    .line 72
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 76
    .line 77
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p1, v3}, Landroidx/constraintlayout/core/widgets/Flow;->f2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 81
    move-result v0

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 84
    .line 85
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    .line 86
    .line 87
    .line 88
    invoke-static {v3, p1, v4}, Landroidx/constraintlayout/core/widgets/Flow;->g2(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    .line 97
    if-ne v4, v5, :cond_4

    .line 98
    .line 99
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 104
    move v3, v2

    .line 105
    .line 106
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->U1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 110
    move-result v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 114
    move-result v5

    .line 115
    .line 116
    if-ne v5, v1, :cond_5

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move v2, v4

    .line 119
    .line 120
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 121
    add-int/2addr v3, v2

    .line 122
    add-int/2addr v1, v3

    .line 123
    .line 124
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 125
    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 131
    .line 132
    if-ge v1, v0, :cond_7

    .line 133
    .line 134
    :cond_6
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 135
    .line 136
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 137
    .line 138
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 139
    .line 140
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 141
    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 143
    .line 144
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 145
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    return-void
.end method

.method public d(ZIZ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    .line 10
    iget v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 11
    add-int/2addr v4, v3

    .line 12
    .line 13
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 14
    .line 15
    .line 16
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 17
    move-result v5

    .line 18
    .line 19
    if-lt v4, v5, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 29
    add-int/2addr v5, v3

    .line 30
    .line 31
    aget-object v4, v4, v5

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x0()V

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    :goto_1
    if-eqz v1, :cond_3a

    .line 42
    .line 43
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto/16 :goto_16

    .line 48
    .line 49
    :cond_3
    if-eqz p3, :cond_4

    .line 50
    .line 51
    if-nez p2, :cond_4

    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v4, v2

    .line 55
    :goto_2
    const/4 v5, -0x1

    .line 56
    move v6, v2

    .line 57
    move v7, v5

    .line 58
    move v8, v7

    .line 59
    .line 60
    :goto_3
    if-ge v6, v1, :cond_9

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    add-int/lit8 v9, v1, -0x1

    .line 65
    sub-int/2addr v9, v6

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    move v9, v6

    .line 68
    .line 69
    :goto_4
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 70
    add-int/2addr v10, v9

    .line 71
    .line 72
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 73
    .line 74
    .line 75
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 76
    move-result v11

    .line 77
    .line 78
    if-lt v10, v11, :cond_6

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_6
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 82
    .line 83
    .line 84
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 88
    add-int/2addr v11, v9

    .line 89
    .line 90
    aget-object v9, v10, v11

    .line 91
    .line 92
    if-eqz v9, :cond_8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 96
    move-result v9

    .line 97
    .line 98
    if-nez v9, :cond_8

    .line 99
    .line 100
    if-ne v7, v5, :cond_7

    .line 101
    move v7, v6

    .line 102
    :cond_7
    move v8, v6

    .line 103
    .line 104
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_9
    :goto_5
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 108
    const/4 v9, 0x0

    .line 109
    .line 110
    if-nez v6, :cond_23

    .line 111
    .line 112
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 113
    .line 114
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 115
    .line 116
    .line 117
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->j2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 118
    move-result v10

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i1(I)V

    .line 122
    .line 123
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 124
    .line 125
    if-lez p2, :cond_a

    .line 126
    .line 127
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 128
    .line 129
    .line 130
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->U1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 131
    move-result v11

    .line 132
    add-int/2addr v10, v11

    .line 133
    .line 134
    :cond_a
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 135
    .line 136
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v12, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 140
    .line 141
    if-eqz p3, :cond_b

    .line 142
    .line 143
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 144
    .line 145
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    .line 147
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 151
    .line 152
    :cond_b
    if-lez p2, :cond_c

    .line 153
    .line 154
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    .line 156
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 157
    .line 158
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 159
    .line 160
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 164
    .line 165
    :cond_c
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 166
    .line 167
    .line 168
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->k2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 169
    move-result v10

    .line 170
    const/4 v11, 0x3

    .line 171
    .line 172
    if-ne v10, v11, :cond_10

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0()Z

    .line 176
    move-result v10

    .line 177
    .line 178
    if-nez v10, :cond_10

    .line 179
    move v10, v2

    .line 180
    .line 181
    :goto_6
    if-ge v10, v1, :cond_10

    .line 182
    .line 183
    if-eqz p1, :cond_d

    .line 184
    .line 185
    add-int/lit8 v12, v1, -0x1

    .line 186
    sub-int/2addr v12, v10

    .line 187
    goto :goto_7

    .line 188
    :cond_d
    move v12, v10

    .line 189
    .line 190
    :goto_7
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 191
    add-int/2addr v13, v12

    .line 192
    .line 193
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 194
    .line 195
    .line 196
    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 197
    move-result v14

    .line 198
    .line 199
    if-lt v13, v14, :cond_e

    .line 200
    goto :goto_8

    .line 201
    .line 202
    :cond_e
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 203
    .line 204
    .line 205
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 206
    move-result-object v13

    .line 207
    .line 208
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 209
    add-int/2addr v14, v12

    .line 210
    .line 211
    aget-object v12, v13, v14

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0()Z

    .line 215
    move-result v13

    .line 216
    .line 217
    if-eqz v13, :cond_f

    .line 218
    goto :goto_9

    .line 219
    .line 220
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_10
    :goto_8
    move-object v12, v6

    .line 223
    :goto_9
    move v10, v2

    .line 224
    .line 225
    :goto_a
    if-ge v10, v1, :cond_3a

    .line 226
    .line 227
    if-eqz p1, :cond_11

    .line 228
    .line 229
    add-int/lit8 v13, v1, -0x1

    .line 230
    sub-int/2addr v13, v10

    .line 231
    goto :goto_b

    .line 232
    :cond_11
    move v13, v10

    .line 233
    .line 234
    :goto_b
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 235
    add-int/2addr v14, v13

    .line 236
    .line 237
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 238
    .line 239
    .line 240
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 241
    move-result v15

    .line 242
    .line 243
    if-lt v14, v15, :cond_12

    .line 244
    .line 245
    goto/16 :goto_16

    .line 246
    .line 247
    :cond_12
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 248
    .line 249
    .line 250
    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    move-result-object v14

    .line 252
    .line 253
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 254
    add-int/2addr v15, v13

    .line 255
    .line 256
    aget-object v14, v14, v15

    .line 257
    .line 258
    if-nez v14, :cond_13

    .line 259
    move-object v14, v9

    .line 260
    move v9, v11

    .line 261
    .line 262
    goto/16 :goto_f

    .line 263
    .line 264
    :cond_13
    if-nez v10, :cond_14

    .line 265
    .line 266
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 267
    .line 268
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 269
    .line 270
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14, v15, v11, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 274
    .line 275
    :cond_14
    if-nez v13, :cond_1a

    .line 276
    .line 277
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 278
    .line 279
    .line 280
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->l2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 281
    move-result v3

    .line 282
    .line 283
    const/high16 v11, 0x3f800000    # 1.0f

    .line 284
    .line 285
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 286
    .line 287
    .line 288
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->m2(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 289
    move-result v13

    .line 290
    .line 291
    if-eqz p1, :cond_15

    .line 292
    .line 293
    sub-float v13, v11, v13

    .line 294
    .line 295
    :cond_15
    iget v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 296
    .line 297
    if-nez v15, :cond_17

    .line 298
    .line 299
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 300
    .line 301
    .line 302
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->V1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 303
    move-result v15

    .line 304
    .line 305
    if-eq v15, v5, :cond_17

    .line 306
    .line 307
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 308
    .line 309
    .line 310
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->V1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 311
    move-result v3

    .line 312
    .line 313
    if-eqz p1, :cond_16

    .line 314
    .line 315
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 316
    .line 317
    .line 318
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->W1(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 319
    move-result v13

    .line 320
    :goto_c
    sub-float/2addr v11, v13

    .line 321
    :goto_d
    move v13, v11

    .line 322
    goto :goto_e

    .line 323
    .line 324
    :cond_16
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 325
    .line 326
    .line 327
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->W1(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 328
    move-result v11

    .line 329
    goto :goto_d

    .line 330
    .line 331
    :cond_17
    if-eqz p3, :cond_19

    .line 332
    .line 333
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 334
    .line 335
    .line 336
    invoke-static {v15}, Landroidx/constraintlayout/core/widgets/Flow;->X1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 337
    move-result v15

    .line 338
    .line 339
    if-eq v15, v5, :cond_19

    .line 340
    .line 341
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 342
    .line 343
    .line 344
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->X1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 345
    move-result v3

    .line 346
    .line 347
    if-eqz p1, :cond_18

    .line 348
    .line 349
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 350
    .line 351
    .line 352
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->Y1(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 353
    move-result v13

    .line 354
    goto :goto_c

    .line 355
    .line 356
    :cond_18
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 357
    .line 358
    .line 359
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->Y1(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 360
    move-result v11

    .line 361
    goto :goto_d

    .line 362
    .line 363
    .line 364
    :cond_19
    :goto_e
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R0(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v14, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q0(F)V

    .line 368
    .line 369
    :cond_1a
    add-int/lit8 v3, v1, -0x1

    .line 370
    .line 371
    if-ne v10, v3, :cond_1b

    .line 372
    .line 373
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 374
    .line 375
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 376
    .line 377
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14, v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 381
    .line 382
    :cond_1b
    if-eqz v9, :cond_1d

    .line 383
    .line 384
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 385
    .line 386
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 387
    .line 388
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 389
    .line 390
    .line 391
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->T1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 392
    move-result v13

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 396
    .line 397
    if-ne v10, v7, :cond_1c

    .line 398
    .line 399
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 400
    .line 401
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->u(I)V

    .line 405
    .line 406
    :cond_1c
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 407
    .line 408
    iget-object v11, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 412
    const/4 v3, 0x1

    .line 413
    .line 414
    add-int/lit8 v11, v8, 0x1

    .line 415
    .line 416
    if-ne v10, v11, :cond_1d

    .line 417
    .line 418
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 419
    .line 420
    iget v9, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->u(I)V

    .line 424
    .line 425
    :cond_1d
    if-eq v14, v6, :cond_22

    .line 426
    .line 427
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 428
    .line 429
    .line 430
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->k2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 431
    move-result v3

    .line 432
    const/4 v9, 0x3

    .line 433
    .line 434
    if-ne v3, v9, :cond_1e

    .line 435
    .line 436
    .line 437
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0()Z

    .line 438
    move-result v3

    .line 439
    .line 440
    if-eqz v3, :cond_1e

    .line 441
    .line 442
    if-eq v14, v12, :cond_1e

    .line 443
    .line 444
    .line 445
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0()Z

    .line 446
    move-result v3

    .line 447
    .line 448
    if-eqz v3, :cond_1e

    .line 449
    .line 450
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 451
    .line 452
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 456
    goto :goto_f

    .line 457
    .line 458
    :cond_1e
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 459
    .line 460
    .line 461
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->k2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 462
    move-result v3

    .line 463
    .line 464
    if-eqz v3, :cond_21

    .line 465
    const/4 v11, 0x1

    .line 466
    .line 467
    if-eq v3, v11, :cond_20

    .line 468
    .line 469
    if-eqz v4, :cond_1f

    .line 470
    .line 471
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 472
    .line 473
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 474
    .line 475
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 479
    .line 480
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 481
    .line 482
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 483
    .line 484
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 488
    goto :goto_f

    .line 489
    .line 490
    :cond_1f
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 491
    .line 492
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 496
    .line 497
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 498
    .line 499
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 503
    goto :goto_f

    .line 504
    .line 505
    :cond_20
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 506
    .line 507
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 511
    goto :goto_f

    .line 512
    .line 513
    :cond_21
    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 514
    .line 515
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 519
    goto :goto_f

    .line 520
    :cond_22
    const/4 v9, 0x3

    .line 521
    .line 522
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 523
    move v11, v9

    .line 524
    move-object v9, v14

    .line 525
    .line 526
    goto/16 :goto_a

    .line 527
    .line 528
    :cond_23
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 529
    .line 530
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 531
    .line 532
    .line 533
    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/Flow;->l2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 534
    move-result v6

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R0(I)V

    .line 538
    .line 539
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 540
    .line 541
    if-lez p2, :cond_24

    .line 542
    .line 543
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 544
    .line 545
    .line 546
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->T1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 547
    move-result v10

    .line 548
    add-int/2addr v6, v10

    .line 549
    .line 550
    :cond_24
    if-eqz p1, :cond_26

    .line 551
    .line 552
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 553
    .line 554
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v10, v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 558
    .line 559
    if-eqz p3, :cond_25

    .line 560
    .line 561
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 562
    .line 563
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 564
    .line 565
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 569
    .line 570
    :cond_25
    if-lez p2, :cond_28

    .line 571
    .line 572
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 573
    .line 574
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 575
    .line 576
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 577
    .line 578
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 582
    goto :goto_10

    .line 583
    .line 584
    :cond_26
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 585
    .line 586
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v10, v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 590
    .line 591
    if-eqz p3, :cond_27

    .line 592
    .line 593
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 594
    .line 595
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 596
    .line 597
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 601
    .line 602
    :cond_27
    if-lez p2, :cond_28

    .line 603
    .line 604
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 605
    .line 606
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 607
    .line 608
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 609
    .line 610
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 614
    :cond_28
    :goto_10
    move v6, v2

    .line 615
    .line 616
    :goto_11
    if-ge v6, v1, :cond_3a

    .line 617
    .line 618
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 619
    add-int/2addr v10, v6

    .line 620
    .line 621
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 622
    .line 623
    .line 624
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 625
    move-result v11

    .line 626
    .line 627
    if-lt v10, v11, :cond_29

    .line 628
    .line 629
    goto/16 :goto_16

    .line 630
    .line 631
    :cond_29
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 632
    .line 633
    .line 634
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 635
    move-result-object v10

    .line 636
    .line 637
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 638
    add-int/2addr v11, v6

    .line 639
    .line 640
    aget-object v10, v10, v11

    .line 641
    .line 642
    if-nez v10, :cond_2a

    .line 643
    const/4 v12, 0x1

    .line 644
    .line 645
    goto/16 :goto_15

    .line 646
    .line 647
    :cond_2a
    if-nez v6, :cond_2d

    .line 648
    .line 649
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 650
    .line 651
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 652
    .line 653
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 654
    .line 655
    .line 656
    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 657
    .line 658
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 659
    .line 660
    .line 661
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->j2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 662
    move-result v11

    .line 663
    .line 664
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 665
    .line 666
    .line 667
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->Z1(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 668
    move-result v12

    .line 669
    .line 670
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 671
    .line 672
    if-nez v13, :cond_2b

    .line 673
    .line 674
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 675
    .line 676
    .line 677
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->a2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 678
    move-result v13

    .line 679
    .line 680
    if-eq v13, v5, :cond_2b

    .line 681
    .line 682
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 683
    .line 684
    .line 685
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->a2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 686
    move-result v11

    .line 687
    .line 688
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 689
    .line 690
    .line 691
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->b2(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 692
    move-result v12

    .line 693
    goto :goto_12

    .line 694
    .line 695
    :cond_2b
    if-eqz p3, :cond_2c

    .line 696
    .line 697
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 698
    .line 699
    .line 700
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->c2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 701
    move-result v13

    .line 702
    .line 703
    if-eq v13, v5, :cond_2c

    .line 704
    .line 705
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 706
    .line 707
    .line 708
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->c2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 709
    move-result v11

    .line 710
    .line 711
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 712
    .line 713
    .line 714
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/Flow;->d2(Landroidx/constraintlayout/core/widgets/Flow;)F

    .line 715
    move-result v12

    .line 716
    .line 717
    .line 718
    :cond_2c
    :goto_12
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i1(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h1(F)V

    .line 722
    .line 723
    :cond_2d
    add-int/lit8 v11, v1, -0x1

    .line 724
    .line 725
    if-ne v6, v11, :cond_2e

    .line 726
    .line 727
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 728
    .line 729
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 730
    .line 731
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 732
    .line 733
    .line 734
    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 735
    .line 736
    :cond_2e
    if-eqz v9, :cond_30

    .line 737
    .line 738
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 739
    .line 740
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 741
    .line 742
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 743
    .line 744
    .line 745
    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/Flow;->U1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 746
    move-result v13

    .line 747
    .line 748
    .line 749
    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 750
    .line 751
    if-ne v6, v7, :cond_2f

    .line 752
    .line 753
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 754
    .line 755
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 756
    .line 757
    .line 758
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->u(I)V

    .line 759
    .line 760
    :cond_2f
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 761
    .line 762
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v11, v12, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 766
    const/4 v11, 0x1

    .line 767
    .line 768
    add-int/lit8 v12, v8, 0x1

    .line 769
    .line 770
    if-ne v6, v12, :cond_30

    .line 771
    .line 772
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 773
    .line 774
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 775
    .line 776
    .line 777
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->u(I)V

    .line 778
    .line 779
    :cond_30
    if-eq v10, v3, :cond_34

    .line 780
    const/4 v9, 0x2

    .line 781
    .line 782
    if-eqz p1, :cond_35

    .line 783
    .line 784
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 785
    .line 786
    .line 787
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->e2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 788
    move-result v11

    .line 789
    .line 790
    if-eqz v11, :cond_33

    .line 791
    const/4 v12, 0x1

    .line 792
    .line 793
    if-eq v11, v12, :cond_32

    .line 794
    .line 795
    if-eq v11, v9, :cond_31

    .line 796
    goto :goto_13

    .line 797
    .line 798
    :cond_31
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 799
    .line 800
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 804
    .line 805
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 806
    .line 807
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 811
    goto :goto_13

    .line 812
    .line 813
    :cond_32
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 814
    .line 815
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 819
    goto :goto_13

    .line 820
    .line 821
    :cond_33
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 822
    .line 823
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 827
    :cond_34
    :goto_13
    const/4 v12, 0x1

    .line 828
    goto :goto_14

    .line 829
    .line 830
    :cond_35
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 831
    .line 832
    .line 833
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/Flow;->e2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 834
    move-result v11

    .line 835
    .line 836
    if-eqz v11, :cond_39

    .line 837
    const/4 v12, 0x1

    .line 838
    .line 839
    if-eq v11, v12, :cond_38

    .line 840
    .line 841
    if-eq v11, v9, :cond_36

    .line 842
    goto :goto_14

    .line 843
    .line 844
    :cond_36
    if-eqz v4, :cond_37

    .line 845
    .line 846
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 847
    .line 848
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 849
    .line 850
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 851
    .line 852
    .line 853
    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 854
    .line 855
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 856
    .line 857
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 858
    .line 859
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 860
    .line 861
    .line 862
    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 863
    goto :goto_14

    .line 864
    .line 865
    :cond_37
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 866
    .line 867
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 871
    .line 872
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 873
    .line 874
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 878
    goto :goto_14

    .line 879
    .line 880
    :cond_38
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 881
    .line 882
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 886
    goto :goto_14

    .line 887
    :cond_39
    const/4 v12, 0x1

    .line 888
    .line 889
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 890
    .line 891
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v9, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 895
    :goto_14
    move-object v9, v10

    .line 896
    .line 897
    :goto_15
    add-int/lit8 v6, v6, 0x1

    .line 898
    .line 899
    goto/16 :goto_11

    .line 900
    :cond_3a
    :goto_16
    return-void
.end method

.method public e()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow;->U1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    .line 18
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow;->T1(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    .line 17
    return v0
.end method

.method public g(I)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    .line 8
    div-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v0, v1, :cond_4

    .line 12
    .line 13
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 14
    add-int/2addr v2, v0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/Flow;->h2(Landroidx/constraintlayout/core/widgets/Flow;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    if-lt v2, v3, :cond_1

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow;->i2(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 32
    add-int/2addr v3, v0

    .line 33
    .line 34
    aget-object v3, v2, v3

    .line 35
    .line 36
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 47
    .line 48
    if-ne v2, v4, :cond_3

    .line 49
    .line 50
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 55
    .line 56
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 64
    move-result v7

    .line 65
    move v5, p1

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->H1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 78
    .line 79
    if-ne v2, v4, :cond_3

    .line 80
    .line 81
    iget v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/core/widgets/Flow;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 93
    move-result v5

    .line 94
    .line 95
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    move v7, p1

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->H1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 100
    .line 101
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h()V

    .line 106
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public j(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mOrientation:I

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingLeft:I

    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingTop:I

    iput p8, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingRight:I

    iput p9, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mPaddingBottom:I

    iput p10, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mMax:I

    return-void
.end method
