.class public Lcom/narvii/util/AnimSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anim:Z

.field private animDuration:J

.field private current:F

.field private o:Z

.field private target:F

.field private time:J

.field private width:F


# direct methods
.method public constructor <init>(FJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/AnimSwitch;->width:F

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/narvii/util/AnimSwitch;->animDuration:J

    .line 8
    return-void
.end method


# virtual methods
.method public anim(J)F
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/util/AnimSwitch;->time:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x10

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-wide/16 v2, 0x32

    .line 14
    .line 15
    sub-long v0, p1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/util/AnimSwitch;->width:F

    .line 24
    mul-float/2addr v3, v2

    .line 25
    long-to-float v0, v0

    .line 26
    mul-float/2addr v3, v0

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/narvii/util/AnimSwitch;->animDuration:J

    .line 29
    long-to-float v0, v0

    .line 30
    div-float/2addr v3, v0

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 33
    .line 34
    iget v1, p0, Lcom/narvii/util/AnimSwitch;->target:F

    .line 35
    .line 36
    cmpg-float v2, v0, v1

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    if-gez v2, :cond_2

    .line 41
    add-float/2addr v0, v3

    .line 42
    .line 43
    iput v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 44
    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-ltz v0, :cond_1

    .line 48
    .line 49
    iput v1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 50
    .line 51
    iput-boolean v5, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    iput-wide p1, p0, Lcom/narvii/util/AnimSwitch;->time:J

    .line 55
    .line 56
    iput-boolean v4, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sub-float/2addr v0, v3

    .line 59
    .line 60
    iput v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 61
    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gtz v0, :cond_3

    .line 65
    .line 66
    iput v1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 67
    .line 68
    iput-boolean v5, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    iput-wide p1, p0, Lcom/narvii/util/AnimSwitch;->time:J

    .line 72
    .line 73
    iput-boolean v4, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    .line 74
    .line 75
    :goto_1
    iget p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 76
    return p1
.end method

.method public getCurrent()F
    .locals 1

    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    return v0
.end method

.method public inAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    return v0
.end method

.method public setCurrent(F)V
    .locals 1

    iput p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    iget v0, p0, Lcom/narvii/util/AnimSwitch;->target:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    return-void
.end method

.method public setTarget(F)V
    .locals 1

    iput p1, p0, Lcom/narvii/util/AnimSwitch;->target:F

    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    return-void
.end method
