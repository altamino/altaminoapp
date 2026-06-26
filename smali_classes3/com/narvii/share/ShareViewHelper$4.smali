.class Lcom/narvii/share/ShareViewHelper$4;
.super Lcom/narvii/media/SaveImageHelper;
.source "ShareViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareViewHelper;->dealWithImg(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareViewHelper;

.field final synthetic val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

.field final synthetic val$sharePayload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$4;->this$0:Lcom/narvii/share/ShareViewHelper;

    iput-object p3, p0, Lcom/narvii/share/ShareViewHelper$4;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iput-object p4, p0, Lcom/narvii/share/ShareViewHelper$4;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-direct {p0, p2}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper$4;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    iget-object p2, p0, Lcom/narvii/share/ShareViewHelper$4;->val$sharePayload:Lcom/narvii/share/SharePayload;

    invoke-interface {p1, p2}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper$4;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iput-object p2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    const/4 p2, 0x0

    .line 190
    iput-boolean p2, p1, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 191
    iget-object p2, p0, Lcom/narvii/share/ShareViewHelper$4;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-interface {p2, p1}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    return-void
.end method
