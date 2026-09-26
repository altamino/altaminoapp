.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/http/ApiService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/http/ApiService;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    const-string v1, "api"

    .line 1
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;->invoke()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    return-object v0
.end method
