.class Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 5
    .line 6
    const-string v1, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;->this$1:Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/setting/AccountWebViewFragment;->popupLogout()V

    .line 24
    return-void
.end method
