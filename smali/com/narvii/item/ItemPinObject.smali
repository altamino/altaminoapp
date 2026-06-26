.class public Lcom/narvii/item/ItemPinObject;
.super Lcom/narvii/model/NVObject;
.source "ItemPinObject.java"


# instance fields
.field public id:Ljava/lang/String;

.field public inMyFavorites:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/narvii/item/ItemPinObject;->id:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/narvii/item/ItemPinObject;->inMyFavorites:I

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/item/ItemPinObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
