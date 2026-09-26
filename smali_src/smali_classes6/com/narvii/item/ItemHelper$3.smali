.class Lcom/narvii/item/ItemHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/item/ItemHelper$3;->val$v:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/item/ItemHelper$3;->val$item:Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$3;->val$v:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const p2, 0x7f0a0e51

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/item/ItemHelper$3$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/item/ItemHelper$3$1;-><init>(Lcom/narvii/item/ItemHelper$3;)V

    .line 30
    .line 31
    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "/knowledge-base-request"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    const-string v1, "message"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->val$item:Lcom/narvii/model/Item;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "itemId"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 78
    .line 79
    const-string v1, "api"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 86
    .line 87
    iget-object v1, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 94
    return-void
.end method
