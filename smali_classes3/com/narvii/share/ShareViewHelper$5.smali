.class Lcom/narvii/share/ShareViewHelper$5;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareViewHelper;->dealWithLink(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/share/LinkInfoV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareViewHelper;

.field final synthetic val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

.field final synthetic val$sharePayload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$5;->this$0:Lcom/narvii/share/ShareViewHelper;

    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$5;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iput-object p3, p0, Lcom/narvii/share/ShareViewHelper$5;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/share/LinkInfoV2;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p1, Lcom/narvii/share/LinkInfo;->shareURLShortCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$5;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iget-object p1, p1, Lcom/narvii/share/LinkInfo;->shareURLShortCode:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 221
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper$5;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-interface {p1, v0}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/narvii/share/LinkInfoV2;

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareViewHelper$5;->call(Lcom/narvii/share/LinkInfoV2;)V

    return-void
.end method
