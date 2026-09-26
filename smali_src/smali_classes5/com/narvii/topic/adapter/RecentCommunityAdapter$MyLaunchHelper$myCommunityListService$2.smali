.class final Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/community/MyCommunityListService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;->$ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/community/MyCommunityListService;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;->$ctx:Lcom/narvii/app/NVContext;

    const-string v1, "myCommunityList"

    .line 1
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;->invoke()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    return-object v0
.end method
