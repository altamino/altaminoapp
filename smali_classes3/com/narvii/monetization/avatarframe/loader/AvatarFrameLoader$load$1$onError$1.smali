.class final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;
.super Ljava/lang/Object;
.source "AvatarFrameLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->$url:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;->$e:Ljava/lang/Exception;

    invoke-interface {v1, v2, v0, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
