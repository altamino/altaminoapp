.class Lcom/narvii/item/list/ItemGallery$Adapter;
.super Landroid/widget/BaseAdapter;
.source "ItemGallery.java"


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

    .line 60
    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/item/list/ItemGallery;Lcom/narvii/item/list/ItemGallery$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;-><init>(Lcom/narvii/item/list/ItemGallery;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->access$100(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->access$100(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/Item;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->access$100(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 81
    instance-of v0, p2, Lcom/narvii/widget/CardView;

    if-eqz v0, :cond_0

    .line 82
    check-cast p2, Lcom/narvii/widget/CardView;

    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery$Adapter;->this$0:Lcom/narvii/item/list/ItemGallery;

    invoke-static {v0}, Lcom/narvii/item/list/ItemGallery;->access$200(Lcom/narvii/item/list/ItemGallery;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CardView;

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    return-object p2
.end method
