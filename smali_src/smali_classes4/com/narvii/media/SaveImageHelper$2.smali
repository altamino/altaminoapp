.class Lcom/narvii/media/SaveImageHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/SaveImageHelper$2;->val$origUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->b(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->e(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$2;->val$origUrl:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, p1}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$2;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 36
    :cond_0
    return-void
.end method
