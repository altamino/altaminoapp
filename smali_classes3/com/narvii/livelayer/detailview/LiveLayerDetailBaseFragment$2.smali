.class Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;
.super Ljava/lang/Object;
.source "LiveLayerDetailBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 143
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f01000d

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
