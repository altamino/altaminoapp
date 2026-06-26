.class Lcom/narvii/media/SaveImageFragment$3$1;
.super Ljava/lang/Object;
.source "SaveImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment$3;->deliverResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/SaveImageFragment$3;

.field final synthetic val$req:Lcom/android/volley/Request;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment$3;Lcom/android/volley/Request;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$3$1;->this$1:Lcom/narvii/media/SaveImageFragment$3;

    iput-object p2, p0, Lcom/narvii/media/SaveImageFragment$3$1;->val$req:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$3$1;->this$1:Lcom/narvii/media/SaveImageFragment$3;

    iget-object v0, v0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    const-string v1, "imageLoader"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 256
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3$1;->this$1:Lcom/narvii/media/SaveImageFragment$3;

    iget-object v1, v1, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$3$1;->val$req:Lcom/android/volley/Request;

    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/media/SaveImageFragment;->access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
