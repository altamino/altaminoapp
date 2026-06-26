.class Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;
.super Ljava/lang/Object;
.source "TippingConfirmDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog$7;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 665
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 667
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1400(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/PurchaseConfirmButton;->isSending()Z

    move-result p1

    if-nez p1, :cond_1

    .line 668
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->doSubmit()V

    goto :goto_0

    .line 671
    :cond_0
    new-instance p1, Lcom/narvii/model/Community;

    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    .line 672
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    iget v0, v0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    iput v0, p1, Lcom/narvii/model/Community;->id:I

    .line 673
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 674
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "joinOnly"

    .line 676
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$800(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 662
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
