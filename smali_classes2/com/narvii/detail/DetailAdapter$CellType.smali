.class public Lcom/narvii/detail/DetailAdapter$CellType;
.super Lcom/narvii/util/Tag;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellType"
.end annotation


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final isEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    .line 156
    iput-boolean p2, p0, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    .line 146
    iput-boolean p2, p0, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/narvii/detail/DetailAdapter$CellType;

    if-eqz v1, :cond_0

    .line 162
    check-cast p1, Lcom/narvii/detail/DetailAdapter$CellType;

    iget-object p1, p1, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 164
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 172
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isType(Ljava/lang/Object;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
