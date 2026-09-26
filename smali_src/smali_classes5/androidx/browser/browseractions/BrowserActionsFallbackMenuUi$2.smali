.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

.field final synthetic val$view:Landroid/view/View;


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    .line 3
    .line 4
    iget-object p1, p1, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "BrowserActionskMenuUi"

    .line 9
    .line 10
    const-string v0, "Cannot trigger menu item listener, it is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$view:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;->a(Landroid/view/View;)V

    .line 20
    return-void
.end method
