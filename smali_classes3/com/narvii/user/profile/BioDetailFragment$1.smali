.class Lcom/narvii/user/profile/BioDetailFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "BioDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/BioDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$1;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$1;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v0, p3}, Lcom/narvii/user/profile/BioDetailFragment;->access$000(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$1;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v0, p3}, Lcom/narvii/user/profile/BioDetailFragment;->access$100(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
