.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;
.super Lcom/narvii/list/DatePagedAdapter;
.source "AllSharedPhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DatePagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/DatePagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 128
    iget-object p3, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    iget-boolean p3, p3, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->fromHomeTab:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/date/DateSection;

    if-eqz p3, :cond_1

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/date/DateSection;

    .line 130
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700e3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 131
    iget-boolean p1, p1, Lcom/narvii/date/DateSection;->first:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-virtual {p2, v0, p1, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-object p2
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 2

    .line 113
    new-instance v0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;

    new-instance v1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;

    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;)V

    invoke-direct {v0, p1, v1}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V

    return-object v0
.end method
