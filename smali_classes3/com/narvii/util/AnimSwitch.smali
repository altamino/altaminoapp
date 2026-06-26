.class public Lcom/narvii/util/AnimSwitch;
.super Ljava/lang/Object;
.source "AnimSwitch.java"


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/narvii/util/AnimSwitch;->width:F

    .line 18
    iput-wide p2, p0, Lcom/narvii/util/AnimSwitch;->animDuration:J

    return-void
.end method


# virtual methods
.method public anim(J)F
    .locals 6

    .line 41
    iget-wide v0, p0, Lcom/narvii/util/AnimSwitch;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x10

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x32

    sub-long v0, p1, v0

    .line 44
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    iget v3, p0, Lcom/narvii/util/AnimSwitch;->width:F

    mul-float v3, v3, v2

    long-to-float v0, v0

    mul-float v3, v3, v0

    iget-wide v0, p0, Lcom/narvii/util/AnimSwitch;->animDuration:J

    long-to-float v0, v0

    div-float/2addr v3, v0

    .line 47
    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    iget v1, p0, Lcom/narvii/util/AnimSwitch;->target:F

    const/4 v2, 0x0

    const/4 v4, 0x1

    cmpg-float v5, v0, v1

    if-gez v5, :cond_2

    add-float/2addr v0, v3

    .line 48
    iput v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 49
    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 50
    iput v1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 51
    iput-boolean v2, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    goto :goto_1

    .line 53
    :cond_1
    iput-wide p1, p0, Lcom/narvii/util/AnimSwitch;->time:J

    .line 54
    iput-boolean v4, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    goto :goto_1

    :cond_2
    sub-float/2addr v0, v3

    .line 57
    iput v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 58
    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 59
    iput v1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 60
    iput-boolean v2, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    goto :goto_1

    .line 62
    :cond_3
    iput-wide p1, p0, Lcom/narvii/util/AnimSwitch;->time:J

    .line 63
    iput-boolean v4, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    .line 66
    :goto_1
    iget p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    return p1
.end method

.method public getCurrent()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/narvii/util/AnimSwitch;->current:F

    return v0
.end method

.method public inAnim()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/narvii/util/AnimSwitch;->anim:Z

    return v0
.end method

.method public setCurrent(F)V
    .locals 1

    .line 22
    iput p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

    .line 23
    iget p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

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

    .line 27
    iput p1, p0, Lcom/narvii/util/AnimSwitch;->target:F

    .line 28
    iget p1, p0, Lcom/narvii/util/AnimSwitch;->current:F

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
