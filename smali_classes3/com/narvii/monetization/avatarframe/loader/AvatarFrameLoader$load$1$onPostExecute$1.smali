.class final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;
.super Ljava/lang/Object;
.source "AvatarFrameLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onPostExecute(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;->$config:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;->$config:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    const-string v2, "config"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iget-object v2, v2, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    return-void
.end method
