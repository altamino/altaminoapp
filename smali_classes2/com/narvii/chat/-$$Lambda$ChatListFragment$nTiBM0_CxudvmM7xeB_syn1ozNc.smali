.class public final synthetic Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/ChatListFragment;

.field private final synthetic f$1:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;->f$0:Lcom/narvii/chat/ChatListFragment;

    iput-object p2, p0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;->f$1:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final onClicked(ILcom/narvii/model/NVObject;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;->f$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v1, p0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;->f$1:Lcom/narvii/model/User;

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/chat/ChatListFragment;->lambda$onMentionedUserClicked$2$ChatListFragment(Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V

    return-void
.end method
