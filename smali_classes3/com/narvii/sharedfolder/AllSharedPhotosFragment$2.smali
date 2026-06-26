.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;
.super Ljava/lang/Object;
.source "AllSharedPhotosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
