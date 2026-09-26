.class public final synthetic Lcom/narvii/chat/core/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/n0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/l;->a:Lkotlin/jvm/internal/n0;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/l;->a:Lkotlin/jvm/internal/n0;

    check-cast p1, Lcom/narvii/chat/ThreadConfigChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/core/ChatService;->i(Lkotlin/jvm/internal/n0;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method
