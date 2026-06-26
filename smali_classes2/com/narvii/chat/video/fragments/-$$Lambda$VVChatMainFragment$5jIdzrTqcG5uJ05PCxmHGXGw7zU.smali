.class public final synthetic Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU;->f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$5jIdzrTqcG5uJ05PCxmHGXGw7zU;->f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->lambda$onPermissionGranted$0$VVChatMainFragment(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
