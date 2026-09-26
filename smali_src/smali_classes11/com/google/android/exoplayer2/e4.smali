.class public final Lcom/google/android/exoplayer2/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/e4$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/e4;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/e4;

.field private static final FIELD_TRACK_GROUPS:I


# instance fields
.field private final groups:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/e4$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/e4;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/e4;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/e4;->EMPTY:Lcom/google/android/exoplayer2/e4;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/c4;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/c4;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/e4;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/e4$a;",
            ">;)V"
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/e4;->f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4;

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

.method private static synthetic f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e4;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/e4;->e(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/e4$a;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/e4;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/e4;-><init>(Ljava/util/List;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/common/collect/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/e4$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/exoplayer2/e4$a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e4$a;->e()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e4$a;->d()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-class v1, Lcom/google/android/exoplayer2/e4;

    .line 13
    .line 14
    if-eq v1, v0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/e4;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/a0;->hashCode()I

    .line 6
    move-result v0

    .line 7
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
    invoke-static {v1}, Lcom/google/android/exoplayer2/e4;->e(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/e4;->groups:Lcom/google/common/collect/a0;

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
