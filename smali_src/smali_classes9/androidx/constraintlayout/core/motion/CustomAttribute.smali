.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 3
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 10

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 18
    .line 19
    aput v0, p1, v1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 23
    .line 24
    aput v0, p1, v1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    aput v0, p1, v1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 34
    .line 35
    shr-int/lit8 v2, v0, 0x18

    .line 36
    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 38
    .line 39
    shr-int/lit8 v3, v0, 0x10

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    shr-int/lit8 v4, v0, 0x8

    .line 44
    .line 45
    and-int/lit16 v4, v4, 0xff

    .line 46
    .line 47
    and-int/lit16 v0, v0, 0xff

    .line 48
    int-to-float v3, v3

    .line 49
    .line 50
    const/high16 v5, 0x437f0000    # 255.0f

    .line 51
    div-float/2addr v3, v5

    .line 52
    float-to-double v6, v3

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v8, 0x400199999999999aL    # 2.2

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 61
    move-result-wide v6

    .line 62
    double-to-float v3, v6

    .line 63
    int-to-float v4, v4

    .line 64
    div-float/2addr v4, v5

    .line 65
    float-to-double v6, v4

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 69
    move-result-wide v6

    .line 70
    double-to-float v4, v6

    .line 71
    int-to-float v0, v0

    .line 72
    div-float/2addr v0, v5

    .line 73
    float-to-double v6, v0

    .line 74
    .line 75
    .line 76
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 77
    move-result-wide v6

    .line 78
    double-to-float v0, v6

    .line 79
    .line 80
    aput v3, p1, v1

    .line 81
    const/4 v1, 0x1

    .line 82
    .line 83
    aput v4, p1, v1

    .line 84
    const/4 v1, 0x2

    .line 85
    .line 86
    aput v0, p1, v1

    .line 87
    int-to-float v0, v2

    .line 88
    div-float/2addr v0, v5

    .line 89
    const/4 v1, 0x3

    .line 90
    .line 91
    aput v0, p1, v1

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :pswitch_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    const-string v0, "Color does not have a single color to interpolate"

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    .line 102
    :pswitch_5
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    .line 103
    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    .line 110
    :goto_0
    aput v0, p1, v1

    .line 111
    :goto_1
    return-void

    .line 112
    nop

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v2, 0x5

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    return v1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 21
    .line 22
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 30
    .line 31
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p1

    .line 39
    .line 40
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result p1

    .line 53
    .line 54
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result p1

    .line 62
    .line 63
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    .line 64
    :goto_0
    return-void

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
