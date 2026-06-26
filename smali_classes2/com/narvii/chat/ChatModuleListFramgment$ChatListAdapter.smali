.class final Lcom/narvii/chat/ChatModuleListFramgment$ChatListAdapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.source "ChatModuleListFramgment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatModuleListFramgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChatListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatModuleListFramgment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatModuleListFramgment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/ChatModuleListFramgment$ChatListAdapter;->this$0:Lcom/narvii/chat/ChatModuleListFramgment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatList"

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restrictSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
