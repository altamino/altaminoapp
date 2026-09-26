.class public final synthetic Lx5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-static {p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListServiceKt;->a(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
