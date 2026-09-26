.class Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 3
    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->a(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/PurchaseConfirmButton;->isSending()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->doSubmit()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/narvii/model/Community;

    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 6
    iget v0, v0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    iput v0, p1, Lcom/narvii/model/Community;->id:I

    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 7
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    iget v2, p1, Lcom/narvii/model/Community;->id:I

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "icon"

    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "joinOnly"

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "prefetch"

    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->this$1:Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
