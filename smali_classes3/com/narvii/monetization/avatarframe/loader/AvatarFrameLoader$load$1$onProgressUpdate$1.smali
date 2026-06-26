.class final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;
.super Ljava/lang/Object;
.source "AvatarFrameLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onProgressUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cur:I

.field final synthetic $total:I

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iput p2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->$cur:I

    iput p3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->$cur:I

    iget v3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;->$total:I

    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onProgressUpdate(IILjava/lang/String;)V

    return-void
.end method
