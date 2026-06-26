.class Lcom/narvii/webview/WebViewFragment$4;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/webview/WebViewFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/webview/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$4;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 406
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$4;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/webview/WebViewFragment;->openInExternalWebBrowser()V

    :cond_0
    return-void
.end method
