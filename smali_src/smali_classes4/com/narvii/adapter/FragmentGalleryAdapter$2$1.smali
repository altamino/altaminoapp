.class Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;

.field final synthetic val$resp:Lcom/narvii/model/api/ListResponse;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/FragmentGalleryAdapter$2;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->val$resp:Lcom/narvii/model/api/ListResponse;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

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
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->this$1:Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$2;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->val$req:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$2$1;->val$resp:Lcom/narvii/model/api/ListResponse;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    .line 20
    return-void
.end method
