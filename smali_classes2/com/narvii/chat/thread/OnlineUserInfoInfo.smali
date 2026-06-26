.class public Lcom/narvii/chat/thread/OnlineUserInfoInfo;
.super Ljava/lang/Object;
.source "OnlineUserInfoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;
    }
.end annotation


# instance fields
.field public userProfileCount:I

.field public userProfileList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
