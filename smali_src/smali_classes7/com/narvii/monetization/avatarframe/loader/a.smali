.class public final synthetic Lcom/narvii/monetization/avatarframe/loader/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

.field public final synthetic b:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/a;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/a;->b:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/loader/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/a;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/a;->b:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->c(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    return-void
.end method
