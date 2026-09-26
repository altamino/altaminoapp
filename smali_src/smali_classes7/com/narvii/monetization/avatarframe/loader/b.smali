.class public final synthetic Lcom/narvii/monetization/avatarframe/loader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/b;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/loader/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/loader/b;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/b;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/loader/b;->d:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->a(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
