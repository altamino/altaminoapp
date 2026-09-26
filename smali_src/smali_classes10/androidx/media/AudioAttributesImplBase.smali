.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/AudioAttributesImplBase$Builder;
    }
.end annotation


# instance fields
.field public mContentType:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mFlags:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mLegacyStream:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public mUsage:I
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iput p2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iput p3, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iput p4, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method static f(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0xb

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/16 p0, 0xd

    return p0

    :pswitch_9
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplBase;->e()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x6

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    or-int/lit8 v0, v0, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x7

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    :cond_1
    :goto_0
    and-int/lit16 v0, v0, 0x111

    .line 20
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/media/AudioAttributesCompat;->e(ZII)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 9
    .line 10
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getContentType()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->a()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->c()I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 35
    .line 36
    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 37
    .line 38
    if-ne v0, p1, :cond_1

    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "AudioAttributesCompat:"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, " stream="

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, " derived"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    :cond_0
    const-string v1, " usage="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/media/AudioAttributesCompat;->g(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, " content="

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, " flags=0x"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method
