.class public Lcom/narvii/util/particles/EliminateInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field eliminate:I

.field i:I

.field total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/particles/EliminateInitializer;->total:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/particles/EliminateInitializer;->eliminate:I

    .line 8
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/particles/EliminateInitializer;->i:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/particles/EliminateInitializer;->i:I

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    int-to-float v0, v0

    .line 10
    mul-float/2addr v0, v2

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/util/particles/EliminateInitializer;->total:I

    .line 13
    int-to-float v3, v2

    .line 14
    div-float/2addr v0, v3

    .line 15
    .line 16
    iget v3, p0, Lcom/narvii/util/particles/EliminateInitializer;->eliminate:I

    .line 17
    int-to-float v3, v3

    .line 18
    mul-float/2addr v0, v3

    .line 19
    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    mul-float/2addr v0, v3

    .line 22
    int-to-float v2, v2

    .line 23
    div-float/2addr v0, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    .line 27
    move-result p2

    .line 28
    .line 29
    cmpg-float p2, p2, v0

    .line 30
    .line 31
    if-gez p2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    .line 35
    :goto_0
    iput-boolean v1, p1, Lcom/plattysoft/leonids/b;->mHidden:Z

    .line 36
    return-void
.end method
