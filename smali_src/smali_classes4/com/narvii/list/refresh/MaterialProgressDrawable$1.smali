.class Lcom/narvii/list/refresh/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    .line 4
    iget-boolean v0, p2, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->c(Lcom/narvii/list/refresh/MaterialProgressDrawable;FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->d(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)F

    .line 18
    move-result p2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    .line 24
    move-result v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    .line 30
    move-result v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    .line 36
    move-result v2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 41
    .line 42
    .line 43
    invoke-static {v3, p1, v4}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->e(Lcom/narvii/list/refresh/MaterialProgressDrawable;FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    .line 44
    .line 45
    const/high16 v3, 0x3f000000    # 0.5f

    .line 46
    .line 47
    cmpg-float v4, p1, v3

    .line 48
    .line 49
    .line 50
    const v5, 0x3f4ccccd    # 0.8f

    .line 51
    .line 52
    if-gtz v4, :cond_1

    .line 53
    .line 54
    div-float v4, p1, v3

    .line 55
    .line 56
    sub-float v6, v5, p2

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->f()Landroid/view/animation/Interpolator;

    .line 60
    move-result-object v7

    .line 61
    .line 62
    .line 63
    invoke-interface {v7, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 64
    move-result v4

    .line 65
    mul-float/2addr v6, v4

    .line 66
    add-float/2addr v1, v6

    .line 67
    .line 68
    iget-object v4, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 72
    .line 73
    :cond_1
    cmpl-float v1, p1, v3

    .line 74
    .line 75
    if-lez v1, :cond_2

    .line 76
    sub-float/2addr v5, p2

    .line 77
    .line 78
    sub-float p2, p1, v3

    .line 79
    div-float/2addr p2, v3

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->f()Landroid/view/animation/Interpolator;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 87
    move-result p2

    .line 88
    mul-float/2addr v5, p2

    .line 89
    add-float/2addr v0, v5

    .line 90
    .line 91
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 95
    .line 96
    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    .line 97
    mul-float/2addr p2, p1

    .line 98
    add-float/2addr v2, p2

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 104
    .line 105
    const/high16 p2, 0x43580000    # 216.0f

    .line 106
    mul-float/2addr p1, p2

    .line 107
    .line 108
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->a(Lcom/narvii/list/refresh/MaterialProgressDrawable;)F

    .line 112
    move-result p2

    .line 113
    .line 114
    const/high16 v0, 0x40a00000    # 5.0f

    .line 115
    div-float/2addr p2, v0

    .line 116
    .line 117
    const/high16 v0, 0x44870000    # 1080.0f

    .line 118
    mul-float/2addr p2, v0

    .line 119
    add-float/2addr p1, p2

    .line 120
    .line 121
    iget-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setRotation(F)V

    .line 125
    :goto_0
    return-void
.end method
