.class Lcom/narvii/setting/AccountWebViewFragment$2;
.super Ljava/lang/Object;
.source "AccountWebViewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/setting/AccountWebViewFragment;->relogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/setting/AccountWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/setting/AccountWebViewFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$2;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$2;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$2;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$2;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 85
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$2;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/setting/AccountWebViewFragment$2;->call(Lcom/narvii/model/User;)V

    return-void
.end method
