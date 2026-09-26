.class public final synthetic Lcom/narvii/chat/thread/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/SearchMyChatsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/f;->a:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/f;->a:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->v(Lcom/narvii/chat/thread/SearchMyChatsFragment;Landroid/view/View;)V

    return-void
.end method
