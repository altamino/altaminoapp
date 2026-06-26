.class Lcom/narvii/community/RecentCommunityHelper$2;
.super Ljava/lang/Object;
.source "RecentCommunityHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/RecentCommunityHelper;->removeRecent(Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/RecentCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/community/RecentCommunityHelper$2;->this$0:Lcom/narvii/community/RecentCommunityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V
    .locals 0

    .line 97
    invoke-interface {p1}, Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;->onRecentCommunityChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/community/RecentCommunityHelper$2;->call(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    return-void
.end method
