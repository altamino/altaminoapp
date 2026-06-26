.class Lcom/narvii/catalog/SubmitFavoriteAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SubmitFavoriteAdapter.java"


# instance fields
.field private nvFragment:Lcom/narvii/app/NVFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    iput-object p1, p0, Lcom/narvii/catalog/SubmitFavoriteAdapter;->nvFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0082

    .line 40
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b15

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 50
    :cond_0
    new-instance p1, Lcom/narvii/catalog/CatalogHelper;

    iget-object v0, p0, Lcom/narvii/catalog/SubmitFavoriteAdapter;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-direct {p1, v0}, Lcom/narvii/catalog/CatalogHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogHelper;->openSubmitFavoritePicker()V

    return p2
.end method
