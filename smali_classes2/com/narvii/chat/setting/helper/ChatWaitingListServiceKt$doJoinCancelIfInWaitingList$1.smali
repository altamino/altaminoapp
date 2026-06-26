.class final Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;
.super Ljava/lang/Object;
.source "ChatWaitingListService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->doJoinCancelIfInWaitingList(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/signalling/SignallingChannel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;

    invoke-direct {v0}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;-><init>()V

    sput-object v0, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;->INSTANCE:Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt$doJoinCancelIfInWaitingList$1;->call(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
