.class Lcom/narvii/user/profile/post/UserProfilePostActivity$5;
.super Ljava/lang/Object;
.source "UserProfilePostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/UserProfilePostActivity;->doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

.field final synthetic val$post:Lcom/narvii/user/profile/post/UserProfilePost;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iput-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 687
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/user-profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-virtual {v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 688
    new-instance v0, Lcom/narvii/feed/BackgroundPostHelper;

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-direct {v0, v1}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 689
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-virtual {v0, v1}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 690
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 684
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
