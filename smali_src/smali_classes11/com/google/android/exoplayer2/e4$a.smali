.class public final Lcom/google/android/exoplayer2/e4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/e4$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ADAPTIVE_SUPPORTED:I = 0x4

.field private static final FIELD_TRACK_GROUP:I = 0x0

.field private static final FIELD_TRACK_SELECTED:I = 0x3

.field private static final FIELD_TRACK_SUPPORT:I = 0x1


# instance fields
.field private final adaptiveSupported:Z

.field public final length:I

.field private final mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

.field private final trackSelected:[Z

.field private final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/d4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/d4;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/e4$a;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/f1;Z[I[Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iget v0, p1, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/e4$a;->length:I

    .line 8
    array-length v1, p3

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    array-length v1, p4

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    if-le v0, v3, :cond_1

    .line 28
    move v2, v3

    .line 29
    .line 30
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/e4$a;->adaptiveSupported:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, [I

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, [Z

    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 47
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/e4$a;->j(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4$a;

    move-result-object p0

    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic j(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4$a;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/f1;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/exoplayer2/source/f1;

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget v3, v0, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 35
    .line 36
    new-array v3, v3, [I

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, [I

    .line 43
    const/4 v3, 0x3

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    .line 51
    move-result-object v3

    .line 52
    .line 53
    iget v4, v0, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 54
    .line 55
    new-array v4, v4, [Z

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, [Z

    .line 62
    const/4 v4, 0x4

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result p0

    .line 71
    .line 72
    new-instance v1, Lcom/google/android/exoplayer2/e4$a;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/exoplayer2/e4$a;-><init>(Lcom/google/android/exoplayer2/source/f1;Z[I[Z)V

    .line 76
    return-object v1
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/source/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 3
    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/source/f1;->type:I

    .line 5
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/google/common/primitives/a;->b([ZZ)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lcom/google/android/exoplayer2/e4$a;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/e4$a;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/e4$a;->adaptiveSupported:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/e4$a;->adaptiveSupported:Z

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/f1;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 37
    .line 38
    iget-object v3, p1, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 49
    .line 50
    .line 51
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_3
    :goto_1
    return v1
.end method

.method public f(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 3
    .line 4
    aget-boolean p1, v0, p1

    .line 5
    return p1
.end method

.method public g(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/e4$a;->h(IZ)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public h(IZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    const/4 p2, 0x3

    .line 11
    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/f1;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/e4$a;->adaptiveSupported:Z

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/f1;->toBundle()Landroid/os/Bundle;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->trackSupport:[I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 30
    const/4 v1, 0x3

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4$a;->trackSelected:[Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 40
    const/4 v1, 0x4

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4$a;->i(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/e4$a;->adaptiveSupported:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    return-object v0
.end method
