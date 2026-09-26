.class Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter$2;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;

.field final synthetic val$resp:Lcom/narvii/model/api/ApiResponse;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/FragmentGalleryAdapter$2;Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$message:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->a(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$message:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    .line 22
    return-void
.end method
