.class public final synthetic Lcom/narvii/chat/global/chat/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/chat/RecentChatListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/m;->a:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/m;->a:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->t(Lcom/narvii/chat/global/chat/RecentChatListFragment;Landroid/view/View;)V

    return-void
.end method
