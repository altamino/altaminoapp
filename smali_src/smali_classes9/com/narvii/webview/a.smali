.class public final synthetic Lcom/narvii/webview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;


# instance fields
.field public final synthetic a:Lcom/narvii/webview/WebViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/webview/a;->a:Lcom/narvii/webview/WebViewFragment;

    return-void
.end method


# virtual methods
.method public final onProgressFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/webview/a;->a:Lcom/narvii/webview/WebViewFragment;

    invoke-static {v0}, Lcom/narvii/webview/WebViewFragment;->o(Lcom/narvii/webview/WebViewFragment;)V

    return-void
.end method
