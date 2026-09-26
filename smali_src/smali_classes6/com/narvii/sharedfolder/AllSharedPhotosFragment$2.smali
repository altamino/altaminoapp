.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$2;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/list/NVAdapter;

    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 24
    :cond_0
    return-void
.end method
