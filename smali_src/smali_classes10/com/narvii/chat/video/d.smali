.class public final synthetic Lcom/narvii/chat/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/RtcChatManager$4;

.field public final synthetic b:I

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/d;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/d;->b:I

    iput-object p3, p0, Lcom/narvii/chat/video/d;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/d;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    iget v1, p0, Lcom/narvii/chat/video/d;->b:I

    iget-object v2, p0, Lcom/narvii/chat/video/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/video/RtcChatManager$4;->d(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V

    return-void
.end method
