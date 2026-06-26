.class Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;
.super Ljava/lang/Object;
.source "AccountWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;


# direct methods
.method constructor <init>(Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    iget-object v0, v0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 134
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    iget-object v0, v0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {v0}, Lcom/narvii/setting/AccountWebViewFragment;->popupLogout()V

    return-void
.end method
