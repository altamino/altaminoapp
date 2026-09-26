.class Lcom/narvii/poweruser/ModerationToolFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/monetization/sticker/model/PendingStickerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ModerationToolFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$2;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment$2;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment$2;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 3
    iget p1, p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;->pendingShareRequestCount:I

    invoke-static {v0, p1}, Lcom/narvii/poweruser/ModerationToolFragment;->v(Lcom/narvii/poweruser/ModerationToolFragment;I)V

    iget-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$2;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/poweruser/ModerationToolFragment;->t(Lcom/narvii/poweruser/ModerationToolFragment;)Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$2;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/poweruser/ModerationToolFragment;->t(Lcom/narvii/poweruser/ModerationToolFragment;)Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/ModerationToolFragment$2;->call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V

    return-void
.end method
