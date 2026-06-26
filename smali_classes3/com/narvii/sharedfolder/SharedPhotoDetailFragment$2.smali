.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const v1, 0x7f090cdc

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/VoteIcon;

    .line 352
    new-instance v2, Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v2, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 354
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 355
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;

    invoke-direct {p1, p0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;Lcom/narvii/widget/VoteIcon;)V

    invoke-virtual {v2, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 364
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
