.class public final synthetic Lcom/narvii/chat/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/chat/core/f;->a:I

    iput p2, p0, Lcom/narvii/chat/core/f;->b:I

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/narvii/chat/core/f;->a:I

    iget v1, p0, Lcom/narvii/chat/core/f;->b:I

    check-cast p1, Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/core/ChatService;->h(IILcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    return-void
.end method
