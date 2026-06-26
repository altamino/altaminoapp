.class Lcom/narvii/item/ItemHelper$3;
.super Ljava/lang/Object;
.source "ItemHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/ItemHelper;

.field final synthetic val$item:Lcom/narvii/model/Item;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;Lcom/narvii/model/Item;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    iput-object p2, p0, Lcom/narvii/item/ItemHelper$3;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/item/ItemHelper$3;->val$item:Lcom/narvii/model/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$3;->val$v:Landroid/view/View;

    const p2, 0x7f090b5b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 143
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/narvii/item/ItemHelper$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper$3$1;-><init>(Lcom/narvii/item/ItemHelper$3;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 154
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/knowledge-base-request"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->val$item:Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string v1, "itemId"

    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v1, "api"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 158
    iget-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 159
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method
