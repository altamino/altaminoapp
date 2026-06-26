.class final Lcom/narvii/topic/adapter/RecentCommunityAdapter$removeLaunchSplash$1;
.super Ljava/lang/Object;
.source "RecentCommunityAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lh:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$removeLaunchSplash$1;->$lh:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$removeLaunchSplash$1;->$lh:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->cancel()V

    :cond_0
    return-void
.end method
