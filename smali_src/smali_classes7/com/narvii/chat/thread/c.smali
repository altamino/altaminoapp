.class public final synthetic Lcom/narvii/chat/thread/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

.field public final synthetic b:Lcom/narvii/model/User;

.field public final synthetic c:Lcom/narvii/onlinestatus/UserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/c;->a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    iput-object p2, p0, Lcom/narvii/chat/thread/c;->b:Lcom/narvii/model/User;

    iput-object p3, p0, Lcom/narvii/chat/thread/c;->c:Lcom/narvii/onlinestatus/UserDialog;

    return-void
.end method


# virtual methods
.method public final onClicked(ILcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/c;->a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    iget-object v1, p0, Lcom/narvii/chat/thread/c;->b:Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/chat/thread/c;->c:Lcom/narvii/onlinestatus/UserDialog;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;->j(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;ILcom/narvii/model/NVObject;)V

    return-void
.end method
