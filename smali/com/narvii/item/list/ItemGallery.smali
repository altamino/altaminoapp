.class public Lcom/narvii/item/list/ItemGallery;
.super Lcom/narvii/widget/Gallery;
.source "ItemGallery.java"

# interfaces
.implements Lcom/narvii/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/item/list/ItemGallery$Adapter;,
        Lcom/narvii/item/list/ItemGallery$OnItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

.field private layoutId:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/narvii/item/list/ItemGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0b0313

    .line 25
    iput p1, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    .line 36
    invoke-virtual {p0, p0}, Lcom/narvii/widget/AdapterView;->setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/item/list/ItemGallery;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/item/list/ItemGallery;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    return p0
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 94
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    invoke-virtual {p1, p3}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    invoke-interface {p2, p1, p3}, Lcom/narvii/item/list/ItemGallery$OnItemClickListener;->onItemClick(Lcom/narvii/model/Item;I)V

    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->list:Ljava/util/List;

    .line 48
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lcom/narvii/item/list/ItemGallery$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/narvii/item/list/ItemGallery$Adapter;-><init>(Lcom/narvii/item/list/ItemGallery;Lcom/narvii/item/list/ItemGallery$1;)V

    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 50
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setLayout(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    if-nez v0, :cond_0

    .line 43
    iput p1, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOnItemClickListener(Lcom/narvii/item/list/ItemGallery$OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    return-void
.end method
