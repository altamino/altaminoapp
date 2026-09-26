.class public final synthetic Lcom/narvii/monetization/avatarframe/loader/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/c;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iput p2, p0, Lcom/narvii/monetization/avatarframe/loader/c;->b:I

    iput p3, p0, Lcom/narvii/monetization/avatarframe/loader/c;->c:I

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/loader/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/c;->a:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iget v1, p0, Lcom/narvii/monetization/avatarframe/loader/c;->b:I

    iget v2, p0, Lcom/narvii/monetization/avatarframe/loader/c;->c:I

    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/loader/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->b(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V

    return-void
.end method
