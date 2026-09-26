.class public final synthetic Lcom/narvii/chat/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatListFragment;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/p;->a:Lcom/narvii/chat/ChatListFragment;

    iput-object p2, p0, Lcom/narvii/chat/p;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final onClicked(ILcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/p;->a:Lcom/narvii/chat/ChatListFragment;

    iget-object v1, p0, Lcom/narvii/chat/p;->b:Lcom/narvii/model/User;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/chat/ChatListFragment;->v(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V

    return-void
.end method
