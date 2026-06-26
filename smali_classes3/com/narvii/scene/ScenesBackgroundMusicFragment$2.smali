.class Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;
.super Ljava/lang/Object;
.source "ScenesBackgroundMusicFragment.java"

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

    .line 151
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 155
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    return-void
.end method
