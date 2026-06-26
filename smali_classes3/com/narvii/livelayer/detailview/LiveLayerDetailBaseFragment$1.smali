.class Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;
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

    .line 125
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
