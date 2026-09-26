.class Lcom/narvii/sharedfolder/MediaSelectFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MediaSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MediaSelectFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 42
    :cond_0
    return-void
.end method
