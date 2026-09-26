.class public final synthetic Lcom/narvii/chat/thread/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/b;->a:Lcom/narvii/chat/thread/MyChatsListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/b;->a:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->t(Lcom/narvii/chat/thread/MyChatsListFragment;Landroid/view/View;)V

    return-void
.end method
