.class public final synthetic Lcom/narvii/chat/video/fragments/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/fragments/LiveChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/c;->a:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    return-void
.end method


# virtual methods
.method public final onStartChat(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/c;->a:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->n(Lcom/narvii/chat/video/fragments/LiveChannelFragment;Lcom/narvii/model/User;)V

    return-void
.end method
