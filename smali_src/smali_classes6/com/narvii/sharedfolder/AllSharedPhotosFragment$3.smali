.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;
.super Lcom/narvii/list/DatePagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/DatePagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/DatePagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object p3, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 7
    .line 8
    iget-boolean p3, p3, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->fromHomeTab:Z

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    instance-of p3, p3, Lcom/narvii/date/DateSection;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/date/DateSection;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    const v0, 0x7f070120

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result p3

    .line 42
    .line 43
    iget-boolean p1, p1, Lcom/narvii/date/DateSection;->first:Z

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    move p1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p1, p3

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p2, v0, p1, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    :cond_1
    return-object p2
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;-><init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V

    .line 11
    return-object v0
.end method
