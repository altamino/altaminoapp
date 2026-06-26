.class public interface abstract Lcom/narvii/account/AccountService$FanClubListListener;
.super Ljava/lang/Object;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FanClubListListener"
.end annotation


# virtual methods
.method public abstract onFanClubListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;)V"
        }
    .end annotation
.end method
