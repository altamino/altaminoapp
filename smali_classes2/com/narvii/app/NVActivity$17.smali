.class Lcom/narvii/app/NVActivity$17;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;

.field final synthetic val$deeplink:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2222
    iput-object p1, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    iput-object p2, p0, Lcom/narvii/app/NVActivity$17;->val$deeplink:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/app/NVActivity$17;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2225
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->val$deeplink:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x4f

    const-string v1, "android.intent.action.VIEW"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->val$deeplink:Ljava/lang/String;

    const-string v2, "ndc://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->val$deeplink:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2226
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->val$deeplink:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2228
    iget-object v2, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2231
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    const-string v2, "fragmentRegister"

    invoke-virtual {p1, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentRegister;

    if-eqz p1, :cond_1

    const-string v2, "accountWebView"

    .line 2233
    invoke-virtual {p1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2235
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2236
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->val$url:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2237
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v2, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2242
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/app/NVActivity;->access$600(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2243
    iget-object p1, p0, Lcom/narvii/app/NVActivity$17;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/app/NVActivity;->access$600(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    :cond_2
    return-void
.end method
