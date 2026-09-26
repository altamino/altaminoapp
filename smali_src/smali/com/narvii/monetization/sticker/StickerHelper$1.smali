.class Lcom/narvii/monetization/sticker/StickerHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->checkStickerCollectionCreatable(ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$apiRequest:Lcom/narvii/util/http/ApiRequest;

.field final synthetic val$apiService:Lcom/narvii/util/http/ApiService;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$1;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$1;->val$apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$1;->val$apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 8
    return-void
.end method
