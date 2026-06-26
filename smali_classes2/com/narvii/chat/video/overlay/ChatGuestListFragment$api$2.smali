.class final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatGuestListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/http/ApiService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/http/ApiService;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    const-string v1, "api"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;->invoke()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    return-object v0
.end method
