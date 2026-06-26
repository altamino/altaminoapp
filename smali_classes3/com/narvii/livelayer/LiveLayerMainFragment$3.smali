.class Lcom/narvii/livelayer/LiveLayerMainFragment$3;
.super Lcom/narvii/list/MergeAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$3;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$3;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 250
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
