.class Lcom/narvii/user/profile/UserProfileFragment$6;
.super Lcom/narvii/list/MergeAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
