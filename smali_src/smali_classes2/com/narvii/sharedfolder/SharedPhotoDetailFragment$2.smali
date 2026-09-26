.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->v(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    const v1, 0x7f0a1002

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/widget/VoteIcon;

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/feed/vote/VotePopupDialog;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 37
    .line 38
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;Lcom/narvii/widget/VoteIcon;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 48
    const/4 p1, 0x1

    .line 49
    return p1
.end method
