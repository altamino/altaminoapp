.class Lcom/narvii/media/SaveImageHelper$2;
.super Ljava/lang/Object;
.source "SaveImageHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;

.field final synthetic val$origUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    iput-object p2, p0, Lcom/narvii/media/SaveImageHelper$2;->val$origUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->access$200(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->access$002(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 304
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$2;->val$origUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object p1, p1, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1, v1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    :cond_0
    return-void
.end method
