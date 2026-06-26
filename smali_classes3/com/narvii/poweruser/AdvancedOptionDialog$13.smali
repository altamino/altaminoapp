.class Lcom/narvii/poweruser/AdvancedOptionDialog$13;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->submitOfficialCatalog(Lcom/narvii/model/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$item:Lcom/narvii/model/Item;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/view/View;Lcom/narvii/model/Item;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->val$item:Lcom/narvii/model/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 805
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->val$v:Landroid/view/View;

    const p2, 0x7f090b5b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 807
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 808
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$13$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$13$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$13;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 817
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/knowledge-base-request"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 818
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->val$item:Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string v1, "itemId"

    .line 819
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 820
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$13;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 821
    iget-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 822
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method
