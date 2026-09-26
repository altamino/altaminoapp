.class Lcom/narvii/webview/WebViewFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$2;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$2;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/webview/WebViewFragment;->openInExternalWebBrowser()V

    .line 8
    :cond_0
    return-void
.end method
