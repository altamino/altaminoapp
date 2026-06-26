.class Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;
.super Ljava/lang/Object;
.source "FragmentGalleryAdapter.java"

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

    .line 122
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    iput-object p3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    iget-object v0, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->access$002(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 126
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    iget-object v0, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
