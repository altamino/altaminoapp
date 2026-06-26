.class public interface abstract Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MyCommunityListObserver"
.end annotation


# virtual methods
.method public abstract onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
.end method

.method public abstract onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
.end method

.method public abstract onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
.end method
