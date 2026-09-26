.class Lcom/narvii/item/list/ItemGallery$Adapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/list/ItemGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/narvii/item/list/ItemGallery;


# direct methods
.method private constructor <init>(Lcom/narvii/item/list/ItemGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/item/list/ItemGallery;Lcom/narvii/item/list/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;-><init>(Lcom/narvii/item/list/ItemGallery;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->k(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->k(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/Item;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    .line 2
    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->k(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result p1

    .line 11
    int-to-long v0, p1

    .line 12
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p2, Lcom/narvii/widget/CardView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/widget/CardView;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->j(Lcom/narvii/item/list/ItemGallery;)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/widget/CardView;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 30
    return-object p2
.end method
