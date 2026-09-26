.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParticipantHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

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
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->x(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->x(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->getCount()I

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
    .locals 0

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
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 15
    .line 16
    .line 17
    const p3, 0x7f12127b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->x(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->getCount()I

    .line 31
    move-result p3

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    const p3, 0x7f0a0e51

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-object p1
.end method
