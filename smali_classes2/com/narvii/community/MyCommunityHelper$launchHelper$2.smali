.class final Lcom/narvii/community/MyCommunityHelper$launchHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MyCommunityHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;->this$0:Lcom/narvii/community/MyCommunityHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
    .locals 3

    .line 55
    new-instance v0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityHelper;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;-><init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;->invoke()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    move-result-object v0

    return-object v0
.end method
