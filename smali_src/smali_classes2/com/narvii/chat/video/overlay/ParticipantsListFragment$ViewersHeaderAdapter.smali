.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewersHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->C(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->C(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0619

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0e51

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f121274

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->C(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->getCount()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {p3, v0}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object p1
.end method
