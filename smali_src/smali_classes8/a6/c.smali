.class public La6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field private mMaxAngle:I

.field private mMinAngle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, La6/c;->mMinAngle:I

    .line 6
    .line 7
    iput p2, p0, La6/c;->mMaxAngle:I

    .line 8
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, La6/c;->mMaxAngle:I

    .line 3
    .line 4
    iget v1, p0, La6/c;->mMinAngle:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 9
    move-result p2

    .line 10
    .line 11
    iget v0, p0, La6/c;->mMinAngle:I

    .line 12
    add-int/2addr p2, v0

    .line 13
    int-to-float p2, p2

    .line 14
    .line 15
    iput p2, p1, Lcom/plattysoft/leonids/b;->mInitialRotation:F

    .line 16
    return-void
.end method
