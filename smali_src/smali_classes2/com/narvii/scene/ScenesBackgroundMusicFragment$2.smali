.class Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 21
    return-void
.end method
