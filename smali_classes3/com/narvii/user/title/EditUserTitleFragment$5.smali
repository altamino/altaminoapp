.class Lcom/narvii/user/title/EditUserTitleFragment$5;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;


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

    .line 275
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChangedEmpty()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$100(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 302
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$600(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 303
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$5$2;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5$2;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$5;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public afterTextChangedNotEmpty(Ljava/lang/String;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$100(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v2}, Lcom/narvii/user/title/EditUserTitleFragment;->access$200(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v2}, Lcom/narvii/user/title/EditUserTitleFragment;->access$300(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v2}, Lcom/narvii/user/title/EditUserTitleFragment;->access$300(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iput-object p1, v0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 286
    new-instance p1, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    iget-object v2, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    iget-object v3, v0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3}, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$302(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    .line 287
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$300(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 289
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$400(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V

    .line 291
    :goto_2
    new-instance p1, Lcom/narvii/user/title/EditUserTitleFragment$5$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$5;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveTextBeyondLimit()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$200(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$700(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$702(Lcom/narvii/user/title/EditUserTitleFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->access$200(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$700(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
