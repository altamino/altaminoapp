.class final Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecentCommunityAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/community/RecentCommunityHelper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentCommunityAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentCommunityAdapter.kt\ncom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2\n*L\n1#1,251:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/community/RecentCommunityHelper;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$getContext$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "recentCommunities"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/RecentCommunityHelper;

    .line 37
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/community/RecentCommunityHelper;->addChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;->invoke()Lcom/narvii/community/RecentCommunityHelper;

    move-result-object v0

    return-object v0
.end method
