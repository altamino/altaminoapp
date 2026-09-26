.class public La6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field private mMaxScale:F

.field private mMinScale:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, La6/e;->mMinScale:F

    .line 6
    .line 7
    iput p2, p0, La6/e;->mMaxScale:F

    .line 8
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    .line 4
    move-result p2

    .line 5
    .line 6
    iget v0, p0, La6/e;->mMaxScale:F

    .line 7
    .line 8
    iget v1, p0, La6/e;->mMinScale:F

    .line 9
    sub-float/2addr v0, v1

    .line 10
    mul-float/2addr p2, v0

    .line 11
    add-float/2addr p2, v1

    .line 12
    .line 13
    iput p2, p1, Lcom/plattysoft/leonids/b;->mScale:F

    .line 14
    return-void
.end method
