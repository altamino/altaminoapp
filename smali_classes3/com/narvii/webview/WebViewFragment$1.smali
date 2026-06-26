.class Lcom/narvii/webview/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 147
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$1;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressFinish()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment$1;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object v0, v0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
