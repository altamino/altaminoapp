.class final Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;
.super Ljava/lang/Object;
.source "CommunityRequestHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/request/CommunityRequestHelper;->checkWhetherUserIsJoined(ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/community/FullCommunityResponse;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/community/request/CommunityRequestHelper$checkWhetherUserIsJoined$1;->call(Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
