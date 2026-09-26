.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 4
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method


# virtual methods
.method f(J)Z
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    .line 10
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 15
    .line 16
    cmpl-float v6, v1, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringForce;->d(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 24
    .line 25
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->a()F

    .line 31
    move-result v1

    .line 32
    .line 33
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 34
    .line 35
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 36
    .line 37
    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 38
    return v2

    .line 39
    .line 40
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 41
    .line 42
    cmpl-float v1, v1, v5

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->a()F

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 52
    .line 53
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 54
    float-to-double v7, v1

    .line 55
    .line 56
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 57
    float-to-double v9, v1

    .line 58
    .line 59
    const-wide/16 v11, 0x2

    .line 60
    .line 61
    div-long v18, p1, v11

    .line 62
    .line 63
    move-wide/from16 v11, v18

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->e(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 70
    .line 71
    iget v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->d(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 75
    .line 76
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 77
    .line 78
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 79
    .line 80
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 81
    float-to-double v14, v5

    .line 82
    .line 83
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 84
    float-to-double v5, v1

    .line 85
    .line 86
    move-wide/from16 v16, v5

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->e(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 93
    .line 94
    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 95
    .line 96
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 97
    .line 98
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    .line 103
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 104
    float-to-double v14, v1

    .line 105
    .line 106
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 107
    float-to-double v5, v1

    .line 108
    .line 109
    move-wide/from16 v16, v5

    .line 110
    .line 111
    move-wide/from16 v18, p1

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->e(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 118
    .line 119
    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 120
    .line 121
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 122
    .line 123
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 124
    .line 125
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 126
    .line 127
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 131
    move-result v1

    .line 132
    .line 133
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 134
    .line 135
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 139
    move-result v1

    .line 140
    .line 141
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 142
    .line 143
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->g(FF)Z

    .line 147
    move-result v1

    .line 148
    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->a()F

    .line 155
    move-result v1

    .line 156
    .line 157
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 158
    .line 159
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 160
    return v2

    .line 161
    :cond_3
    return v3
.end method

.method g(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->c(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
