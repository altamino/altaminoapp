.class Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;
.super Ljava/lang/Object;
.source "ScenesBackgroundMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenesBackgroundMusicFragment;->showInvalidDialog()V
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

    .line 170
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    return-void
.end method
