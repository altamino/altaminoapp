.class public final synthetic Lcom/narvii/chat/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/util/MyChatListDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/o;->a:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/o;->a:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-static {v0}, Lcom/narvii/chat/util/MyChatListDelegate;->b(Lcom/narvii/chat/util/MyChatListDelegate;)V

    return-void
.end method
