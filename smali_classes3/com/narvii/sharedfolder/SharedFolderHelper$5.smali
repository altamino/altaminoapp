.class Lcom/narvii/sharedfolder/SharedFolderHelper$5;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->removePhotosFromAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$5;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$5;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 262
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
