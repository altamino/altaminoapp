.class public final Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$AllChatAdapter;
.super Lcom/narvii/chat/hangout/HangoutListAdapter;
.source "RecentCreatedChatroomListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AllChatAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$AllChatAdapter;->this$0:Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;

    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 67
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/chat/thread?type=public-all"

    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
