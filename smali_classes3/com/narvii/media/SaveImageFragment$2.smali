.class Lcom/narvii/media/SaveImageFragment$2;
.super Ljava/lang/Object;
.source "SaveImageFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageFragment;

.field final synthetic val$origUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    iput-object p2, p0, Lcom/narvii/media/SaveImageFragment$2;->val$origUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {v0}, Lcom/narvii/media/SaveImageFragment;->access$200(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 185
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageFragment;->access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 186
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$2;->val$origUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/narvii/media/SaveImageFragment;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object p1, p1, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1, v1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    :cond_0
    return-void
.end method
