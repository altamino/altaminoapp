.class final Lcom/narvii/community/MyCommunityHelper$chatService$2;
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
        "Lcom/narvii/chat/core/ChatService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$chatService$2;->this$0:Lcom/narvii/community/MyCommunityHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/chat/core/ChatService;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$chatService$2;->this$0:Lcom/narvii/community/MyCommunityHelper;

    const-string v1, "chat"

    invoke-static {v0, v1}, Lcom/narvii/community/MyCommunityHelper;->access$getService(Lcom/narvii/community/MyCommunityHelper;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper$chatService$2;->invoke()Lcom/narvii/chat/core/ChatService;

    move-result-object v0

    return-object v0
.end method
