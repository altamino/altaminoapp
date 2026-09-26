.class public final synthetic Lcom/narvii/chat/input/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/input/ChatInputFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/c;->a:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/chat/input/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/input/c;->a:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/c;->b:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/chat/input/c;->c:I

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/input/ChatInputFragment;->n(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/String;I)V

    return-void
.end method
