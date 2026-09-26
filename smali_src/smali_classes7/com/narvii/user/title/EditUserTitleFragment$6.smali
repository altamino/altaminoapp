.class Lcom/narvii/user/title/EditUserTitleFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public transform(Lcom/narvii/model/api/UserTitle;)Lcom/narvii/model/api/UserTitle;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$6;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    return-object p1
.end method
