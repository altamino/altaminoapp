.class public final synthetic Lcom/narvii/topic/adapter/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/t;->a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/t;->a:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->g(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    return-void
.end method
