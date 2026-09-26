.class public final synthetic Lcom/narvii/chat/input/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/d;->a:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/input/d;->a:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->a(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;Ljava/lang/Boolean;)V

    return-void
.end method
