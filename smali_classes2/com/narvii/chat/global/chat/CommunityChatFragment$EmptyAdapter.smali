.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "CommunityChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected emptyLayoutId()I
    .locals 1

    const v0, 0x7f0b01ef

    return v0
.end method
