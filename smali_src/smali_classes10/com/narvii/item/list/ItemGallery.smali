.class public Lcom/narvii/item/list/ItemGallery;
.super Lcom/narvii/widget/Gallery;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/item/list/ItemGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0346

    iput p1, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    .line 3
    invoke-virtual {p0, p0}, Lcom/narvii/widget/AdapterView;->setOnItemClickListener(Lcom/narvii/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/item/list/ItemGallery;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/item/list/ItemGallery;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/item/list/ItemGallery;->list:Ljava/util/List;

    return-object p0
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Lcom/narvii/item/list/ItemGallery$Adapter;->getItem(I)Lcom/narvii/model/Item;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1, p3}, Lcom/narvii/item/list/ItemGallery$OnItemClickListener;->onItemClick(Lcom/narvii/model/Item;I)V

    .line 16
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->list:Ljava/util/List;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lcom/narvii/item/list/ItemGallery$Adapter;-><init>(Lcom/narvii/item/list/ItemGallery;Lcom/narvii/item/list/a;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    :goto_0
    return-void
.end method

.method public setLayout(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/list/ItemGallery;->adapter:Lcom/narvii/item/list/ItemGallery$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/item/list/ItemGallery;->layoutId:I

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    throw p1
.end method

.method public setOnItemClickListener(Lcom/narvii/item/list/ItemGallery$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/item/list/ItemGallery;->listener:Lcom/narvii/item/list/ItemGallery$OnItemClickListener;

    return-void
.end method
