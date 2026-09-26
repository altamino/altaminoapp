.class public final Lcom/google/android/exoplayer2/source/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/source/f1;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORMATS:I = 0x0

.field private static final FIELD_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Lcom/google/android/exoplayer2/a2;

.field private hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/e1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/e1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/source/f1;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 4
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/f1;->length:I

    .line 5
    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 6
    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/source/f1;->type:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/f1;->j()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/a2;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/f1;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/f1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/f1;->f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/f1;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
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

.method private static synthetic f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/f1;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/f1;->e(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/a2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 22
    move-result-object v1

    .line 23
    :goto_0
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/f1;->e(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, ""

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/exoplayer2/source/f1;

    .line 36
    .line 37
    new-array v0, v0, [Lcom/google/android/exoplayer2/a2;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, [Lcom/google/android/exoplayer2/a2;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/f1;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/a2;)V

    .line 47
    return-object v2
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Different "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p0, " combined in one TrackGroup: \'"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p0, "\' (track 0) and \'"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p0, "\' (track "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p0, ")"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    const-string p0, "TrackGroup"

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v0, "und"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    :cond_1
    return-object p0
.end method

.method private static i(I)I
    .locals 0

    .line 1
    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method private j()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/f1;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    iget v2, v2, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/f1;->i(I)I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 25
    array-length v5, v4

    .line 26
    .line 27
    if-ge v3, v5, :cond_2

    .line 28
    .line 29
    aget-object v4, v4, v3

    .line 30
    .line 31
    iget-object v4, v4, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/f1;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 44
    .line 45
    aget-object v1, v0, v1

    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 48
    .line 49
    aget-object v0, v0, v3

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "languages"

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v1, v0, v3}, Lcom/google/android/exoplayer2/source/f1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 60
    .line 61
    aget-object v4, v4, v3

    .line 62
    .line 63
    iget v4, v4, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/f1;->i(I)I

    .line 67
    move-result v4

    .line 68
    .line 69
    if-eq v2, v4, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 72
    .line 73
    aget-object v0, v0, v1

    .line 74
    .line 75
    iget v0, v0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 82
    .line 83
    aget-object v1, v1, v3

    .line 84
    .line 85
    iget v1, v1, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "role flags"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/f1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void

    .line 96
    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/f1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/f1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/f1;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/a2;)V

    .line 8
    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/a2;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 4
    array-length v2, v1

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, -0x1

    .line 16
    return p1
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
    const-class v3, Lcom/google/android/exoplayer2/source/f1;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/f1;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/f1;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x20f

    .line 13
    add-int/2addr v1, v0

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    add-int/2addr v1, v0

    .line 23
    .line 24
    iput v1, p0, Lcom/google/android/exoplayer2/source/f1;->hashCode:I

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/f1;->hashCode:I

    .line 27
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 10
    array-length v2, v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->formats:[Lcom/google/android/exoplayer2/a2;

    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    const/4 v6, 0x1

    .line 20
    .line 21
    if-ge v5, v3, :cond_0

    .line 22
    .line 23
    aget-object v7, v2, v5

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/a2;->j(Z)Landroid/os/Bundle;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/f1;->e(I)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/f1;->e(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f1;->id:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method
