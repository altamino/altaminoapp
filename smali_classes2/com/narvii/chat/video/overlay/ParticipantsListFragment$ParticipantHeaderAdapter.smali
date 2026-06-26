.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ParticipantsListFragment.java"


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

    .line 323
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 324
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0574

    .line 329
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 330
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result p2

    const/4 p3, 0x5

    .line 331
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const p3, 0x7f0f1174

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantHeaderAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 332
    invoke-static {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->getCount()I

    move-result p3

    .line 331
    invoke-static {p2, p3}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 333
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
