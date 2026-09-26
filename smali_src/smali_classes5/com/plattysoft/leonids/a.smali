.class public Lcom/plattysoft/leonids/a;
.super Lcom/plattysoft/leonids/b;
.source "SourceFile"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mTotalTime:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/plattysoft/leonids/b;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iput v0, p0, Lcom/plattysoft/leonids/a;->mTotalTime:I

    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-ge v0, p1, :cond_0

    .line 29
    .line 30
    iget p1, p0, Lcom/plattysoft/leonids/a;->mTotalTime:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 36
    move-result v1

    .line 37
    add-int/2addr p1, v1

    .line 38
    .line 39
    iput p1, p0, Lcom/plattysoft/leonids/a;->mTotalTime:I

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public e(J)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/plattysoft/leonids/b;->e(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/plattysoft/leonids/b;->mStartingMilisecond:J

    .line 9
    sub-long/2addr p1, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/plattysoft/leonids/a;->mTotalTime:I

    .line 12
    int-to-long v1, v1

    .line 13
    .line 14
    cmp-long v1, p1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    return v2

    .line 27
    .line 28
    :cond_0
    iget v1, p0, Lcom/plattysoft/leonids/a;->mTotalTime:I

    .line 29
    int-to-long v3, v1

    .line 30
    rem-long/2addr p1, v3

    .line 31
    .line 32
    :cond_1
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 38
    move-result v1

    .line 39
    .line 40
    if-ge v2, v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 46
    move-result v1

    .line 47
    int-to-long v5, v1

    .line 48
    add-long/2addr v3, v5

    .line 49
    .line 50
    cmp-long v1, v3, p1

    .line 51
    .line 52
    if-lez v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/plattysoft/leonids/a;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    return v0
.end method
