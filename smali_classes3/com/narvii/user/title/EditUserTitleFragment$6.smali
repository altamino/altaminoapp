.class Lcom/narvii/user/title/EditUserTitleFragment$6;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/narvii/model/api/UserTitle;)Lcom/narvii/model/api/UserTitle;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 329
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p1
.end method
