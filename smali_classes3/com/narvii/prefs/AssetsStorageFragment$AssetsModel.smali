.class public final Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
.super Ljava/lang/Object;
.source "AssetsStorageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AssetsStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsModel"
.end annotation


# instance fields
.field private final clearCache:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Z

.field private size:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    iput-wide p2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    iput-boolean p4, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    iput-object p5, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, p4

    :goto_0
    move-object v0, p0

    move-object v5, p5

    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;Ljava/lang/String;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
    .locals 3

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

    iget-object p5, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->copy(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

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

.method public final component4()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    iget-wide v5, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    iget-boolean v3, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getClearCache()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSelected()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    return v0
.end method

.method public final getSize()J
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    .line 245
    iput-wide p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssetsModel(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clearCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->clearCache:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
