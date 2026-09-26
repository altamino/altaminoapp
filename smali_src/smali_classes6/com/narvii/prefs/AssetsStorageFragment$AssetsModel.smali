.class public final Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AssetsStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsModel"
.end annotation


# instance fields
.field private final clearCache:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selected:Z

.field private size:J

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLe8/a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    iput-wide p2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    iput-boolean p4, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    iput-object p5, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZLe8/a;ILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    move-wide v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    move-object v0, p0

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;Ljava/lang/String;JZLe8/a;ILjava/lang/Object;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p4, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    :cond_2
    move p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->copy(Ljava/lang/String;JZLe8/a;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    return v0
.end method

.method public final component4()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JZLe8/a;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    iget-wide v5, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    iget-boolean v3, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    iget-object p1, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getClearCache()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    return-object v0
.end method

.method public final getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    return v0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    iget-wide v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    iget-boolean v3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    iget-object v4, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Le8/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssetsModel(title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", selected="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clearCache="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
