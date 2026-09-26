.class final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;
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
        "Landroid/view/View$OnClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->invoke$lambda$0(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "chatThread"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnClickListener;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 2
    new-instance v1, Lcom/narvii/chat/detail/g;

    invoke-direct {v1, v0}, Lcom/narvii/chat/detail/g;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;->invoke()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
