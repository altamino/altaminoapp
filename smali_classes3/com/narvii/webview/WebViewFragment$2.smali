.class Lcom/narvii/webview/WebViewFragment$2;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/narvii/webview/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$2;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment$2;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object v0, v0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$2;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p1}, Lcom/narvii/webview/WebViewFragment;->access$000(Lcom/narvii/webview/WebViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
