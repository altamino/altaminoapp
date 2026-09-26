.class public final Lcom/google/android/exoplayer2/source/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/source/h1;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/source/h1;

.field private static final FIELD_TRACK_GROUPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrackGroupArray"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/source/f1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/h1;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v1, v1, [Lcom/google/android/exoplayer2/source/f1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/source/g1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/g1;-><init>()V

    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/source/h1;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 18
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/f1;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/common/collect/a0;->u([Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 10
    array-length p1, p1

    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/h1;->f()V

    .line 16
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/h1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/h1;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/h1;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
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

.method private static synthetic e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/h1;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/h1;->d(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lcom/google/android/exoplayer2/source/h1;

    .line 14
    .line 15
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/f1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/h1;

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/exoplayer2/source/f1;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/f1;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/common/collect/y;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    check-cast p0, [Lcom/google/android/exoplayer2/source/f1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 39
    return-object v1
.end method

.method private f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    move v2, v1

    .line 13
    .line 14
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/google/android/exoplayer2/source/f1;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 31
    .line 32
    .line 33
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/f1;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    const-string v4, "TrackGroupArray"

    .line 50
    .line 51
    const-string v5, ""

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/android/exoplayer2/source/f1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/source/f1;

    .line 9
    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/source/f1;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/a0;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    :goto_0
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
    const-class v3, Lcom/google/android/exoplayer2/source/h1;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/h1;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/h1;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/common/collect/a0;->hashCode()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/source/h1;->hashCode:I

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/h1;->hashCode:I

    .line 15
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
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/h1;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h1;->trackGroups:Lcom/google/common/collect/a0;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/c;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 20
    return-object v0
.end method
