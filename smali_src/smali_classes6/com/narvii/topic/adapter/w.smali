.class public final synthetic Lcom/narvii/topic/adapter/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

.field public final synthetic b:Lcom/narvii/topic/adapter/RecentCommunityAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/w;->a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    iput-object p2, p0, Lcom/narvii/topic/adapter/w;->b:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/w;->a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    iget-object v1, p0, Lcom/narvii/topic/adapter/w;->b:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->k(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;Ljava/lang/Boolean;)V

    return-void
.end method
