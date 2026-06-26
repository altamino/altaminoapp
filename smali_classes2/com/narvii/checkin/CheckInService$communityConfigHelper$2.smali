.class final Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CheckInService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/modulization/CommunityConfigHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInService;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 2

    .line 32
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v1}, Lcom/narvii/checkin/CheckInService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;->invoke()Lcom/narvii/modulization/CommunityConfigHelper;

    move-result-object v0

    return-object v0
.end method
