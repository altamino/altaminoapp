.class public final Lcom/google/android/exoplayer2/text/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/text/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/f;

.field private static final FIELD_CUES:I = 0x0

.field private static final FIELD_PRESENTATION_TIME_US:I = 0x1


# instance fields
.field public final cues:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field public final presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/f;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/text/f;-><init>(Ljava/util/List;J)V

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/text/f;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/f;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/text/e;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/e;-><init>()V

    .line 19
    .line 20
    sput-object v0, Lcom/google/android/exoplayer2/text/f;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/f;->cues:Lcom/google/common/collect/a0;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/google/android/exoplayer2/text/f;->presentationTimeUs:J

    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/f;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/f;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Lcom/google/common/collect/a0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/exoplayer2/text/b;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/google/android/exoplayer2/text/b;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/exoplayer2/text/b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/text/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/f;->d(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/text/b;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/f;->d(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    new-instance p0, Lcom/google/android/exoplayer2/text/f;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/text/f;-><init>(Ljava/util/List;J)V

    .line 37
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


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/f;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/f;->cues:Lcom/google/common/collect/a0;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/f;->b(Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/c;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/f;->d(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/f;->presentationTimeUs:J

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    return-object v0
.end method
