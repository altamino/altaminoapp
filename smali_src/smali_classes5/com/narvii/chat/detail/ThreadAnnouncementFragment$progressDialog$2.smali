.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;
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
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
